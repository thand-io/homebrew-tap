class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.63"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.63/agent-darwin-amd64.tar.gz"
      sha256 "cc186d7fc5507fed6fd79be0153953bcca12f98ca14c3aacf1e0fb5ec87f88d7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.63/agent-darwin-arm64.tar.gz"
      sha256 "dcd59686b50c4a1581b24e28499619559bb8da1c965a7507cde5fb817f0ae804"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.63/agent-linux-amd64.tar.gz"
      sha256 "6adb07115a7fbfc979e6679e3bf34d133b6723106ee6ed0142827ec7e7d37552"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.63/agent-linux-arm64.tar.gz"
      sha256 "bfeca4190542163ccddb6b4f104c87ca579e7f1b329dced2a9116a1c22d48500"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
