class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "0badfd503beb2dbe67760e3b033a060b57ee861cba09cc095845bf99b67c5f75"
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
