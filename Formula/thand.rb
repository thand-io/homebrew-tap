class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.51"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.51/agent-darwin-amd64.tar.gz"
      sha256 "160cfe707e1af74e65140acc55a0a1a848041bf9cd0c4c2b476ac0887d3024fd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.51/agent-darwin-arm64.tar.gz"
      sha256 "55207d73ca9048965eff42f788417a524c12e6df1db190f0711f7f748967797c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.51/agent-linux-amd64.tar.gz"
      sha256 "1b4b84ad9271ffe2ad4a2ef5dad1a0a085282695c6bf1583929a1571721ad3d3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.51/agent-linux-arm64.tar.gz"
      sha256 "5a73e3f89b7aafae01771bd6af7c52214695c437a0d6220adbe55be7b61bc277"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
