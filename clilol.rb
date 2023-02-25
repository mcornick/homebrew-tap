# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://mcornick.com/clilol/"
  version "0.9.0"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/mcornick/clilol/releases/download/v0.9.0/clilol_0.9.0_darwin_all.tar.gz"
    sha256 "cd0c3df827dc5cc4985f2c2c57c8dddc00ec09ed2eeafdf086f545b99dc710cf"

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
      url "https://github.com/mcornick/clilol/releases/download/v0.9.0/clilol_0.9.0_linux_arm64.tar.gz"
      sha256 "a274cb8bcd582bc89d2954e012559d7acf5524992bcec0e12172950f11fa0d54"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v0.9.0/clilol_0.9.0_linux_armv6.tar.gz"
      sha256 "995c7d42ef88d4e144f4d01ce1072e7d7f8a539e6812f818cb2df021cb39604f"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/clilol/releases/download/v0.9.0/clilol_0.9.0_linux_amd64.tar.gz"
      sha256 "67dd02fba9a978e4c8285cbcb2f5e55f5f2a971a8709d23b51060862b56a932a"

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
