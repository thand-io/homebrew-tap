class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.138"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.138/agent-darwin-amd64.tar.gz"
      sha256 "c584a3f52e4a118e80dd8c1fa9df25167ff61a03ac1be55a049066e145320d49"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.138/agent-darwin-arm64.tar.gz"
      sha256 "d161a469d611e8985cbfebc22cec7edbf3a5c95da4f012c36276d65368846092"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.138/agent-linux-amd64.tar.gz"
      sha256 "ccb456983bacf4901c61cb5b18afa1be5b2653c4ae4b08f4b2fc89271ce0c9ca"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.138/agent-linux-arm64.tar.gz"
      sha256 "492c060306c41f849dd702a4ce157e572622e15b0ea107282f2ccf76dce29417"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
