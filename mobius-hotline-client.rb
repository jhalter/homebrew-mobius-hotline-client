class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "4512da8daf0a259390a728881a78ed8776a39b572ddaf5170ae1def1acccb3fb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-client"
    bin.install "mobius-hotline-client"
    etc.install "client/mobius-client-config.yaml"  => "mobius-client-config.yaml"
  end

  test do
    system "true"
  end
end
