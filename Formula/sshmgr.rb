class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4d71475068f314665101253368b61ce54e918943b499f3e61229c345b1f747c1"
  license "MIT" # oder was auch immer du verwendest

  depends_on "fzf"

  def install
    bin.install "sshmgr.sh" => "sshmgr"
    
    # known_hosts.save wird beim ersten Start erstellt, nicht beim Install
  end

  def post_install
    hosts_dir = var/"sshmgr"
    hosts_dir.mkpath
    hosts_file = hosts_dir/"known_hosts.save"
    unless hosts_file.exist?
      hosts_file.write <<~EOS
        # list of known hosts
        # layout: <username>@<address> - <connection name>
      EOS
    end
  end

  test do
    system "#{bin}/sshmgr", "--help"
  end
end
