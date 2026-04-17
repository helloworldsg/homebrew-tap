class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.1"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.1/k9t-macos-amd64.tar.gz"
      sha256 "362221b52640e64768d8a8ae10b6cbb10a7ac2e0c5df25720ce211e655634ce8"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.1/k9t-macos-arm64.tar.gz"
      sha256 "e47225a2f24d5e761cb9052ce9a17d4fd8fce797ce9a2d35353709ea3288dc19"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.1/k9t-linux-amd64.tar.gz"
      sha256 "0cdc83daf9fe9bfa1e5e678b28ba7aed9949b765880c8063542f84ae478963e2"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.1/k9t-linux-arm64.tar.gz"
      sha256 "33a20ccc305ef7b2127de874471ded5a4a85240d12f3cba93fbabea0c5fc5cbb"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
