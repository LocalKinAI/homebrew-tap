class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.2.1/kinfer-v0.2.1-darwin-arm64.tar.gz"
  version "0.2.1"
  sha256 "458d6904b53a8c516d03c395231bf9b2b8ec15b75e2878f065926ab5f4f3110d"
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
