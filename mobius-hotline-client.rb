class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e08ade823a94c28cef1b5050cf12d9e69d110685116c306aafc7aa3455f92832"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-client"
    bin.install "mobius-hotline-client"
    etc.install ".mo"
  end

  test do
    system "true"
  end
end
