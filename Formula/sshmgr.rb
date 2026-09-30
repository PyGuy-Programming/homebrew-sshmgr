class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.4.1.tar.gz"
  sha256 "925fe2b329739dd80aa87d36460cb36904eabb55425b1a29e60f0887c688faa8"
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
