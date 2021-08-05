class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "c33911b12b64dc57ab471bcb5b3af61aad6fdadb0caa61cef39bbcf04fcb34fe"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-darwin-amd64-client"
    bin.install "dist/mobius-hotline-client" => "mobius-hotline-client"
    etc.install "cmd/mobius-hotline-client/mobius-client-config.yaml"  => "mobius-client-config.yaml"
  end

  test do
    system "true"
  end
end
