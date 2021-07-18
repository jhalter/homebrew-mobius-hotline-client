class MobiusHotlineClient < Formula
  desc "CLI Hotline client"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "0551a18eb7b2ab22c82ecee595cb1c85a53faa82a4c22f0d13372f62c56d4759"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-client"
    bin.install "mobius-hotline-client"
  end

  test do
    system "true"
  end
end
