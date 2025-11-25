class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.77"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.77/agent-darwin-amd64.tar.gz"
      sha256 "0e53ec5d67a8e04898439028c94954cedfc5003ed3eb41d30ab29b4fdf046c95"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.77/agent-darwin-arm64.tar.gz"
      sha256 "841cb36a24800d3ef451867303499569d548ca87907f1c0e6d4835223696b68e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.77/agent-linux-amd64.tar.gz"
      sha256 "057adcf2d647e6be6a553d43d0896260d7672b00359aec06708d399814fe9f87"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.77/agent-linux-arm64.tar.gz"
      sha256 "02e8336941b8c80ae62a5dee41f03db4548d37b6caa111fe76da3f2ad7c44d68"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
