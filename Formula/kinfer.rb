class Kinfer < Formula
  desc "Single-file local inference runtime for agent fleets"
  homepage "https://github.com/LocalKinAI/kinfer"
  url "https://github.com/LocalKinAI/kinfer/releases/download/v0.2.4/kinfer-v0.2.4-darwin-arm64.tar.gz"
  version "0.2.4"
  sha256 "872a7c4e9876edf8fa282461779ce5d0bcefc174f89deb161349ef68d9b9c59c"
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
