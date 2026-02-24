class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.1.10"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.10/agent-darwin-amd64.tar.gz"
      sha256 "5b000d609b3965343d6589a008300229598802716e6278e44903b9048b5ca28a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.1.10/agent-darwin-arm64.tar.gz"
      sha256 "f8ebe908a8bc01ce83b20966b63f78562265bda2b48bf9d7d5df99edfcaae82d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.10/agent-linux-amd64.tar.gz"
      sha256 "2cfc4e2c9f59fc9cf0ee8dc04319573a90403f0b47df0013c69df47bc9a45c48"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.1.10/agent-linux-arm64.tar.gz"
      sha256 "90d4e7097409f40391f4c80b90d9aa9c913005d5d9cfaa92c3e3e23d62dc3438"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
