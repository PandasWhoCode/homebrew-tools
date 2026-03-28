class Dl < Formula
  desc "A CLI Tool to drive a Diesel Train Engine across your terminal session"
  homepage "https://github.com/PandasWhoCode/diesel-train"
  url "https://github.com/PandasWhoCode/diesel-train/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "5ce77273a94518f8a4960942b381b2a270a6801bd88c722ee89fcc295e2d6e7c"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", bin/"dl"
  end

  test do
    assert_match "dl", shell_output("#{bin}/dl --help 2>&1", 0)
  end
end
