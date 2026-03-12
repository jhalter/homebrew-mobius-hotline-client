class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius-hotline-client"
  url "https://github.com/jhalter/mobius-hotline-client/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "7d7fd18909c27f1d6291764c48ba8beabc0de8131b4139d49eb74c2a29a02c11"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "mobius-hotline-client", "."
    bin.install "mobius-hotline-client" => "mobius-hotline-client"
    etc.install "mobius-client-config.yaml"  => "mobius-client-config.yaml" unless File.exist? etc/"mobius-client-config.yaml"
  end

  test do
    system "true"
  end
end
