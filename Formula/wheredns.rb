class Wheredns < Formula
  desc "DNS, email, web and network diagnostics from the terminal"
  homepage "https://github.com/Shroomate/wheredns-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.1.0/wheredns-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6d55cb9655b7524bb5a5ac927ef22e5012eb5341a58d458ffea4bb2b4dde792"
    end
    on_intel do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.1.0/wheredns-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "186289de30eca986e7c701aef360c2ce52f06cca58c86cf0af3865296ffa5522"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Shroomate/wheredns-cli/releases/download/v0.1.0/wheredns-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed8e8b3a33b3ee45a81b514821a487ffbb8cadd648913d16cb33361d75fe72b2"
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
