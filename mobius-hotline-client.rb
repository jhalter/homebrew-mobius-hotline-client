class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "67a197c7acb0bac60a43b84ce3b199a17cfd59c780a6598e26e9649b637ef599"
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
