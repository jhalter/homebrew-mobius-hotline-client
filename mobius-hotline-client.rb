class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "8945ea64fb2002bb549e25960eb019efae7ba830ddf942a8c04fdb5b70bd710e"
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
