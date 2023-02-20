# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://mcornick.com/clilol"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/mcornick/clilol/releases/download/v0.2.0/clilol_0.2.0_darwin_all.tar.gz"
    sha256 "8c0c6917576a926fe73f0d2217786631966266e96605ee2a494c15e279be3668"

    def install
      bin.install "clilol"
      bash_completion.install "completions/clilol.bash" => "clilol"
      zsh_completion.install "completions/clilol.zsh" => "_clilol"
      fish_completion.install "completions/clilol.fish"
      man1.install "manpages/*.1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v0.2.0/clilol_0.2.0_linux_armv6.tar.gz"
      sha256 "e451c020abc99ba8af4e6a22691c9a12562ea55493e96904b4e97e84b12ab7de"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install "manpages/*.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/clilol/releases/download/v0.2.0/clilol_0.2.0_linux_amd64.tar.gz"
      sha256 "39f147074fd4b030cdb22016ffa762dd38b9ccfec151fbbf4e2a59917d54b1c0"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install "manpages/*.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v0.2.0/clilol_0.2.0_linux_arm64.tar.gz"
      sha256 "fd9b189a2be26e66dc6739db32a0d843e09c1e82374676141557d01c4e7e7f1c"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install "manpages/*.1"
      end
    end
  end
end
