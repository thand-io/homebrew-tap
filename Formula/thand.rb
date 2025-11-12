class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.59"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.59/agent-darwin-amd64.tar.gz"
      sha256 "4ee07869877c43708860a1162513ef96c1b135f25fda0db6f299150886c2427e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.59/agent-darwin-arm64.tar.gz"
      sha256 "e3ef054548395979b6d8c46b59f10f97219f3cb568c651dda6dadbc86e93504c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.59/agent-linux-amd64.tar.gz"
      sha256 "8a5ade1d8dface9fde3c9460a5d74d401f7a88ec9dc87d187a5b517aa7ba0ebf"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.59/agent-linux-arm64.tar.gz"
      sha256 "7bbe4f224873a8bf6170bdf7a8acad4e677fc77c9d44f019792df2bb77be9511"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
