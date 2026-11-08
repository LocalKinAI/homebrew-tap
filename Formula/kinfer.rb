class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.2.6/kinfer-v0.2.6-darwin-arm64.tar.gz"
  version "0.2.6"
  sha256 "93b7ada1c5ebda57e1e5150cc214c8d3ead6cadf05e94275e4c2472093b73e9c"
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
