# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  autoVolumeSrc = {
    pname = "autoVolumeSrc";
    version = "d7f7962724b567a8409ef2898602f2c57abddf5a";
    src = fetchgit {
      url = "https://github.com/amanharwara/spicetify-autoVolume";
      rev = "d7f7962724b567a8409ef2898602f2c57abddf5a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-WquDmeaj+7M8DzGuHYOJgF6ifcs3vj3gIciZMaRQ3t4=";
    };
    date = "2020-02-16";
  };
  bloomSrc = {
    pname = "bloomSrc";
    version = "ac198c427084e7e887ab740a015c98210cf0b4f7";
    src = fetchgit {
      url = "https://github.com/nimsandu/spicetify-bloom";
      rev = "ac198c427084e7e887ab740a015c98210cf0b4f7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-rnbWU4SPotWCjAi8XGGo9108eHtIQCdJq8tPoW17Kr8=";
    };
    date = "2023-07-23";
  };
  catppuccinSrc = {
    pname = "catppuccinSrc";
    version = "0b602142da4a436f7012c07137e846034aea82cb";
    src = fetchgit {
      url = "https://github.com/catppuccin/spicetify";
      rev = "0b602142da4a436f7012c07137e846034aea82cb";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-dBJ0vLvCdzpZZNHrsY6V8JQ2t4RB2L5OF/MdHGmIk4Y=";
    };
    date = "2023-05-26";
  };
  charlieS1103Src = {
    pname = "charlieS1103Src";
    version = "e739f51ae142c07471538cc84544cd2e0600156a";
    src = fetchgit {
      url = "https://github.com/CharlieS1103/spicetify-extensions";
      rev = "e739f51ae142c07471538cc84544cd2e0600156a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-TL4gTTNj1DTq2cSl2KiPQQK3iqsPVk2zk9cFm9VzTj4=";
    };
    date = "2023-06-24";
  };
  comfySrc = {
    pname = "comfySrc";
    version = "19189367f73647467d1a2dcae66ebcab75955ce6";
    src = fetchgit {
      url = "https://github.com/Comfy-Themes/Spicetify";
      rev = "19189367f73647467d1a2dcae66ebcab75955ce6";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-Y7yKXxKkFCbHRzaG6Tv0TMt464Vwr13m2oLuXQasGHU=";
    };
    date = "2023-07-22";
  };
  customAppsExtensionsSrc = {
    pname = "customAppsExtensionsSrc";
    version = "0f5e79fe43abf57f714d7d00bd288870d5b6f718";
    src = fetchgit {
      url = "https://github.com/3raxton/spicetify-custom-apps-and-extensions";
      rev = "0f5e79fe43abf57f714d7d00bd288870d5b6f718";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-4zL/z8dCafy5V95ASR3c6TffMh9wdpnclAjddD9TX84=";
    };
    date = "2022-05-02";
  };
  dakshExtensions = {
    pname = "dakshExtensions";
    version = "ede2e5987f41ce66219df883d6e7841cae574220";
    src = fetchgit {
      url = "https://github.com/daksh2k/Spicetify-stuff";
      rev = "ede2e5987f41ce66219df883d6e7841cae574220";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-Iwhzo2VPcX2im3SrlTDiqx3R86yErRiZpauF5nWF9g8=";
    };
    date = "2023-07-13";
  };
  defaultDynamicSrc = {
    pname = "defaultDynamicSrc";
    version = "970c89708378551ce5f2677724f8417c62c54939";
    src = fetchgit {
      url = "https://github.com/JulienMaille/spicetify-dynamic-theme";
      rev = "970c89708378551ce5f2677724f8417c62c54939";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-/BQbVQe1/j6aMmX64QUnth/lJ/bWfsBFXpelSIFT5ak=";
    };
    date = "2023-07-24";
  };
  draculaSrc = {
    pname = "draculaSrc";
    version = "97bf149e7afbe408509862591a57f1d8e2dfc5d7";
    src = fetchgit {
      url = "https://github.com/Darkempire78/Dracula-Spicetify";
      rev = "97bf149e7afbe408509862591a57f1d8e2dfc5d7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-IS0A/5zTZou9yQJ0zpqAwiW2COt/TGoscN99WGFR9FA=";
    };
    date = "2022-02-14";
  };
  fluentSrc = {
    pname = "fluentSrc";
    version = "772cd8491105d679c7d3d1ff3f927b4a3dbb0e62";
    src = fetchgit {
      url = "https://github.com/williamckha/spicetify-fluent";
      rev = "772cd8491105d679c7d3d1ff3f927b4a3dbb0e62";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-IrSIW0tVLvu9k2QMzkT8yFhmghOhIT7PfdTie8D7tL8=";
    };
    date = "2022-12-11";
  };
  genreSrc = {
    pname = "genreSrc";
    version = "f2cb950a7e27cce3bfd4168141b5c5e55552df5a";
    src = fetchgit {
      url = "https://github.com/Shinyhero36/Spicetify-Genre";
      rev = "f2cb950a7e27cce3bfd4168141b5c5e55552df5a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-R7D6oiSZviZQiMo6GSe4phQKfUmLNToXkyv6F4JXf3M=";
    };
    date = "2023-03-04";
  };
  groupSessionSrc = {
    pname = "groupSessionSrc";
    version = "a9fa45da69495137b2f7272f61ff8d1a457aef5b";
    src = fetchgit {
      url = "https://github.com/timll/spotify-group-session";
      rev = "a9fa45da69495137b2f7272f61ff8d1a457aef5b";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-YTbnNLzPc0iMJZfH3QwSEX/gpAqIlchmbsULjM8musA=";
    };
    date = "2022-09-15";
  };
  hidePodcastsSrc = {
    pname = "hidePodcastsSrc";
    version = "6760a1bf9f346827b8cbc27df6c1dd4c6cbc45a0";
    src = fetchgit {
      url = "https://github.com/theRealPadster/spicetify-hide-podcasts";
      rev = "6760a1bf9f346827b8cbc27df6c1dd4c6cbc45a0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-3v1vlw71o3ztaFD58gNaTIho9Ub/vIwydMrD9A7WsbQ=";
    };
    date = "2023-07-14";
  };
  historySrc = {
    pname = "historySrc";
    version = "577e34f364127f18d917d2fe2e8c8f2a1af9f6ae";
    src = fetchgit {
      url = "https://github.com/einzigartigerName/spicetify-history";
      rev = "577e34f364127f18d917d2fe2e8c8f2a1af9f6ae";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-ORG1oNvMTJxrI3spfAuN+pCKTKvQfhqUIYT9NM1yZTs=";
    };
    date = "2021-05-20";
  };
  huhExtensionsSrc = {
    pname = "huhExtensionsSrc";
    version = "a5b5abca63863c426e9ef74ce75a5451ae58beab";
    src = fetchgit {
      url = "https://github.com/huhridge/huh-spicetify-extensions";
      rev = "a5b5abca63863c426e9ef74ce75a5451ae58beab";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-X4B3tEPYtncMdg60rwzStbUsFTQxBmUjIoL9wIi6ynw=";
    };
    date = "2023-07-04";
  };
  lastfmSrc = {
    pname = "lastfmSrc";
    version = "d2f1d3c1e286d789ddfa002f162405782d822c55";
    src = fetchgit {
      url = "https://github.com/LucasBares/spicetify-last-fm";
      rev = "d2f1d3c1e286d789ddfa002f162405782d822c55";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-/C4Y3zuSAEwhMXCRG2/4b5oWfGz/ij6wu0B+CpuJKXs=";
    };
    date = "2022-11-20";
  };
  localFilesSrc = {
    pname = "localFilesSrc";
    version = "1bfd2fc80385b21ed6dd207b00a371065e53042e";
    src = fetchgit {
      url = "https://github.com/hroland/spicetify-show-local-files";
      rev = "1bfd2fc80385b21ed6dd207b00a371065e53042e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-neKR2WaZ1K10dZZ0nAKJJEHNS56o8vCpYpi+ZJYJ/gU=";
    };
    date = "2022-04-12";
  };
  marketplaceSrc = {
    pname = "marketplaceSrc";
    version = "0175eac3af972257a8286f2701f7d1981f65c3b8";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-marketplace";
      rev = "0175eac3af972257a8286f2701f7d1981f65c3b8";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-1mVo/7fqpgjtEX0Ej6MC7XcpXyAb4B8n/mGwXrgtxEY=";
    };
    date = "2023-07-16";
  };
  nameThatTuneSrc = {
    pname = "nameThatTuneSrc";
    version = "2d95c3b5230597d6142b7e9c060cde15760cfb75";
    src = fetchgit {
      url = "https://github.com/theRealPadster/name-that-tune";
      rev = "2d95c3b5230597d6142b7e9c060cde15760cfb75";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-UFUTW7wX1PHDLEePXnipYAaDdv5DeqZLwbEWF9vyK8w=";
    };
    date = "2023-04-12";
  };
  nordSrc = {
    pname = "nordSrc";
    version = "caab9e0afaa6d228b4d73ae6c4c40dd56d3888c7";
    src = fetchgit {
      url = "https://github.com/Tetrax-10/Nord-Spotify";
      rev = "caab9e0afaa6d228b4d73ae6c4c40dd56d3888c7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-HlywN6a6nQ9Z1Rsg3crkFQuY+npXaN4Qo9cjPLfeqmw=";
    };
    date = "2023-06-06";
  };
  officialSrc = {
    pname = "officialSrc";
    version = "e9d70b0f311c4c1d97b4c6ab127f0e4142a21e0e";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-cli";
      rev = "e9d70b0f311c4c1d97b4c6ab127f0e4142a21e0e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-+evDMYNo4Io0RAP5EkjA7h4QCLg21v4vLLloLZiSh0E=";
    };
    date = "2023-07-24";
  };
  officialThemes = {
    pname = "officialThemes";
    version = "b2269a9650b735b955d5b024d69c7a38022d4a7e";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-themes";
      rev = "b2269a9650b735b955d5b024d69c7a38022d4a7e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-pWMswQJ7uGBPTmlZjdHoBXdVAOr3VKv+PbKZt0+G2Qg=";
    };
    date = "2023-07-21";
  };
  omniSrc = {
    pname = "omniSrc";
    version = "253ae45d2cac2dc3d92a43193ea8f6d9e7e1d3aa";
    src = fetchgit {
      url = "https://github.com/getomni/spicetify";
      rev = "253ae45d2cac2dc3d92a43193ea8f6d9e7e1d3aa";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-5II+4096fOcCA7J4XZfIHSse+3/YJ+EY5KW3GXl+dn8=";
    };
    date = "2023-01-20";
  };
  orchisSrc = {
    pname = "orchisSrc";
    version = "5bf3fcf0696514dcf3e95f4ae3fd00261ccc5dcc";
    src = fetchgit {
      url = "https://github.com/canbeardig/Spicetify-Orchis-Colours-v2";
      rev = "5bf3fcf0696514dcf3e95f4ae3fd00261ccc5dcc";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-9cU2Wlg5W57JpBfzIOXvpRYI8Q3CsH+UsdjQseTr9bs=";
    };
    date = "2022-05-20";
  };
  playlistIconsSrc = {
    pname = "playlistIconsSrc";
    version = "4e2fdda5079b441eca8d4d9f7479db82f6cc20b8";
    src = fetchgit {
      url = "https://github.com/jeroentvb/spicetify-playlist-icons";
      rev = "4e2fdda5079b441eca8d4d9f7479db82f6cc20b8";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-ocDsR4+AAfycWcs1H3JV1h7WgIONlu3BQ148cnAMOPI=";
    };
    date = "2023-03-31";
  };
  powerBarSrc = {
    pname = "powerBarSrc";
    version = "3b7e0559e91e76975cca41bafdb4ea2990dd468a";
    src = fetchgit {
      url = "https://github.com/jeroentvb/spicetify-power-bar";
      rev = "3b7e0559e91e76975cca41bafdb4ea2990dd468a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-4sZnfnwwhMSrwbS1tFV6bUlifz9g4MUl0fDlZDzolRU=";
    };
    date = "2023-05-04";
  };
  retroBlurSrc = {
    pname = "retroBlurSrc";
    version = "fd682396ed98a5ccfa68438a42bb26ce934e3cbd";
    src = fetchgit {
      url = "https://github.com/Motschen/Retroblur";
      rev = "fd682396ed98a5ccfa68438a42bb26ce934e3cbd";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-UEy/80uQics2xn7ISqIGBqLkeJuOq9BBP7tWoa4s+lw=";
    };
    date = "2023-05-30";
  };
  spotifyCanvasSrc = {
    pname = "spotifyCanvasSrc";
    version = "ee7a441503e9fb763be81d868d9e1dd8d748a924";
    src = fetchgit {
      url = "https://github.com/itsmeow/Spicetify-Canvas";
      rev = "ee7a441503e9fb763be81d868d9e1dd8d748a924";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-OKovKLBwsiNWo3rux5waDefI5qFu2pou21WmRsN4h4Y=";
    };
    date = "2023-05-11";
  };
  spotifyNoPremiumSrc = {
    pname = "spotifyNoPremiumSrc";
    version = "8613670a136794521a98c94a6c28c7ab40cd4c46";
    src = fetchgit {
      url = "https://github.com/Daksh777/SpotifyNoPremium";
      rev = "8613670a136794521a98c94a6c28c7ab40cd4c46";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-EM1zfVJiP/TPUJrYFNLbH9g7PyLbWbOL3GVa1qiQwq0=";
    };
    date = "2023-07-18";
  };
  spotifywmSrc = {
    pname = "spotifywmSrc";
    version = "8624f539549973c124ed18753881045968881745";
    src = fetchgit {
      url = "https://github.com/dasJ/spotifywm";
      rev = "8624f539549973c124ed18753881045968881745";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-AsXqcoqUXUFxTG+G+31lm45gjP6qGohEnUSUtKypew0=";
    };
    date = "2022-10-25";
  };
  startPageSrc = {
    pname = "startPageSrc";
    version = "6f7e636b12d419cea3e121c79c4a35afe8498c97";
    src = fetchgit {
      url = "https://github.com/Resxt/startup-page";
      rev = "6f7e636b12d419cea3e121c79c4a35afe8498c97";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-+dvqIQhPL7U+CP/gD/GriHYKIXHNTuKZP7KvZV0/bEE=";
    };
    date = "2023-07-07";
  };
  tetraxSrc = {
    pname = "tetraxSrc";
    version = "a224969550b3831c4fb084bcc8c675f3a77735d1";
    src = fetchgit {
      url = "https://github.com/Tetrax-10/Spicetify-Extensions";
      rev = "a224969550b3831c4fb084bcc8c675f3a77735d1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-XT0l6DVaXXaD7QihilpF3vQ+kry98sss3POR5gTRmhI=";
    };
    date = "2023-07-22";
  };
}
