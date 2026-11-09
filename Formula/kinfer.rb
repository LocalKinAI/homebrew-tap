class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.3.0/kinfer-v0.3.0-darwin-arm64.tar.gz"
  version "0.3.0"
  sha256 "d5279f66a72cfcc746d8e1a3bb57c85f782425fa4c6e6cc362f27f7cb09e68d8"
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
