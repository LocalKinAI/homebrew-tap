class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.7.1/kinfer-v0.7.1-darwin-arm64.tar.gz"
  version "0.7.1"
  sha256 "dcccef4b78ea54155f5a5a0c98909157692a463b070cd3580ee374a76f5b0bf7"
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
