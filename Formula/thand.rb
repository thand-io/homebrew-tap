class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.0.145"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.145/agent-darwin-amd64.tar.gz"
      sha256 "2f4ca78e2bdff6b1c9be50f3581bd93bcd0c173e33a7446d9c189027d9103639"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.0.145/agent-darwin-arm64.tar.gz"
      sha256 "1d1c5116e12013bfddf48a763f976eb7f78eba1769d6963f4129dac554363c19"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.0.145/agent-linux-amd64.tar.gz"
      sha256 "9e9674351f51989568bd1134dc2b8b9493bf8dfde8d6c04cc933b22ea421ec66"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.0.145/agent-linux-arm64.tar.gz"
      sha256 "69743805307241e83b2d41aeff8f8f7b108ba0613464dbbd83c6dd378c978a31"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
