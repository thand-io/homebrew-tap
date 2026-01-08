class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.139"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.139/agent-darwin-amd64.tar.gz"
      sha256 "acf4397d81f2c8a302ab1d4a71ad41baae4f2a9f2cce14da68d88e8ad3e2e508"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.139/agent-darwin-arm64.tar.gz"
      sha256 "12e0876ce6baefc1b1b9a5a3bd36ad4cbaa6a6fc354b628af54ca9851f8748fc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.139/agent-linux-amd64.tar.gz"
      sha256 "a70711cfa289269f9e237295ada862a7d6adfdcb366ede960ae880d73e13fde2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.139/agent-linux-arm64.tar.gz"
      sha256 "f297d9ac81e47d0986bafe7e8071d4b36ba026590bf14a4f992b3c9de82fea71"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
