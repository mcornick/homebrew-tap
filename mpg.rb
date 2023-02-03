# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mpg < Formula
  desc "Mark's Password Generator"
  homepage "https://github.com/mcornick/mpg"
  version "1.0.15"
  license "MIT"

  on_macos do
    url "https://github.com/mcornick/mpg/releases/download/v1.0.15/mpg_1.0.15_darwin_all.tar.gz"
    sha256 "6599472988354192f43136c0f72bf171830452a204c2f7877003570fd6bdf786"

    def install
      bin.install "mpg"
      bash_completion.install "completions/mpg.bash" => "mpg"
      zsh_completion.install "completions/mpg.zsh" => "_mpg"
      fish_completion.install "completions/mpg.fish"
      man1.install "manpages/mpg.1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.15/mpg_1.0.15_linux_amd64.tar.gz"
      sha256 "a4860bb2115ee99f360de34c051f2f3dd4640a577e4e62350e72ff8ebbcabdd8"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.15/mpg_1.0.15_linux_arm64.tar.gz"
      sha256 "3fcf9f58a4c4b9b5fb6cd9d098136cb33ec6678f6041424e72492304f1138712"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.15/mpg_1.0.15_linux_armv6.tar.gz"
      sha256 "4cdddb9cbebdd9201508c0f12300c082ba002d53312cd078319b0080be4a51a1"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
  end
end
