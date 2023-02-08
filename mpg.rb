# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mpg < Formula
  desc "Mark's Password Generator"
  homepage "https://github.com/mcornick/mpg"
  version "1.0.34"
  license "MIT"

  on_macos do
    url "https://github.com/mcornick/mpg/releases/download/v1.0.34/mpg_1.0.34_darwin_all.tar.gz"
    sha256 "0437cb1483765e68838f84a745a1bc35b2fc4d9215c46d202d5799193745de3b"

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
      url "https://github.com/mcornick/mpg/releases/download/v1.0.34/mpg_1.0.34_linux_amd64.tar.gz"
      sha256 "bc41c71bc19e8128ad0865b55f6e7c2e29ca839ced11a86473f9cb4d633de88b"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.34/mpg_1.0.34_linux_armv6.tar.gz"
      sha256 "c4989d0185a6c8dec74b661ea1fd3707cc0242b72c698e2076f11f06c637cd69"

      def install
        bin.install "mpg"
        bash_completion.install "completions/mpg.bash" => "mpg"
        zsh_completion.install "completions/mpg.zsh" => "_mpg"
        fish_completion.install "completions/mpg.fish"
        man1.install "manpages/mpg.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/mpg/releases/download/v1.0.34/mpg_1.0.34_linux_arm64.tar.gz"
      sha256 "f4e2061340432d20bef2e346b7afeee6337099c9a8eafe43ea423a7aa638fb21"

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
