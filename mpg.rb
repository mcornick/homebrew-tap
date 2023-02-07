# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mpg < Formula
  desc "Mark's Password Generator"
  homepage "https://github.com/mcornick/mpg"
  version "1.0.28"
  license "MIT"

  on_macos do
    url "https://github.com/mcornick/mpg/releases/download/v1.0.28/mpg_1.0.28_darwin_all.tar.gz"
    sha256 "e5aa18a3300a4a90c258cea18cf727341e65c6fff2861638bfbb3bde576f4b98"

    def install
      bin.install "mpg"
      bash_completion.install "completions/mpg.bash" => "mpg"
      zsh_completion.install "completions/mpg.zsh" => "_mpg"
      fish_completion.install "completions/mpg.fish"
      man1.install "manpages/mpg.1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.28/mpg_1.0.28_linux_armv6.tar.gz"
      sha256 "b706ff6d70fb61c0281a0f61d197d2bb0d9c49c9c5d8f06dcc31112b71a70f6f"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.28/mpg_1.0.28_linux_amd64.tar.gz"
      sha256 "1de7fe3c8fac6310a6892a657527e2eef0befcd6809686d6c00b57e275737327"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.28/mpg_1.0.28_linux_arm64.tar.gz"
      sha256 "f578d08fa4cde95bbb74ec5fd3cd7be8bc95844dc0bf0420d4dee5c3e0cc8600"

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
