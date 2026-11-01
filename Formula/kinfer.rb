class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.5/kinfer-v0.1.5-darwin-arm64.tar.gz"
  version "0.1.5"
  sha256 "a5bfe4570fe094f82effa3b52b2dd73b1e4ac611a21eaa2d693df0f0263dcfb2"
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
