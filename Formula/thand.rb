class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.0/agent-darwin-amd64.tar.gz"
      sha256 "433c3bc7e8445f349020b4b25a2b46497b8b4e2397470a423d886937468f7659"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.1.0/agent-darwin-arm64.tar.gz"
      sha256 "c21188ab19907b3fc11db6eb4bccc24695ea6613d5c0a84d71c46f91621b5a1f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.0/agent-linux-amd64.tar.gz"
      sha256 "d3e26e7388a758639729e86f4a184ca33cd308795c87ee9e5d88ff5331c35ee6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.1.0/agent-linux-arm64.tar.gz"
      sha256 "9a52c3aacf07eeef7c1a2419690efd85f55063e347e9d9224e1c8c15e235962a"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
