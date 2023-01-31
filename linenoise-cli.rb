# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LinenoiseCli < Formula
  desc "Generates strings that can be used as reasonably secure passwords."
  homepage "https://github.com/mcornick/linenoise-cli"
  version "1.2.1"

  on_macos do
    url "https://github.com/mcornick/linenoise-cli/releases/download/v1.2.1/linenoise-cli_1.2.1_darwin_all.tar.gz"
    sha256 "5684b2ae21f573ce927c3acc2223999f75ffaf49809f0a5d4f0f5279766d17ad"

    def install
      bin.install "linenoise-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mcornick/linenoise-cli/releases/download/v1.2.1/linenoise-cli_1.2.1_linux_amd64.tar.gz"
      sha256 "0ee88ae2aef7b045b86a5d5b5c2d60888259871e2019d0d9887aff23f93bbba4"

      def install
        bin.install "linenoise-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/linenoise-cli/releases/download/v1.2.1/linenoise-cli_1.2.1_linux_arm64.tar.gz"
      sha256 "8147cfb4f3de13e7e98cb8385118fe24a359c2efbd2e13e287071e842c1222e3"

      def install
        bin.install "linenoise-cli"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mcornick/linenoise-cli/releases/download/v1.2.1/linenoise-cli_1.2.1_linux_armv6.tar.gz"
      sha256 "93832766c7ac77a7df7fe29a2abe1d0d9e718748d5a1ea0a0f57e23844cd4c59"

      def install
        bin.install "linenoise-cli"
      end
    end
  end
end
