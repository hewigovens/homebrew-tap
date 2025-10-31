class Amux < Formula
  desc "Tiny CLI that keeps local AI/code agents organized inside tmux"
  homepage "https://github.com/hewigovens/amux"
  url "https://github.com/hewigovens/amux/archive/refs/tags/0.1.3.tar.gz"
  sha256 "f8881d8a5cd4cef104557b188aef1d29f1adc69dd48f390b1410bb98af9ec19c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/amux --version")
    assert_match version.to_s, output
  end
end
