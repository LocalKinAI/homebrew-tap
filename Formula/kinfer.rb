class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.10.0/kinfer-v0.10.0-darwin-arm64.tar.gz"
  version "0.10.0"
  sha256 "fc56791e9ef3927f56cb919b6003e3cf220262a9a43ec65ef68af2f974495bc5"
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
