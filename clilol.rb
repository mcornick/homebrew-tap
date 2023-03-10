# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://mcornick.com/clilol/"
  version "0.9.4"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/mcornick/clilol/releases/download/v0.9.4/clilol_0.9.4_darwin_all.tar.gz"
    sha256 "fcdf113ba43b2aee9201a89fa018ee8ffac352ffecbf8bf417cb8f52b98e8334"

    def install
      bin.install "clilol"
      bash_completion.install "completions/clilol.bash" => "clilol"
      zsh_completion.install "completions/clilol.zsh" => "_clilol"
      fish_completion.install "completions/clilol.fish"
      man1.install Dir["manpages/*.1"]
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v0.9.4/clilol_0.9.4_linux_arm64.tar.gz"
      sha256 "6949e04b2f4868ae9d1c9ca91f09bce0e5541d3084bd7df8bae636a49532bcc9"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v0.9.4/clilol_0.9.4_linux_armv6.tar.gz"
      sha256 "fa00e4b5ba32988276881675fb82625d92121e661304f53a51811dc7ff6650f3"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/clilol/releases/download/v0.9.4/clilol_0.9.4_linux_amd64.tar.gz"
      sha256 "3ec0defe2402aeed9e4ab804f2afc8dbaf5aa09aa6d080f9bb31bfb68dda2e32"

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
