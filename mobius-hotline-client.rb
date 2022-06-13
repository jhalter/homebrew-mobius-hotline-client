class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.5.6.tar.gz"
  sha256 "6cc4741c2802e490a7424ab2d7a19011057e68b222e4ae458245cca568a7f399"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-darwin-amd64-client"
    bin.install "dist/mobius_client_darwin_amd64/mobius-hotline-client" => "mobius-hotline-client"
    etc.install "cmd/mobius-hotline-client/mobius-client-config.yaml"  => "mobius-client-config.yaml" unless File.exist? etc/"mobius-client-config.yaml"
  end

  test do
    system "true"
  end
end
