class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.75"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.75/agent-darwin-amd64.tar.gz"
      sha256 "a2f04e62d223571a2bd35f9bf65c19ab87f814866738ccd4b83af0163655fb7b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.75/agent-darwin-arm64.tar.gz"
      sha256 "26308e7541d74b6276be8d1434fd372e95bb1718aec578a70cd4bb2ff4b29d3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.75/agent-linux-amd64.tar.gz"
      sha256 "81f27859ea57e2700cfae21d9e044ae0f27d187cd156f14dcca3a59d5aea3d0a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.75/agent-linux-arm64.tar.gz"
      sha256 "a915f3f8359bb7379aefd4ce7a3ceccbdf68290e9f69cf00760327aafa00ce07"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
