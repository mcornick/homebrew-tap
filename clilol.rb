# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://clilol.readthedocs.io/"
  version "1.0.10"
  license "MPL-2.0"

  on_macos do
    url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.10/clilol_1.0.10_darwin_all.tar.gz"
    sha256 "22cab7fda99009dfba1355d2a7767d2f79b871649508d1242b6946892adb1eb6"

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
      url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.10/clilol_1.0.10_linux_armv6.tar.gz"
      sha256 "591701ca12e587cdf26fa33faf5ae3045df4843451a06aa6f3cefb3f94309a69"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.10/clilol_1.0.10_linux_arm64.tar.gz"
      sha256 "bf385ac12d88e6018fe0dd1eccab0e255b1f02fb0771e82443e9662abc9a8018"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://git.mcornick.dev/mcornick/clilol/releases/download/v1.0.10/clilol_1.0.10_linux_amd64.tar.gz"
      sha256 "57892e3b34631743b4a75907f72b8eaa70bd65fe99c9bc75baa0ff6ce5a6a252"

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
