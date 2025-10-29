class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.48"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.48/agent-darwin-amd64.tar.gz"
      sha256 "bb7a7b78ad72460096abc2b9b90bb897160b6b27830ebee9bc2b1cf99f3ce02d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.48/agent-darwin-arm64.tar.gz"
      sha256 "f00810e8d02b68fa10498494d2359504399d4ed2a14633381a879fe4e23c81fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.48/agent-linux-amd64.tar.gz"
      sha256 "9b07393fd51bc5ecb179b0de8881d279a2dfc53bc99bdd0635ea5243d6bac8f6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.48/agent-linux-arm64.tar.gz"
      sha256 "8f9a88a28f86ffb33050cfb1060d8e6266f468454c04179a1e9bf04d11308959"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
