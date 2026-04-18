class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.6"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.6/k9t-macos-amd64.tar.gz"
      sha256 "2c3ef5899da97f8b43693ba6f900afe8b42876e876158e58de882b8dcf5d84ec"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.6/k9t-macos-arm64.tar.gz"
      sha256 "e309a5f27bddd136332092613137a53cb32e9ad75118e5ec09a52d1527554e52"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.6/k9t-linux-amd64.tar.gz"
      sha256 "c1be63a7856efd07f355ff615c2b20f32f0994ee408bd77672d557c8a6417bf4"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.6/k9t-linux-arm64.tar.gz"
      sha256 "0754f8f270d6c677767b483ccec3973821563f6584d15dd84342547bed389819"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
