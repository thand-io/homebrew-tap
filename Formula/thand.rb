class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.54"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.54/agent-darwin-amd64.tar.gz"
      sha256 "1fe04fe9de57e584d5a86523766276ae853fdd44ec62c804e0f1221ffbc99881"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.54/agent-darwin-arm64.tar.gz"
      sha256 "f8e69d306b7595617de2aef91889a77fb40fe429b7d0b70f02186f42af52847e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.54/agent-linux-amd64.tar.gz"
      sha256 "f8a80006a46556a692c88a4b14c543a9cbeaca9c2c33c71a4dfb56e39daeb95d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.54/agent-linux-arm64.tar.gz"
      sha256 "ebcb6bbe5ba4b674f9063b30fef85d699191674791fbc79cc2b4fc293d2818bc"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
