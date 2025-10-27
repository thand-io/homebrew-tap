class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.41"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.41/agent-darwin-amd64.tar.gz"
      sha256 "acd72e0c504cd4763167552621741247d38d9214ee65c832bb79e59121547be7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.41/agent-darwin-arm64.tar.gz"
      sha256 "4822f80df061297c2d2b0ab2bdddd95e75ecbe3434d4cb82a4881d5ae1300281"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.41/agent-linux-amd64.tar.gz"
      sha256 "ef897ed858243bdef574336a1b56a730f599b0c050302ccaf263a04174410e05"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.41/agent-linux-arm64.tar.gz"
      sha256 "3909e63db1547daf54a7af3ad4fdf7beb48fbcaab716890fe727d1f50ab24496"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
