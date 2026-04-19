class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.7"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.7/k9t-macos-amd64.tar.gz"
      sha256 "2cdce8e975b74ee4126b8f50b07c12a874a4baaf8295c968d710df0ac978d9bb"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.7/k9t-macos-arm64.tar.gz"
      sha256 "4b1116302426dfcec967c01c2363d93ea72c63a83ca97518932d16560f9a7bab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.7/k9t-linux-amd64.tar.gz"
      sha256 "480468525d29fa9a8970194ce7416683635cdf6bc20276ff638738f6a91f45a0"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.7/k9t-linux-arm64.tar.gz"
      sha256 "32efcaceb9189e9de5f7b845ed770561ebf6ba717f38ec0fc5faa96e3352e4a2"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
