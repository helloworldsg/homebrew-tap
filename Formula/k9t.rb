class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.0"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.0/k9t-macos-amd64.tar.gz"
      sha256 "21ee38a48ff1ba279f55df842c314da0d4387cce60f296954ddc8d884bd90847"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.0/k9t-macos-arm64.tar.gz"
      sha256 "6ff952a57d5bcb647303b09026fb7184ee6031ae94b494c24462b6e44b72ef0d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.0/k9t-linux-amd64.tar.gz"
      sha256 "957dac38828cc620119b98ad846e7559750cf6b67f2f8c30de3c0798fc320f30"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.0/k9t-linux-arm64.tar.gz"
      sha256 "093f0bf0724120ef8a357d05dfa4aa9e098f7d4cf9fbb835d4ad0967f3243768"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
