class St4 < Formula
  desc "CLI tool for managing Statusmate status pages"
  homepage "https://github.com/statusmate/statusmatectl"
  license "MIT"
  version "v1.1.0"

  on_macos do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-amd64.tar.gz"
      sha256 "97172ffbe9210af523de65e21f03e4334148b431b8acc53643e996707e2a37c6"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-darwin-arm64.tar.gz"
      sha256 "50170cdcafc1e2b296981915162d2d4afa75a9042868a0ea8dc6ef7877ce8d61"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-amd64.tar.gz"
      sha256 "bb801badf53db2aef29627585ad5b4d5dbe413f3956fd6c00f438ff8b607f5ec"
    end

    on_arm do
      url "https://github.com/statusmate/statusmatectl/releases/download/#{version}/st4-linux-arm64.tar.gz"
      sha256 "32f7b4aa37c30aad36cafe55da6cc03c1514109218f900b25fb8b570ca0cf416"
    end
  end

  def install
    bin.install "st4"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/st4 --version")
  end
end
