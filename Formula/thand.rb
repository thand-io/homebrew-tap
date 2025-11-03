class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.56"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.56/agent-darwin-amd64.tar.gz"
      sha256 "bcc8d045859a126a2efbde4f7c495464edc924e5665fcec62f66b5684de6e1d2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.56/agent-darwin-arm64.tar.gz"
      sha256 "e6b22e684984c81b362b3a5423abba33b5b770f28f8c38697caa92951a55978f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.56/agent-linux-amd64.tar.gz"
      sha256 "6e4705ca03a53002c82e52cb39a67aada029bb2aac5184f10570d1603f547c46"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.56/agent-linux-arm64.tar.gz"
      sha256 "eff1ce3824186da387b3a1573585d643c24450cb96f8cc66fb41c3904c0c5a1b"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
