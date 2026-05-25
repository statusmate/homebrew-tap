class St4 < Formula
  desc "CLI tool for managing Statusmate status pages"
  homepage "https://github.com/statusmate/statusmatectl"
  license "MIT"
  version "v1.0.1"

  on_macos do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-amd64.tar.gz"
      sha256 "ea5fa409e978c0be20e7b88bcd723fca102289bb426491466486bcc52ad63e42"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-arm64.tar.gz"
      sha256 "3f3b4cffa46b943e775eb6bbbed148fe2e65d15d2123bed19989bbfc30fd9bc7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-amd64.tar.gz"
      sha256 "376b5764fe992273b063324567260a2a5b76b3d8194f8e6021f3409bbc1530cc"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-arm64.tar.gz"
      sha256 "48a86683b7533666ea183e0703aa1001fe1e9da83583ce743115f4fb6bfe0357"
    end
  end

  def install
    bin.install "st4"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/st4 --version")
  end
end
