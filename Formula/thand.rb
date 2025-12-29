class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.126"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.126/agent-darwin-amd64.tar.gz"
      sha256 "bc8c918cb3cffbd798c481c2e2d57ff905141f77996e39e4f92619130085b0f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.126/agent-darwin-arm64.tar.gz"
      sha256 "57a97bc7b584872a0ccef62416797805086d88d72c1a1922ebf5fb037ce17e56"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.126/agent-linux-amd64.tar.gz"
      sha256 "cfc6fdb45e46a708d523a93ed40a02eb171a88559a77cb3acccf8e40961c8828"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.126/agent-linux-arm64.tar.gz"
      sha256 "508d9a7a4683e848eb5e20fd3156969f3561c2a73f20dd4999e4daf43cadb9a9"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
