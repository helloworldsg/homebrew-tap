class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.2"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.2/k9t-macos-amd64.tar.gz"
      sha256 "6b04ef3f69d5f035cf2bcab933f3d1a49a5c001aebf0dd89be4b92c7ab2ef23d"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.2/k9t-macos-arm64.tar.gz"
      sha256 "e22c6c0fc64c15a62dccf2368bd719c7ea29cc34b4a41d775016c2f266041fe3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.2/k9t-linux-amd64.tar.gz"
      sha256 "db261241a85da16d1eff34aed396fa7e43cfe5f12b5fc3dabce432ce3e0379a6"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.2/k9t-linux-arm64.tar.gz"
      sha256 "4501f1e3fdf89e8892b15ceec697cdb7aa4d224a15e3b4c6b68d0fa8bf17d046"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
