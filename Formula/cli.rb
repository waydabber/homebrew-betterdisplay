# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class betterdisplaycli < Formula
  desc "BetterDisplay CLI proxy"
  homepage "https://github.com/waydabber/betterdisplaycli"
  url "https://github.com/waydabber/betterdisplaycli.git",
      tag: "v1.0.0"
  head "https://github.com/waydabber/betterdisplaycli.git"
  license "MIT"

  depends_on xcode: ["14.0", :build]

  def install
    system "make install prefix=#{prefix}"
  end

  test do
    system "#{bin}/betterdisplaycli"
  end
end
