class Thand < Formula
  desc "Open-source agent for AI-ready privilege access management (PAM) and just-in-time access (JIT) to cloud infrastructure, SaaS applications and local systems."
  homepage "https://github.com/thand-io/agent"
  license "BSL-1.1"
  version "v0.1.2"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.2/agent-darwin-amd64.tar.gz"
      sha256 "5ea6691f7f5eb4dcac2908d44cd7881394fcfec42742817c8219f3a9894f3e06"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thand-io/agent/releases/download/v0.1.2/agent-darwin-arm64.tar.gz"
      sha256 "6339c9abe44b397b55ac33b1bb6147964c30250f317c1680d572222e62b92a14"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thand-io/agent/releases/download/v0.1.2/agent-linux-amd64.tar.gz"
      sha256 "97c281a1fe4fcfe4249f0d5e90de547e6979b6644cbde7272b34d886a52159c9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thand-io/agent/releases/download/v0.1.2/agent-linux-arm64.tar.gz"
      sha256 "450083a9fd0260705c1a57152d4872d61631a8b52b361f87af404528f3b3c463"
    end
  end

  def install
    bin.install "agent" => "thand"
  end

  test do
    system "#{bin}/thand", "--help"
  end
end
