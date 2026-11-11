class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.7.0/kinfer-v0.7.0-darwin-arm64.tar.gz"
  version "0.7.0"
  sha256 "7e183c9d099b0ff92f21afc1c8511a4f564a01a77f289e6eae3646e9f453c05a"
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
