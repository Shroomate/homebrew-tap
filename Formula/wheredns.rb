class Wheredns < Formula
  desc "DNS, email, web and network diagnostics from the terminal"
  homepage "https://github.com/Shroomate/wheredns-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.3.0/wheredns-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a158b6dbe54d2db1e2cd104a575959b7c772e52f7640a9fbd1d98de90e2e100"
    end
    on_intel do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.3.0/wheredns-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d8662b8d819bbdd6aa32a385e768a85b9ae9ad90384efee2427a25ced459de1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.3.0/wheredns-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d9ed9eb25bb57aa979470bd2620fc90e36bd51e9a69bafaa2c2ed370941a9c9"
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
