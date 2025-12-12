class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.110"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.110/agent-darwin-amd64.tar.gz"
      sha256 "0c8cf2861482d020a13757e6740a2080d3449554ff33dd7a0713e4d72644293b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.110/agent-darwin-arm64.tar.gz"
      sha256 "b3461c46232adb512a402c9c987755b00b2b5efb076be6d14075f628dbc85b78"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.110/agent-linux-amd64.tar.gz"
      sha256 "edbfa9a64e9f10165d0bee6d795ace9ef00c46248a41d1581b6d7fbf127e8ee0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.110/agent-linux-arm64.tar.gz"
      sha256 "8e7be0709962fe6736c747c7137e4640d8d4b19639c766c998ef4c8ddaff96b6"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
