class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.152"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.152/agent-darwin-amd64.tar.gz"
      sha256 "03e76d8f17ae9d511c29f3c340b73ece1cad5af627c81921007c638e4d2ce004"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.152/agent-darwin-arm64.tar.gz"
      sha256 "57c66d9a07c6bc94c1bddfb3a9d436cef00af4a624bfc2fbcc92dfd1aea60060"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.152/agent-linux-amd64.tar.gz"
      sha256 "054d35c633f3c089da713bc2ec7609eec4a96ee94913d9ca519c80a0134f4706"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.152/agent-linux-arm64.tar.gz"
      sha256 "6bae31e9343c0f25ea972ec9b072a9bb3342dae445811a6b1227298db3e826b2"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
