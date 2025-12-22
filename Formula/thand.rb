class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.123"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.123/agent-darwin-amd64.tar.gz"
      sha256 "2cebb3da577179fd0793fbe2a9e21996d0546c91e03b7a4e1912a3c4c49511fb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.123/agent-darwin-arm64.tar.gz"
      sha256 "a157f6749c9b13905a3c1e7a2d0ef565176c04ef99e8c5df9aef6bca543e5a74"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.123/agent-linux-amd64.tar.gz"
      sha256 "e93fe21cff92fb49791b7df488cb91195aa6c5fe7083b6116345684ff7f608a7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.123/agent-linux-arm64.tar.gz"
      sha256 "e41f492dfa479bdbabe5809decb528ecd0c9ca91eaef76fc580b6a1aa74c8c38"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
