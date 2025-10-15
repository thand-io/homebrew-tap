class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.28"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.28/agent-darwin-amd64.tar.gz"
      sha256 "d9a0a5a17c9be408a806dbcfa0e87acc51805d1ef75cf4c2d1a7bbb0e72b5f3a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.28/agent-darwin-arm64.tar.gz"
      sha256 "62b34e85255d9a952d911d09b8feb807007661a6b01e5ba17ff6dce7fdfc6900"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.28/agent-linux-amd64.tar.gz"
      sha256 "76052764e5ed1210309e78ddf9a47a25c45c835e83cd5ef237447124f22ebf1e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.28/agent-linux-arm64.tar.gz"
      sha256 "dccb3f8a4a4f6076b3a2f3eccd153c8340675767dfba8c5707a46fbc4426c883"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
