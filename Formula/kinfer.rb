class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.3/kinfer-v0.1.3-darwin-arm64.tar.gz"
  version "0.1.3"
  sha256 "51ed557f850ef76cd6a9a5cffb8a0adc27e369e305c340edb020ab454b2297b5"
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
