class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.18.4.tar.gz"
  sha256 "2b1418e52b6532ae1063dad73309213d19a357d62f601c4c270f6acede677d7a"
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
