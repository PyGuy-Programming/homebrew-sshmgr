class Sshmgr < Formula
  desc "A bash based SSH host manager for managing SSH connections"
  homepage "https://github.com/PyGuy-Programming/sshmgr"
  url "https://github.com/PyGuy-Programming/sshmgr/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "afc6f055307abc8aa03713020cfb4a21eee747ba8fecfe888a7d962f1453ab65"
  license "MIT"

  depends_on "fzf"
  depends_on "nano"

  def install
    bin.install "sshmgr.sh" => "sshmgr"
  end

  def post_install
    hosts_dir = Pathname.new(ENV["HOME"])/".config/sshmgr"
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
