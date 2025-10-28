class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.46"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.46/agent-darwin-amd64.tar.gz"
      sha256 "b7d9e4b644812b20886a1452b8242cc5181e3af7f7379cfeef6c0ee1347965c0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.46/agent-darwin-arm64.tar.gz"
      sha256 "c6ee93a26e78b86dc34466443e6b1ba642d340e7f50e8e7e8145bc8ad818854f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.46/agent-linux-amd64.tar.gz"
      sha256 "753e9e436c4e7e418c377121216d3afe1e149fdba36236a111ad41470f093b83"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.46/agent-linux-arm64.tar.gz"
      sha256 "11f5d4147da44dd62f0852a796437d91aa35e6a96d1e1f9805e6aceec825ae1f"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
