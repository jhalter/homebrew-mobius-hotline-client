class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.10.23.tar.gz"
  sha256 "6057bb588605771ae7ccd576fa01633302f046ad7d3b7c9c6aa9c7d2e3f4f477"
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
