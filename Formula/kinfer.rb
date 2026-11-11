class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.7.2/kinfer-v0.7.2-darwin-arm64.tar.gz"
  version "0.7.2"
  sha256 "e83cdc3a6c4a39ad00fdbd1b89becd19d0230015ac86d1d890371f2a172fbe6d"
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
