class Imgdown < Formula
  desc "Download images referenced in text-based files (Markdown, HTML, YAML, TOML, JSON)"
  homepage "https://github.com/chris-short/imgdown"
  url "https://github.com/chris-short/imgdown/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "65c9ac26a8873d7fd31fea193634ac22325597364616adbd9861fa16d544a2ec"
  license "MIT"
  head "https://github.com/chris-short/imgdown.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imgdown --version")
  end
end
