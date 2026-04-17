class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.4"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.4/k9t-macos-amd64.tar.gz"
      sha256 "e993634305574b926df6406811fabd2af1432550dbbaf74f4a71214f72cd920f"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.4/k9t-macos-arm64.tar.gz"
      sha256 "ded05bdf80fbad1d1dfddfb3c4cd8ccf7772fb802fc741e8e20419f3a11555b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.4/k9t-linux-amd64.tar.gz"
      sha256 "951cbc5e92996d70b68337b093fd4651e6c2488d125efddd5b89ca67532b489b"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.4/k9t-linux-arm64.tar.gz"
      sha256 "4541e619cd0e0f931989ab1a9162ed64c472350db069740b76b39c1ffd3ac7df"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
