class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "5acffafc1b2058f73e7429cd1ccbdd1e728a9f85c0a0097a78c4bd8dcd8a1eab"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-client"
    bin.install "mobius-hotline-client"
  end

  test do
    system "true"
  end
end
