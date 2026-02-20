class Context7cli < Formula
  desc "Context7 CLI for AI agents - fetch up-to-date library documentation"
  homepage "https://github.com/tylergibbs1/context7cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tylergibbs1/context7cli/releases/download/v0.1.3/context7-darwin-arm64"
      sha256 "b401bfd8f54c5e5c76fc42957467f67135b34adca1f7d9987d78ee376e8e0af9"
    end
    on_intel do
      url "https://github.com/tylergibbs1/context7cli/releases/download/v0.1.3/context7-darwin-x64"
      sha256 "0e33dd288f5924bd2f97017a94d727adbf7892fcdcd2a68919de612d800958ca"
    end
  end

  def install
    binary_name = "context7-darwin-#{Hardware::CPU.arch == :arm64 ? "arm64" : "x64"}"
    bin.install Dir["context7-darwin-*"].first => "context7"
  end

  test do
    assert_match "context7", shell_output("#{bin}/context7 --help", 0)
  end
end
