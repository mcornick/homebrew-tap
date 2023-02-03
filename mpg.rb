# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mpg < Formula
  desc "Mark's Password Generator"
  homepage "https://github.com/mcornick/mpg"
  version "1.0.19"
  license "MIT"

  on_macos do
    url "https://github.com/mcornick/mpg/releases/download/v1.0.19/mpg_1.0.19_darwin_all.tar.gz"
    sha256 "44fd313d011a18684abe9bfa936720b0d572024ea70f2c2532b7d86ab794da76"

    def install
      bin.install "mpg"
      bash_completion.install "completions/mpg.bash" => "mpg"
      zsh_completion.install "completions/mpg.zsh" => "_mpg"
      fish_completion.install "completions/mpg.fish"
      man1.install "manpages/mpg.1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.19/mpg_1.0.19_linux_arm64.tar.gz"
      sha256 "ae909ccbed26f3049b4cb87982bf8d9e0c73ae86bfeb5894c91e88109bc49cc1"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.19/mpg_1.0.19_linux_amd64.tar.gz"
      sha256 "a06febef6397e538e21ac19bcfe87ec0b87fa79a62ab8e1ffd058de8bb6f082a"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.19/mpg_1.0.19_linux_armv6.tar.gz"
      sha256 "7c8e5fc897bb8c7b544c1bb07755bdf353325e0a5a7aaf11429ab5fb9570b92b"

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
