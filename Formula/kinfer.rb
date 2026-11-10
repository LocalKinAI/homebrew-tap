class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.6.0/kinfer-v0.6.0-darwin-arm64.tar.gz"
  version "0.6.0"
  sha256 "9382ecd77c6d8266fa8998f074e2a972182ddde8b3f7f768d67a9a08a9cab240"
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
