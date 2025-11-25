class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.82"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.82/agent-darwin-amd64.tar.gz"
      sha256 "84e5a7b9c9f424a2fc1f72e4da01912c11ec98d98c18044bc950be2cacc8ec42"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.82/agent-darwin-arm64.tar.gz"
      sha256 "a7f9a14af05ebae476060c18917be911a052b3e96d00a98de5243096e86818ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.82/agent-linux-amd64.tar.gz"
      sha256 "5dc7b202c04815ecd1292a155feb7f8ce326798d01de3ee96d000545441f2f0a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.82/agent-linux-arm64.tar.gz"
      sha256 "03cbd1804e58de18b7c4342dddce92af78ba325deaf0f3e637fc5c1a16952b30"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
