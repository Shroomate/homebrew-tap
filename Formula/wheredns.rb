class Wheredns < Formula
  desc "DNS, email, web and network diagnostics from the terminal"
  homepage "https://github.com/Shroomate/wheredns-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.2.0/wheredns-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3806a9e11fd79c02e9f037f6e90ed9fc66b08f24ef6912aa0024d6477c1fc9fb"
    end
    on_intel do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.2.0/wheredns-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "ecbd8771dfe899e460e9ad7a2eaedff2059a092d8b91eba42e2905b094047a0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.2.0/wheredns-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05bc6acc3b71d7bd5a565e5cdc11f5897a9fa6b5a3f2cec4d8e64f83d467eded"
    end
  end

  def install
    bin.install "wheredns"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wheredns --version")
    assert_match "theme", shell_output("#{bin}/wheredns config")
  end
end
