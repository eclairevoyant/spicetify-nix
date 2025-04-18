self:
{
  lib,
  pkgs,
  config,
  ...
}:
let
  cfg = config.programs.spicetify;

  spicePkgs = self.packages or self.legacyPackages.${pkgs.stdenv.system};

  extensionType = lib.types.either lib.types.pathInStore (
    lib.types.submodule {
      freeformType = lib.types.attrsOf lib.types.anything;
      options = {
        src = lib.mkOption {
          type = lib.types.pathInStore;
          description = "Path to the folder which contains the .js file.";
        };
        name = lib.mkOption {
          type = lib.types.str;
          description = "Name of the .js file to enable.";
          example = "dribbblish.js";
        };
        experimentalFeatures = lib.mkEnableOption "experimental_features in config-xpui.ini";
      };
    }
  );
in
{
  imports = [
    (lib.mkRemovedOptionModule [ "programs" "spicetify" "dontInstall" ] ''
      set 'programs.spicetify.enable = false;' instead.
    '')
  ];

  options.programs.spicetify = {
    enable = lib.mkEnableOption "Spicetify a modified Spotify.";

    __internal_spotify = lib.mkOption {
      type = lib.types.package;
      readOnly = true;
      internal = true;
    };

    spicedSpotify = lib.mkOption {
      type = lib.types.package;
      description = "The final spotify package after spicing.";
      readOnly = true;
    };

    createdPackages = lib.mkOption {
      type = lib.types.listOf lib.types.package;
      description = ''
        A list of all generated packages containing the spiced spotify and extra packages from the current theme.
      '';
      default = [ cfg.spicedSpotify ] ++ cfg.theme.extraPkgs;
      defaultText = lib.literalExpression ''
        [ spicedSpotify ] ++ theme.extraPkgs
      '';
      readOnly = true;
    };

    theme = lib.mkOption {
      description = "";
      inherit (spicePkgs.themes) default;

      type = lib.types.submodule {
        freeformType = lib.types.attrsOf lib.types.anything;
        options = {
          name = lib.mkOption {
            type = lib.types.str;
            description = "The name of the theme as it will be copied into the spicetify themes directory.";
            example = "Dribbblish";
          };

          src = lib.mkOption {

            type = lib.types.pathInStore;
            description = "Path to folder containing the theme.";
            example = ''
              fetchFromGitHub {
                owner = "spicetify";
                repo = "spicetify-themes";
                rev = "02badb180c902f986a4ea4e4033e69fe8eec6a55";
                hash = "sha256-KD9VfHtlN0BIHC4inlooxw5XC4xlHNC5evASRqP7pUA=";
              }
              Or a relative path 

              ./myTheme
            '';
          };
          requiredExtensions = lib.mkOption {
            description = "";
            type = lib.types.listOf extensionType;
            default = [ ];
          };

          patches = lib.mkOption {
            type = lib.types.attrsOf lib.types.str;
            example = ''
              {
                "xpui.js_find_8008" = ",(\\w+=)32";
                "xpui.js_repl_8008" = ",$\{1}56";
              };
            '';
            description = "INI entries to add in the [Patch] section of config-xpui.ini";
            default = { };
          };

          extraCommands = lib.mkOption {
            type = lib.types.lines;
            default = "";
            description = "A bash script to run from the spicetify config directory if this theme is installed.";
          };

          extraPkgs = lib.mkOption {
            type = lib.types.listOf lib.types.package;
            default = [ ];
            description = "Extra required packges for the theme to function (usually a font)";
          };

          # some config values that can be specified per-theme
          injectCss = lib.mkOption {
            description = "";
            type = lib.types.bool;
            default = true;
          };
          injectThemeJs = lib.mkOption {

            description = "";
            type = lib.types.bool;
            default = true;
          };
          replaceColors = lib.mkOption {
            description = "";
            type = lib.types.bool;
            default = true;
          };
          homeConfig = lib.mkOption {
            description = "";
            type = lib.types.bool;
            default = true;
          };
          overwriteAssets = lib.mkOption {
            description = "";
            type = lib.types.bool;
            default = false;
          };
          additionalCss = lib.mkOption {
            description = "";
            type = lib.types.lines;
            default = "";
          };
        };
      };
    };

    spotifyPackage = lib.mkPackageOption pkgs "spotify" { };

    spicetifyPackage = lib.mkPackageOption pkgs "spicetify-cli" { };

    extraCommands = lib.mkOption {
      type = lib.types.lines;
      default = "";
      description = "Extra commands to be run during the setup of spicetify.";
    };

    enabledExtensions = lib.mkOption {
      type = lib.types.listOf extensionType;
      default = [ ];
      description = ''
        A list of extensions.
        See https://spicetify.app/docs/advanced-usage/extensions/.
      '';
      example = ''
        [
          {
            src = (pkgs.fetchFromGitHub {
              owner = "Taeko-ar";
              repo = "spicetify-last-fm";
              rev = "d2f1d3c1e286d789ddfa002f162405782d822c55";
              hash = "sha256-/C4Y3zuSAEwhMXCRG2/4b5oWfGz/ij6wu0B+CpuJKXs=";
            }) + /src;

            name = "lastfm.js";
          }
        ]
      '';
    };
    enabledCustomApps = lib.mkOption {
      description = ''
        Custom apps to add to the spice.
        See https://spicetify.app/docs/development/custom-apps.
      '';
      type = lib.types.listOf (
        lib.types.submodule {
          freeformType = lib.types.attrsOf lib.types.anything;
          options = {
            src = lib.mkOption {
              type = lib.types.pathInStore;
              description = "Path to the folder containing the app code.";
              example = lib.literalExpression ''
                pkgs.fetchFromGitHub {
                  owner = "hroland";
                  repo = "spicetify-show-local-files";
                  rev = "1bfd2fc80385b21ed6dd207b00a371065e53042e";
                  hash = "sha256-neKR2WaZ1K10dZZ0nAKJJEHNS56o8vCpYpi+ZJYJ/gU=";
                }
              '';
            };
            name = lib.mkOption {
              type = lib.types.str;
              description = "Name of the app. No spaces or special characters";
              example = "localFiles";
              default = "";
            };
          };
        }
      );
      default = [ ];
    };

    colorScheme = lib.mkOption {
      type = lib.types.str;
      description = ''
        Spicetify color scheme to use, given a specific `programs.spicetify.theme`.
        If using `programs.spicetify.customColorScheme`, leave this as default `"custom"`.
      '';
      default = if cfg.customColorScheme == { } then "" else "custom";
    };
    customColorScheme = lib.mkOption {
      type = lib.types.attrsOf lib.types.str;
      description = ''
        Custom scheme used to generate a corresponding `color.ini`.
        See https://spicetify.app/docs/development/themes.
      '';
      default = { };
    };
    enabledSnippets = lib.mkOption {
      type = lib.types.listOf lib.types.str;
      description = ''
        Snippets to add to the spice.
        See https://github.com/spicetify/marketplace/blob/main/resources/snippets.json.
      '';
      default = [ ];
    };

    spotifyLaunchFlags = lib.mkOption {
      type = lib.types.str;
      description = "Launch flags to pass to spotify.";
      default = "";
    };

    experimentalFeatures = lib.mkOption {
      type = lib.types.nullOr lib.types.bool;
      default = null;
      example = true;
      description = ''
        Whether to enable experimental features.
      '';
    };

    alwaysEnableDevTools = lib.mkEnableOption "chromium dev tools";

    # If you have to use this you should probably make a PR instead
    updateXpui = lib.mkOption {
      type = lib.types.either (lib.types.attrsOf lib.types.str) (
        lib.types.functionTo (lib.types.attrsOf lib.types.str)
      );
      default = { };
      internal = true;
    };
  };

  config =
    let
      # take the list of extensions and turn strings into actual extensions
      allExtensions = cfg.enabledExtensions ++ cfg.theme.requiredExtensions;

      xpui =
        let
          xpui_ = {
            AdditionalOptions = {
              extensions = lib.concatMapStringsSep "|" (item: item.name) allExtensions;
              custom_apps = lib.concatMapStringsSep "|" (item: item.name) cfg.enabledCustomApps;
              # must be disabled on newer spotify
              sidebar_config = false;

              home_config = cfg.theme.homeConfig;

              experimental_features =
                if cfg.experimentalFeatures != null then
                  cfg.experimentalFeatures
                else
                  lib.any (item: (item.experimentalFeatures or false)) allExtensions;
            };

            Setting = {
              spotify_path = "__SPOTIFY__";
              prefs_path = "__PREFS__";
              inject_theme_js = cfg.theme.injectThemeJs;
              replace_colors = cfg.theme.replaceColors;
              check_spicetify_update = false;
              current_theme = cfg.theme.name;
              color_scheme = cfg.colorScheme;
              inject_css = cfg.theme.injectCss;
              overwrite_assets = cfg.theme.overwriteAssets;
              spotify_launch_flags = cfg.spotifyLaunchFlags;
              always_enable_devtools = cfg.alwaysEnableDevTools;
            };

            Patch = cfg.theme.patches or { };

            Preprocesses = {
              disable_ui_logging = true;
              remove_rtl_rule = true;
              expose_apis = true;
              disable_sentry = true;
            };

            Backup = {
              inherit (cfg.spotifyPackage) version;
              "with" = "Dev";
            };
          };
        in
        if (lib.isFunction cfg.updateXpui) then
          cfg.updateXpui xpui_
        else if (lib.isAttrs cfg.updateXpui && cfg.updateXpui != { }) then
          cfg.updateXpui
        else
          xpui_;

    in
    {
      programs.spicetify.__internal_spotify = spicePkgs.spicetifyBuilder {
        spotify = cfg.spotifyPackage;
        spicetify-cli = cfg.spicetifyPackage;
        extensions = allExtensions;
        apps = cfg.enabledCustomApps;
        theme = cfg.theme // {
          additionalCss = lib.concatLines ([ (cfg.theme.additionalCss or "") ] ++ cfg.enabledSnippets);
        };
        inherit (cfg) customColorScheme extraCommands;
        # compose the configuration as well as options required by extensions and
        # cfg.cfg.xpui into one set
        config-xpui = xpui;
      };
    };
  _file = ./common.nix;
}
