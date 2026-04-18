class K9t < Formula
  desc "Terminal UI for Kubernetes"
  homepage "https://github.com/helloworldsg/k9t"
  version "0.3.5"
  license "MIT"

  depends_on "jq"
  depends_on "bat"
  depends_on "hl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.5/k9t-macos-amd64.tar.gz"
      sha256 "2ae28a75d3e66ceda0e8ed7ff508a42febeaa01cf606e9783f0818a2dbcff24f"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.5/k9t-macos-arm64.tar.gz"
      sha256 "1c272613b12f3e38291ececa0e37f352bcba6506869895a7975d046c9bb265ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.5/k9t-linux-amd64.tar.gz"
      sha256 "089fe745a2139a3ef33f98db9b725078b79be12c8dc7c6a3785cc0a9813c933a"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.3.5/k9t-linux-arm64.tar.gz"
      sha256 "7ce8e910470d14222f0e91b4442973c07dfd8b7437175422de9c72917f3440a8"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    system "#{bin}/k9t", "--version"
  end
end
