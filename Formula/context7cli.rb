class Context7cli < Formula
  desc "Context7 CLI for AI agents - fetch up-to-date library documentation"
  homepage "https://github.com/tylergibbs1/context7cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tylergibbs1/context7cli/releases/download/v0.1.0/context7-darwin-arm64"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/tylergibbs1/context7cli/releases/download/v0.1.0/context7-darwin-x64"
      sha256 "PLACEHOLDER_X64_SHA256"
    end
  end

  def install
    binary_name = Dir["context7-darwin-*"].first
    bin.install binary_name => "context7"
  end

  test do
    assert_match "context7", shell_output("#{bin}/context7 --help", 0)
  end
end
