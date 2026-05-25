class St4 < Formula
  desc "CLI tool for managing Statusmate status pages"
  homepage "https://github.com/statusmate/statusmatectl"
  license "MIT"
  version "0.0.0"

  on_macos do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "st4"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/st4 --version")
  end
end
