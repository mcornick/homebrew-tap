# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clilol < Formula
  desc "A CLI for omg.lol"
  homepage "https://clilol.readthedocs.io/"
  version "1.0.13"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/mcornick/clilol/releases/download/v1.0.13/clilol_1.0.13_darwin_all.tar.gz"
    sha256 "fb90fc190ada47ea2d4315b486b811b705c9716028f1e3fae0bbcfc2bcbfd9a7"

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
      url "https://github.com/mcornick/clilol/releases/download/v1.0.13/clilol_1.0.13_linux_arm64.tar.gz"
      sha256 "7d6404768338defe8bfe06ac115ce529d76b94d5e3abb2e53d214e3742e1a097"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/clilol/releases/download/v1.0.13/clilol_1.0.13_linux_amd64.tar.gz"
      sha256 "295db4132cd867c7c9a55ad8d6e1e8dbe1510de0dad2343703826e8190f523ea"

      def install
        bin.install "clilol"
        bash_completion.install "completions/clilol.bash" => "clilol"
        zsh_completion.install "completions/clilol.zsh" => "_clilol"
        fish_completion.install "completions/clilol.fish"
        man1.install Dir["manpages/*.1"]
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/clilol/releases/download/v1.0.13/clilol_1.0.13_linux_armv6.tar.gz"
      sha256 "8c2c9b348a49e35cc90f7c4868469bea49791beda7b223a1ec2157102219ed35"

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
