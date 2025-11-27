class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.85"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.85/agent-darwin-amd64.tar.gz"
      sha256 "7385479ee6de61aaab59d5c71d0b44b4c5f85c1fe573544dd0bfbb41a53d0368"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.85/agent-darwin-arm64.tar.gz"
      sha256 "5612f3bc82bafe42b7037d5c94f83221e2c413cd177bb894a8767d3915192ca2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.85/agent-linux-amd64.tar.gz"
      sha256 "cfbfebfc36c1166d85f233f70c7fcf02560069caf26faa760908ae90ba6f7190"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.85/agent-linux-arm64.tar.gz"
      sha256 "834c7152f5b5ccf689570d7e6d9519c8f93062a122965f2ff05576fbc1c7e74f"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
