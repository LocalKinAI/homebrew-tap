class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.9/kinfer-v0.1.9-darwin-arm64.tar.gz"
  version "0.1.9"
  sha256 "a0e6b15c5afeea71f1fa8200fdce368dbf6f7a8515f48f4a56efd8bc16f858ba"
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
