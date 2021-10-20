# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Genpw < Formula
  desc "Generates strings that can be used as reasonably secure passwords."
  homepage "https://github.com/markcornick/genpw"
  version "4.2.2"

  on_macos do
    url "https://github.com/markcornick/genpw/releases/download/v4.2.2/genpw_4.2.2_darwin_all.tar.gz"
    sha256 "04d235ffc6af89e9c9abf048f9bd12f2ab5b6850d9ce876b0b30ccbaa0df01f7"
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/markcornick/genpw/releases/download/v4.2.2/genpw_4.2.2_linux_armv6.tar.gz"
      sha256 "e41cb644244a4a64d8b8b319c3c01b78f919e78897735ef83a6459393cad2c6f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/markcornick/genpw/releases/download/v4.2.2/genpw_4.2.2_linux_amd64.tar.gz"
      sha256 "ea7319ab6f0c1925bdd9befc21fd4fdc6aa91dae8d0319175549c561b0131e81"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/markcornick/genpw/releases/download/v4.2.2/genpw_4.2.2_linux_arm64.tar.gz"
      sha256 "5f9911a984f8ed16edadb7248473d6136d8f5597dd1d3344fd40feeaae05d98b"
    end
  end

  def install
    bin.install "genpw"
  end
end
