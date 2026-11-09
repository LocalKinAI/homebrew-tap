class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.4.0/kinfer-v0.4.0-darwin-arm64.tar.gz"
  version "0.4.0"
  sha256 "1638997ce3892f7832db928ffc6b497f311fd8c2c7c2d0216411eddb51458af5"
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
