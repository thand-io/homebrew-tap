class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.76"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.76/agent-darwin-amd64.tar.gz"
      sha256 "32ccc5ce90f6ed0d873050f3910f3c59e66b513d569d6bd42dab1b08af1b5a1b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.76/agent-darwin-arm64.tar.gz"
      sha256 "0ef6256352a84269e872dd94b5b0307a2acfd711128584b235a1173e2ecd18f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.76/agent-linux-amd64.tar.gz"
      sha256 "aa67a7fbfc32698e7c622f236fe95228b2cf93724d5eaf8544ad12f9bfca66a6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.76/agent-linux-arm64.tar.gz"
      sha256 "cb27455955f7adc1cf1a2aed345b281b80ae3abd6630675b4547ac51098075e3"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
