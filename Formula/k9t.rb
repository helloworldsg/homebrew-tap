class K9t < Formula
  desc "A faster, simpler Kubernetes terminal UI"
  homepage "https://github.com/helloworldsg/k9t"
  url "https://github.com/helloworldsg/k9t/releases/download/v0.2.0/k9t-macos-arm64.tar.gz"
  sha256 "02fd34f52d60ff77836301ef68ca7143413ae6c5fc2693b5866a7b1092e7e214"
  license "MIT"
  version "0.2.0"

  depends_on "jq"
  depends_on "bat"

  on_intel do
    url "https://github.com/helloworldsg/k9t/releases/download/v0.2.0/k9t-macos-amd64.tar.gz"
    sha256 "718541aa7474c301c8cf403415f1e1e309c5fd0acb3730022822342e57b564e5"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.0/k9t-linux-arm64.tar.gz"
      sha256 "a61429976df893bca7e26b794e980bd7c11c9af35f6bdbf6317793c9dd230d67"
    else
      url "https://github.com/helloworldsg/k9t/releases/download/v0.2.0/k9t-linux-amd64.tar.gz"
      sha256 "e262b1f9bd9e86cd04fda66e841dc8d33bc54ae24f88c009fed60f771a08dde9"
    end
  end

  def install
    bin.install "k9t"
  end

  test do
    assert_match "k9t", shell_output("#{bin}/k9t --help 2>&1", 1)
  end
end