class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.3"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.3/k9t-macos-amd64.tar.gz"
      sha256 "54d8fb8ddfd738a391cdb455a5b5589240d80fce3c7ccddc1f955149296ced59"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.3/k9t-macos-arm64.tar.gz"
      sha256 "dcafa2fdf0e85fc937ee8c9a794de25684f2adbf8498300581c0477621201983"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.3/k9t-linux-amd64.tar.gz"
      sha256 "3a0c6b73f370d7a6d72725552c8d6117c38fbcd3a295d8dbbde4dad4dd998f8e"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.3/k9t-linux-arm64.tar.gz"
      sha256 "8a09f461a289b93f53869f517069c87cc30a1ff1bf70a171c92f0b3288fcf1ce"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
