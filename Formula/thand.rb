class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.60"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.60/agent-darwin-amd64.tar.gz"
      sha256 "08360783891bb39aee730f66e6dbb70d17134f51bc811a3b44204f7bea4ba70a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.60/agent-darwin-arm64.tar.gz"
      sha256 "f1c0396a552e25bd943a5935ed843bba8241f77039a80a8614309e3b8fdac421"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.60/agent-linux-amd64.tar.gz"
      sha256 "2cef34f94724e3d84191210dc564ea2f7782251620eaadd2f516e9d463e7ed55"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.60/agent-linux-arm64.tar.gz"
      sha256 "8007ffb1005e2517d28cdde055082ba4f01e352496aa008e6f571c09b03538d1"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
