class St4 < Formula
  desc "CLI tool for managing Statusmate status pages"
  homepage "https://github.com/statusmate/statusmatectl"
  license "MIT"
  version "v1.0.2"

  on_macos do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-amd64.tar.gz"
      sha256 "f7f7c0e005bfb4d2e36c3e7e297b370df5c433acb4382ad17101ea31f7942e7d"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-arm64.tar.gz"
      sha256 "256be21412932aa6dc9e683906714b6dc1a9e0d737a16dfec7d4c084cbb56551"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-amd64.tar.gz"
      sha256 "77ce023bb018a194f4d037d64de218491b7936845f59b3f90bdb3134740570ac"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-arm64.tar.gz"
      sha256 "59c9567905b70a7fde43f901eca4998817335b10c70ddf5668104ff4aca405b5"
    end
  end

  def install
    bin.install "st4"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/st4 --version")
  end
end
