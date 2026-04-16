class K9t < Formula
  desc "A faster, simpler Kubernetes terminal UI"
  homepage "https://github.com/helloworldsg/k9t"
  url "https://github.com/helloworldsg/k9t/releases/download/v0.1.0/k9t-macos-arm64.tar.gz"
  sha256 "87f6ea3ecc0a539a407bff4532acd48b409c2c5f7cd1057eea8dff13e7d58d99"
  sha256 "REPLACE_WITH_SHA256"
  license "MIT"
  version "0.1.0"

  on_intel do
    url "https://github.com/helloworldsg/k9t/releases/download/v0.1.0/k9t-macos-amd64.tar.gz"
  sha256 "f76af8397c02e6a6b1777e0592f9fb7e129c65e4b3c75853603959967c2d5cf3"
    sha256 "REPLACE_WITH_SHA256"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.1.0/k9t-linux-arm64.tar.gz"
  sha256 "bfa633e6ba396ffdd6c64e7fd0820d6170d8b710bc45d652f542fcff71b446d5"
      sha256 "REPLACE_WITH_SHA256"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.1.0/k9t-linux-amd64.tar.gz"
  sha256 "7f14ba0a21fd8fa71b6067e3bcadd275fc9066a9124b221932e323d0aa17745e"
      sha256 "REPLACE_WITH_SHA256"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    assert_match "k9t", shell_output("#{bin}/k9t --help 2>&1", 1)
  end
end