# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://clilol.mcornick.dev/"
  version "1.0.8"
  license "MPL-2.0"

  on_macos do
    url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.8/clilol_1.0.8_darwin_all.tar.gz"
    sha256 "abdbbb4293db8b0c6ca8e87d1cf43e8db9f868caab8d7877ff6e3892daa31d4d"

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
      url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.8/clilol_1.0.8_linux_arm64.tar.gz"
      sha256 "9d3092e063c03a195b98a131f991f3104a37823e3cbac0afa67f8ffe88b0970f"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.8/clilol_1.0.8_linux_armv6.tar.gz"
      sha256 "39b685243ac70ff303bf5000f9444945e8d6f252a05cb7c402e6047c0577002e"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.8/clilol_1.0.8_linux_amd64.tar.gz"
      sha256 "294a97d60206e0cf952ae8bbf1fc34808ee67af5813b54e6a0ddb5cc46243544"

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
