class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.8/kinfer-v0.1.8-darwin-arm64.tar.gz"
  version "0.1.8"
  sha256 "ad051d75c9cc044af98cf7b8be716cc2696965a28a7591dd74ef46867b0d133b"
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
