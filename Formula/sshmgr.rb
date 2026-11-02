class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.4.3.tar.gz"
  sha256 "71390872daca5228084a09992e8976245640703ec44a5368e125540be94b7d4b"
  license "MIT"

  depends_on "fzf"
  depends_on "jq"
  depends_on "fping"
  def install
    bin.install "sshmgr.sh" => "sshmgr"
    man1.install "sshmgr.1"
  end

  test do
    system "#{bin}/sshmgr", "--help"
  end
end
