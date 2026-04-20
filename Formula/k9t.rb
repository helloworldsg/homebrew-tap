class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.4.0"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.4.0/k9t-macos-amd64.tar.gz"
      sha256 "d0cd577b12478b245ec26e462ba4efdbc666d0d45c62ffae975c8f6c77f27b2b"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.4.0/k9t-macos-arm64.tar.gz"
      sha256 "0b9b5cd2342a856269eba3a9dff08873724879899e02c931bf4d2df5377bcba9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.4.0/k9t-linux-amd64.tar.gz"
      sha256 "09ff6838063e0dda40b730903aea46f2410c8682211d25e99fc819925ffa48ba"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.4.0/k9t-linux-arm64.tar.gz"
      sha256 "1af0825d55b7ca71e19b800fef31014a937d3edbea6716ccc42041f76447bf46"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
