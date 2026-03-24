class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.5.11"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.5.11/agent-darwin-amd64.tar.gz"
      sha256 "80bf60f0f1f8809b961256c2eccdfe5e69aaf37c9d6f8f0d6090ebc49d51fef1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.5.11/agent-darwin-arm64.tar.gz"
      sha256 "0f9974f709de2525074683bf7a65d351c1a2d38fcf3fa09e8b16b57e65cf13de"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.5.11/agent-linux-amd64.tar.gz"
      sha256 "c6b4e22d0ebee73fc4149430205ec478180de825e2defb0704145296e06b70f1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.5.11/agent-linux-arm64.tar.gz"
      sha256 "1eb68df689c6042dcd0a9297cf3ab0741f891a5dc09ad2eded089995776ab499"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
