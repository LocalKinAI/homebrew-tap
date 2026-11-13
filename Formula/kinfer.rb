class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.8.1/kinfer-v0.8.1-darwin-arm64.tar.gz"
  version "0.8.1"
  sha256 "8124ef414f91d19e2aff85b8c561dab9dc1ee232ab10daae8f697f96841976c9"
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
