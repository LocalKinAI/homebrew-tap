class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.2/kinfer-v0.1.2-darwin-arm64.tar.gz"
  version "0.1.2"
  sha256 "f8553f31bf28eb8319b63a2029dbdf2f9b11af117652abdb0ad15da9f460c0f6"
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
