class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.5.0/kinfer-v0.5.0-darwin-arm64.tar.gz"
  version "0.5.0"
  sha256 "6382e260a54fbfccad1914b614b48d11bc0f6b4f36f24723984c4da05d61950e"
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
