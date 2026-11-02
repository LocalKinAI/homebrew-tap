class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.6/kinfer-v0.1.6-darwin-arm64.tar.gz"
  version "0.1.6"
  sha256 "8a964c385df3dc1db2a50d7f0e183eb0a0b7b53e7f64017f34dfbf5c930b3f58"
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
