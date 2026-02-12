{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "weathr";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "veirt";
    repo = "weathr";
    tag = "v${finalAttrs.version}";
    sha256 = "sha256-JwI5a+O5Nu39Nr0st5yBLTM5kPLC8UIGAoBMqxnOOl4=";
  };

  cargoHash = "sha256-Yj1WxpOLL8GiVpCebPZQgdw+L9g+4CNY7n2z8PJQz4k=";

  doCheck = false;
  meta = {
    description = "Terminal weather app with ascii animation";
    homepage = "https://github.com/veirt/weathr";
    license = with lib.licenses; [ gpl3Plus ];
    maintainers = with lib.maintainers; [
      sudo-mac
      phanirithvij
    ];
    mainProgram = "weathr";
  };
})
