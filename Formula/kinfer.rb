class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.2.2/kinfer-v0.2.2-darwin-arm64.tar.gz"
  version "0.2.2"
  sha256 "f36ad5f1923d51539df9ca3e39536e51001452bddf296882b91f06fa0d57ded4"
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
