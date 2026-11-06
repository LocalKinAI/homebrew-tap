class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.2.0/kinfer-v0.2.0-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "db7d944ef6e4ce166b22514a5cce65d3ccf0146b33c90386c24e526eec7d5bb5"
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
