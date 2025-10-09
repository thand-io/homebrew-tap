class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.16"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.16/agent-darwin-amd64.tar.gz"
      sha256 "c0bcdbe01788d34faff40f65d1fdb6dc09c4f5a5c76a4eab264106752481a7b3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.16/agent-darwin-arm64.tar.gz"
      sha256 "a1190f312f077be1d2e7eb7a68d85722c34fe7a218d6e70a3642428ca250f3d5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.16/agent-linux-amd64.tar.gz"
      sha256 "45c12f18d73826c40a21fab161ea3b05a558bfe26e72d871d9bdce891f2303ea"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.16/agent-linux-arm64.tar.gz"
      sha256 "5ec7ba8ed6dab723ed50e8d21598b95e0dc1f1144408da4f1f09d0bdc72f13f9"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
