class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius-hotline-client"
  url "https://github.com/jhalter/mobius-hotline-client/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0c48440022479d11edfbc02a46a5bfb3db554839c9196ec4dcd250787fe651ff"
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
