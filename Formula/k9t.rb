class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.2.2"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.2/k9t-macos-amd64.tar.gz"
      sha256 "2f2b00341313751055c4b49ffc966cf3773a6b111e1dac8e42692fb6b4002ac1"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.2/k9t-macos-arm64.tar.gz"
      sha256 "bfdd8cbd8c0b04a49d702762c0d477b163b77b548ab854ac177ef2a26609d578"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.2/k9t-linux-amd64.tar.gz"
      sha256 "6676f76fe070f3ee715f444fa65c8e42aa3999f3ef3423facde7d6b817de6b2b"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.2/k9t-linux-arm64.tar.gz"
      sha256 "f200210600453d822bf253fe21abd52151e3a38ff7fbb35b5b63e090d460bcfb"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
