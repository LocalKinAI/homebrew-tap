class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.4.1/kinfer-v0.4.1-darwin-arm64.tar.gz"
  version "0.4.1"
  sha256 "c2a8e00b7c7ef4fe0be9a0cc87f2525ed16376fa2d95ef07576bfabd9eecb264"
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
