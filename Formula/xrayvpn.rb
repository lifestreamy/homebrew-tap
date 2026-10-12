class Xrayvpn < Formula
  desc "Provision and manage a self-hosted Xray VLESS + REALITY VPN server"
  homepage "https://github.com/lifestreamy/xrayvpn"
  url "https://github.com/lifestreamy/xrayvpn/releases/download/v0.4.2/xrayvpn-0.4.2-macos-arm64-portable"
  sha256 "377c936a9dfd17bedb029cee9b4b15d3f09a7a6cbc6d6418842ab0a66eaa27a3"
  license "AGPL-3.0-or-later"

  depends_on arch: :arm64

  def install
    bin.install "xrayvpn-0.4.2-macos-arm64-portable" => "xrayvpn"
  end

  test do
    assert_match "xrayvpn", shell_output("#{bin}/xrayvpn --version")
  end
end
