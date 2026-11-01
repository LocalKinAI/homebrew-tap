class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.1/kinfer-v0.1.1-darwin-arm64.tar.gz"
  version "0.1.1"
  sha256 "e401952e51885ee1b73d2eb74cd4ed6df1ac5f40d4c3b5cd9114e748737d3335"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "kinfer"
  end

  test do
    assert_match "kinfer v#{version}", shell_output("#{bin}/kinfer version")
  end
end
