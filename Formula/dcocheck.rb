class Dcocheck < Formula
  desc "DCO sign-off checker for git repositories"
  homepage "https://github.com/PandasWhoCode/dco-signoff-process"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PandasWhoCode/dco-signoff-process/releases/download/v#{version}/dcocheck-darwin-arm64.tar.gz"
      sha256 "7a5252002db0011e6c1c189e08b56fc3305e8b31cfa2396688ff9adb6949ce27" # darwin-arm64
    end
    on_intel do
      url "https://github.com/PandasWhoCode/dco-signoff-process/releases/download/v#{version}/dcocheck-darwin-amd64.tar.gz"
      sha256 "7789e1bca177928d836b08b9cfeeadebbaad82f8bc8dfd779f0627dc59179ea3" # darwin-amd64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PandasWhoCode/dco-signoff-process/releases/download/v#{version}/dcocheck-linux-arm64.tar.gz"
      sha256 "5a694bd2f6877763a472b602ad35d9697740780cb7feb659cdd628e999c6ff4a" # linux-arm64
    end
    on_intel do
      url "https://github.com/PandasWhoCode/dco-signoff-process/releases/download/v#{version}/dcocheck-linux-amd64.tar.gz"
      sha256 "c1cd758e2b3e1a057d85dad83443fc7c2e4d528af51c62979e1af63360ccc31a" # linux-amd64
    end
  end

  def install
    bin.install "dcocheck"
  end

  test do
    assert_match "dcocheck version", shell_output("#{bin}/dcocheck --version")
  end
end
