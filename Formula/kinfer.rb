class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.7/kinfer-v0.1.7-darwin-arm64.tar.gz"
  version "0.1.7"
  sha256 "f567ba7c2253bdd89227add9c1ba59f0f5f26ca1f25038914ac89e74bfd680dc"
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
