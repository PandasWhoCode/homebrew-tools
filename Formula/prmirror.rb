class Prmirror < Formula
  desc "A CLI Tool to mirror an existing pull request from a public GitHub repository"
  homepage "https://github.com/PandasWhoCode/pr-mirror"
  url "https://registry.npmjs.org/@pandaswhocode/pr-mirror/-/pr-mirror-2.5.1.tgz"
  sha256 "994f6a8f9502148f288eebba01e253a0086dea39958fe4404415ecf4b34d5ac1"
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
