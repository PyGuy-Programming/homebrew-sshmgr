class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.1.tar.gz"
  sha256 "6647b1034a8b59d9b2c3b5391700d833815b247dbade19dc016b045bd43b0fd5"
  license "MIT"

  depends_on "fzf"
  depends_on "jq"
  def install
    bin.install "sshmgr.sh" => "sshmgr"
  end

  test do
    system "#{bin}/sshmgr", "--help"
  end
end
