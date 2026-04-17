class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.1/k9t-macos-amd64.tar.gz"
      sha256 "9d443b5c3db52fd375a6328568346c4e3703736c39369b4640ea757e34125bd8"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.1/k9t-macos-arm64.tar.gz"
      sha256 "d9a494ddd5f0634ae7f9bb796931e22777c23bc8a1e1ae38b00d8bb10ce8c122"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.1/k9t-linux-amd64.tar.gz"
      sha256 "dd0c4a085930f7363f7460d20c92888ed7062b4c6316ec183e2972c5f140cd05"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.1/k9t-linux-arm64.tar.gz"
      sha256 "51a496819d3beb6bc9772a22069d3bb1270c7e4604921250fb63ae07fe51d263"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
