class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.4/kinfer-v0.1.4-darwin-arm64.tar.gz"
  version "0.1.4"
  sha256 "6c9e4609bc82efd95486626a3009229373defb083f3ec6d5c7a9ae56b719b04c"
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
