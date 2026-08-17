class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.0.tar.gz"
  sha256 "e0efda1a6632932caa437abe3d01650e210a550b68f2f96765448e4122b48c2a"
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
