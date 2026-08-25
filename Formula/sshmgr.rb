class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.2.tar.gz"
  sha256 "87b0236b6606f5c1f2426eeb3c2a9646719e21488bc5bf936b38ce9deedc4330"
  license "MIT"

  depends_on "fzf"
  depends_on "jq"
  depends_on "fping"
  def install
    bin.install "sshmgr.sh" => "sshmgr"
  end

  test do
    system "#{bin}/sshmgr", "--help"
  end
end
