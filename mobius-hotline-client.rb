class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "4f56c42e1e8522ebbb690d13f1df08382351189ceaa3f212a81d43cd1d689fb0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-darwin-amd64-client"
    bin.install "dist/mobius_client_darwin_amd64/mobius-hotline-client" => "mobius-hotline-client"
    etc.install "cmd/mobius-hotline-client/mobius-client-config.yaml"  => "mobius-client-config.yaml"
  end

  test do
    system "true"
  end
end
