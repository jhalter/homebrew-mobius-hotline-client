class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius-hotline-client"
  url "https://github.com/jhalter/mobius-hotline-client/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "dc928dc5feb64ecd93b971acbbe38950f037e10502044092245a1087149b83df"
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
