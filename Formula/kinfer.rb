class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.2.5/kinfer-v0.2.5-darwin-arm64.tar.gz"
  version "0.2.5"
  sha256 "67f7802bdcb3778d5831991ca6bc2347e64933d91c329c350a2c5db190db2e96"
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
