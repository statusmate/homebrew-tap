class St4 < Formula
  desc "CLI tool for managing Statusmate status pages"
  homepage "https://github.com/statusmate/statusmatectl"
  license "MIT"
  version "v1.2.0"

  on_macos do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-amd64.tar.gz"
      sha256 "217e8ead226e4645c38420413d4a955088b11bc18fc8f26103aa0aa5392fd55a"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-arm64.tar.gz"
      sha256 "927c29f3b6c3cd06df573b1010f2de5ce5f88fd85ea277da514701e6c534872d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-amd64.tar.gz"
      sha256 "0d41d24541b2a914dbc0dc942d21125ff35ff20c373362145572d3c12964f5c6"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-arm64.tar.gz"
      sha256 "4d5434c9b15b01a65c645e14dfba2425e5c16e5d9fafcf018ec65bcbee2dfdcc"
    end
  end

  def install
    bin.install "st4"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/st4 --version")
  end
end
