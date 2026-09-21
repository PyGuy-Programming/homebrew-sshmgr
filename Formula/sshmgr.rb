class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.3.1.tar.gz"
  sha256 "609f4d0396a889dcacef7023961b22b97b9da4fe80a167369bb5830ca179c97a"
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
