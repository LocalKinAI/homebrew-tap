class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.8.0/kinfer-v0.8.0-darwin-arm64.tar.gz"
  version "0.8.0"
  sha256 "8c93f659768c76389ac6c9a818310a7126967fe5ce6494088d0a5b4b4c7ee882"
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
