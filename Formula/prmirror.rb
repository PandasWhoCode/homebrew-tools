class PrMirror < Formula
  desc "A CLI Tool to mirror an existing pull request from a public GitHub repository"
  homepage "https://github.com/PandasWhoCode/pr-mirror"
  url "https://registry.npmjs.org/@pandaswhocode/pr-mirror/-/pr-mirror-2.5.0.tgz"
  sha256 "7a01fed91704e112b073e526d036ca1376727f64e1ab2c4a48ef429bce775c39"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
     assert_match "prmirror", shell_output("#{bin}/prmirror --help 2>&1", 0)
  end
end
