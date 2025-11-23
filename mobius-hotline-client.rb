class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.20.0.tar.gz"
  sha256 "9303b94a00da19bdd32a82af9fd048779e9316ae3dd8ce9293f26907021fbc23"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "./cmd/mobius-hotline-client"
    bin.install "mobius-hotline-client" => "mobius-hotline-client"
    etc.install "cmd/mobius-hotline-client/mobius-client-config.yaml"  => "mobius-client-config.yaml" unless File.exist? etc/"mobius-client-config.yaml"
  end

  test do
    system "true"
  end
end
