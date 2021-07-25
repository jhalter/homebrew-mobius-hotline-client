class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "51890d75d1a1390344e2e6917ae97a4c8e46c2b0d1ffc2b42f45fc6dec0c49df"
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
