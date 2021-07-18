class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "6714e92877b3df692ef5e8d8b6a5e053b5ad473e42cfb1fe7791a8352dfbcde6"
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
