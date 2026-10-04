class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v2.4.2.tar.gz"
  sha256 "73b9798fb61a191318155458a2b8480d68cb9f72afce62e9fff190497015fa48"
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
