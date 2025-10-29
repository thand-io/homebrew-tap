class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.49"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.49/agent-darwin-amd64.tar.gz"
      sha256 "0e3a2f185b9173b30fd79786f99b4d1aab9cae8bba25773684b57309bc3a83a0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.49/agent-darwin-arm64.tar.gz"
      sha256 "1fb64da685e5f01e25dd8061ea0aa7e655231ae811ef4c879bafaba5dc11d8e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.49/agent-linux-amd64.tar.gz"
      sha256 "0557aca25c5d0edd1dc7e0e0d11363f38fb1f9248947186e00b1a794f2f5eff9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.49/agent-linux-arm64.tar.gz"
      sha256 "d53c08750b018bfb8c60399329773726921580b6d94426c50fb4fb0f1f1f93b9"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
