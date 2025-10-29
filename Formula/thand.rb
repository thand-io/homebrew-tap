class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.52"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.52/agent-darwin-amd64.tar.gz"
      sha256 "11ecc553dddb8c1035dadfb2ecb67c8ac09b2c245c4f1ecf1a9795f98161c1e4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.52/agent-darwin-arm64.tar.gz"
      sha256 "7e36c5949500157f9329f43633dc2f2202ccc52fa7d7f77d5388f4cb8316ad12"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.52/agent-linux-amd64.tar.gz"
      sha256 "3cd1bde7fd09e30d72883ed8b952aeafd283b63b8514b09ca32c60789b29e969"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.52/agent-linux-arm64.tar.gz"
      sha256 "1ada535441ea445b435a61a911fef8c5fd2a9b442f3c1158460b3c620f4dcd53"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
