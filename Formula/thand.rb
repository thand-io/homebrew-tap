class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.37"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.37/agent-darwin-amd64.tar.gz"
      sha256 "65076fbfa1234c77ae60857873a099bd9196fb419b1bc392d060c8701deb9931"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.37/agent-darwin-arm64.tar.gz"
      sha256 "af883deb25e3ed599d464b806795a7be515f5321a67de7346adb9be255c88a28"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.37/agent-linux-amd64.tar.gz"
      sha256 "a092abff657d8c94f620e83ec0640bdacb6d83eb5645e391b9295f5173361e73"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.37/agent-linux-arm64.tar.gz"
      sha256 "29f13ae0d7a939a22ac3a26d26da169cc19c206ca9d3678e26a0c01e70343391"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
