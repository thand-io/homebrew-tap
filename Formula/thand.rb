class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.83"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.83/agent-darwin-amd64.tar.gz"
      sha256 "093a2a20c5d4b7825574e5b95783754a5c9eed1cbfc46c6c2e3e11374d5c5155"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.83/agent-darwin-arm64.tar.gz"
      sha256 "f2fa56c91e04769dbd799a5fbdf6fe95fb75feee36993a74c6a6475e2b013870"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.83/agent-linux-amd64.tar.gz"
      sha256 "c6a999e5bb2691ae826d5d244cff131d52d2c390f63acfb57560d595f652511c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.83/agent-linux-arm64.tar.gz"
      sha256 "98f6076c16097f92f03abe1da1dd22abcc1d2a9df61a96b23b6ec681e7c4e0b8"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
