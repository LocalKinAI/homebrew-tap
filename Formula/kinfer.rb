class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.1.0/kinfer-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "ef89116e8c0a37468fa0f2624acb5de3af295c9217d6086a271d8bf90bcaea66"
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
