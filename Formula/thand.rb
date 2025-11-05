class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.62"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.62/agent-darwin-amd64.tar.gz"
      sha256 "6217dfa69dd7445fa280635c1f6d8cdf38211e1b6f671fcf28e41d4cbc57e4fe"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.62/agent-darwin-arm64.tar.gz"
      sha256 "4a3d39e60bdaa65ecac52995f5be32edc60ff4215b734082c0165b67ac168788"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.62/agent-linux-amd64.tar.gz"
      sha256 "064c03aa06232aadedab6a9bc74d3961d9bdb86cc4776b2e1fe775415d4cbbce"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.62/agent-linux-arm64.tar.gz"
      sha256 "ccb9e3bb0a8dabdb0077b330302394c9f566c1f04405a0f5f69a3f5056c8fe33"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
