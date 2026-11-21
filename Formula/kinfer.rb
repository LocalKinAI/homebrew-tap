class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.9.0/kinfer-v0.9.0-darwin-arm64.tar.gz"
  version "0.9.0"
  sha256 "3c61e1fd0c129aa185e668ee78e4b98a500ec618b0a973944b26a9a18c8edcd5"
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
