# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://clilol.readthedocs.io/"
  version "1.0.17"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/mcornick/clilol/releases/download/v1.0.17/clilol_1.0.17_darwin_all.tar.gz"
    sha256 "07f68957ad5f1593e465eb213e35e70851b127e00c4ccbd58da810d213dac45d"

    def install
      bin.install "clilol"
      bash_completion.install "completions/clilol.bash" => "clilol"
      zsh_completion.install "completions/clilol.zsh" => "_clilol"
      fish_completion.install "completions/clilol.fish"
      man1.install Dir["manpages/*.1"]
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v1.0.17/clilol_1.0.17_linux_armv6.tar.gz"
      sha256 "8f79810b11678b64399a84743912a07e898d80e4928825abc210c73d044b73ba"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v1.0.17/clilol_1.0.17_linux_arm64.tar.gz"
      sha256 "e8edb0052c373dc4c391716e8d6317b47d81e8f855f0e20d861e163814515825"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/clilol/releases/download/v1.0.17/clilol_1.0.17_linux_amd64.tar.gz"
      sha256 "7de8aa342b8c406c69d64639c9057322a8583bf48cc5e9ddb23b3e13808ac4ee"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
  end
end
