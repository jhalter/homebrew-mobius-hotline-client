class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.10.23.tar.gz"
  sha256 "d29f144ce0407f20bdd26ed2cb617bd20c70c4e2875cbcb1141307eb74e526d5"
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
