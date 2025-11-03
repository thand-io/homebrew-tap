class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.55"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.55/agent-darwin-amd64.tar.gz"
      sha256 "f77797a144c52f300083064e059e39889fdc82ef714730cc8d0c236ffc95696d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.55/agent-darwin-arm64.tar.gz"
      sha256 "f555a2a53012f622cba90220ef80e0f096f468009630c43adec3b92273070376"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.55/agent-linux-amd64.tar.gz"
      sha256 "dc9cf28ed59aa83af9fdccb3e1d9910fe4ca603fc304f71424f8076434eeef7d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.55/agent-linux-arm64.tar.gz"
      sha256 "ee415b9ad9dda154c0ed8e990dca96d6157b09ba91b9cca741369bdf1992c2af"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
