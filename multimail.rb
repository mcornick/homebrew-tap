class Multimail < Formula
  desc "Offline reader for QWK, Blue Wave, etc."
  homepage "https://wmcbrine.com/MultiMail/"
  url "https://github.com/wmcbrine/MultiMail/archive/refs/tags/0.52.tar.gz"
  sha256 "3bfbf5d410dfff8bc33dfba98a7ba382d3168b8f0d79c2cbcbe6e53be9bba24c"
  license "GPL-3.0-or-later"
  head "https://github.com/wmcbrine/MultiMail.git", branch: "main"

  def install
    system "make"
    mkdir "#{prefix}/bin"
    mkdir "#{prefix}/share/man/man1"
    system "make", "install", "PREFIX=#{prefix}", "HELPDIR=#{prefix}/share/man/man1"
  end
end
