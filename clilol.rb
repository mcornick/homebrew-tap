# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://mcornick.com/clilol"
  version "0.5.0"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/mcornick/clilol/releases/download/v0.5.0/clilol_0.5.0_darwin_all.tar.gz"
    sha256 "144077ef33aeb7fc35b384fe78867a2bc6e98b96c9e793e3739edc8a2b5c48c1"

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
      url "https://github.com/mcornick/clilol/releases/download/v0.5.0/clilol_0.5.0_linux_arm64.tar.gz"
      sha256 "607cfeaa08562ba0464b4f56d6b822f0af0188c6610dba30909751840e18f0c5"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v0.5.0/clilol_0.5.0_linux_armv6.tar.gz"
      sha256 "3937bc1602ca760c3ec49605a7a85e0bd4dfc2b9a1d7bd6244761c37418a92ce"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/clilol/releases/download/v0.5.0/clilol_0.5.0_linux_amd64.tar.gz"
      sha256 "4a62eaba3cda6581b5413e5fc43a54448168f4947766c760815619a0e4489e52"

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
