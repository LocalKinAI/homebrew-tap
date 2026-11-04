class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.10/kinfer-v0.1.10-darwin-arm64.tar.gz"
  version "0.1.10"
  sha256 "690e05449e09cdca907e851216682b407c22afe09a3267731fc351a52f44f0d4"
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
