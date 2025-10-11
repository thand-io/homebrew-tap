class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.23"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.23/agent-darwin-amd64.tar.gz"
      sha256 "f06045fdb21068da9984c71abe9c098da55cb764c8e57d934f49edd637b2ebc5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.23/agent-darwin-arm64.tar.gz"
      sha256 "ff68f8db142110a5a031f467e6a9c6370b05f2bf827cb88f63de059693d68e57"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.23/agent-linux-amd64.tar.gz"
      sha256 "93573778d21d2d3c5388af8d05a6bf0b7c7f1710f5d20c2162cb45a44e54aa06"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.23/agent-linux-arm64.tar.gz"
      sha256 "d25838166e6cc2f4dce46f40b65c1d5f38925fd2ea42fd4f86606c39cfe53f8f"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
