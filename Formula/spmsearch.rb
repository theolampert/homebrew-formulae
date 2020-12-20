# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmsearch < Formula
  desc "Search SPM packages from the command line via the Swift package index."
  homepage ""
  url "https://github.com/theolampert/SPMSearch/archive/0.1.0.tar.gz"
  sha256 "40c16ed1b843199a2593e51d5e2326929a279139fb4609bfe16550b9f89eda7b"
  license "MIT"
  bottle :unneeded

  depends_on :xcode => ["12.2", :build]

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/spmsearch"
  end

  test do
    system "false"
  end
end
