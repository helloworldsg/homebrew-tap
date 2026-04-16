#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:?Usage: update-formula.sh <version>}"
REPO="helloworldsg/k9t"
BASE_URL="https://github.com/${REPO}/releases/download/v${VERSION}"

download_sha() {
  local artifact="$1"
  curl -fSL "${BASE_URL}/${artifact}.tar.gz" -o "/tmp/${artifact}.tar.gz"
  shasum -a 256 "/tmp/${artifact}.tar.gz" | awk '{print $1}'
}

MACOS_ARM64=$(download_sha "k9t-macos-arm64")
MACOS_AMD64=$(download_sha "k9t-macos-amd64")
LINUX_ARM64=$(download_sha "k9t-linux-arm64")
LINUX_AMD64=$(download_sha "k9t-linux-amd64")

sed -i.bak \
  -e "s|version \".*\"|version \"${VERSION}\"|" \
  Formula/k9t.rb

sed -i.bak \
  -e "s|k9t-macos-arm64.tar.gz\"$|k9t-macos-arm64.tar.gz\"\n  sha256 \"${MACOS_ARM64}\"|" \
  -e "s|k9t-macos-amd64.tar.gz\"$|k9t-macos-amd64.tar.gz\"\n  sha256 \"${MACOS_AMD64}\"|" \
  -e "s|k9t-linux-arm64.tar.gz\"$|k9t-linux-arm64.tar.gz\"\n  sha256 \"${LINUX_ARM64}\"|" \
  -e "s|k9t-linux-amd64.tar.gz\"$|k9t-linux-amd64.tar.gz\"\n  sha256 \"${LINUX_AMD64}\"|" \
  -e "s|REPLACE_WITH_SHA256|REPLACE_WITH_SHA256|g" \
  Formula/k9t.rb

rm -f Formula/k9t.rb.bak
echo "Formula updated to v${VERSION}"