class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.109"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.109/agent-darwin-amd64.tar.gz"
      sha256 "567d4c51f8e2e8c64abdc9b40aac391b9515506bf97866a5dd6dfcaf85c3376f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.109/agent-darwin-arm64.tar.gz"
      sha256 "456bf23bfce278457a8176622baa0ebc1426a66f688e26361798357bece10af6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.109/agent-linux-amd64.tar.gz"
      sha256 "431a7d02d0d8464576ae1237115796d52f45526820ff54600a929199572f1fc9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.109/agent-linux-arm64.tar.gz"
      sha256 "365ffcb6e890778e169f726a4cc7e7b5cc9d3122a82157a27f197d8ff32d60f0"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
