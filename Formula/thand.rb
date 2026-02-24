class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.1.3"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.3/agent-darwin-amd64.tar.gz"
      sha256 "04e792b016cfc8bf1dbd863889502d33f820510132c8470fb43f03a43f8c11b8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.1.3/agent-darwin-arm64.tar.gz"
      sha256 "8fb3a5bac9df0b5d96784e13d95d4fc538bcada185944c4526dfb89d54207178"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.3/agent-linux-amd64.tar.gz"
      sha256 "f148fd070e2bc9e26227f61e840e423bae9228ba77af787ce9324bac00a77283"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.1.3/agent-linux-arm64.tar.gz"
      sha256 "dcf653a669a5a4c21f27ef8f572bf9265ee92726171ed2851cd7fc9b8851bfe0"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
