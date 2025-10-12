class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.24"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.24/agent-darwin-amd64.tar.gz"
      sha256 "efe41a3a58653b3a1e87aace87ed7dbe74b5ad74b95eb87bc39293831cc51550"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.24/agent-darwin-arm64.tar.gz"
      sha256 "1aa7138a7dcb2b96129e1214ecfa4bb8ba52b931b30101e006c9d608d1073af5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.24/agent-linux-amd64.tar.gz"
      sha256 "ef5f58a5154b3a72f01237501dcad0e10f4edf781abaf94acab28b17405d2d1a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.24/agent-linux-arm64.tar.gz"
      sha256 "a44c0da4c81f8671ebe1e00ddcf6ec6fc6b69b6706f8b2ff138528b75d6e55b9"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
