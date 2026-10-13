class Xrayvpn < Formula
  desc "Provision and manage a self-hosted Xray VLESS + REALITY VPN server"
  homepage "https://github.com/lifestreamy/xrayvpn"
  url "https://github.com/lifestreamy/xrayvpn/releases/download/v0.4.3/xrayvpn-0.4.3-macos-arm64-portable"
  sha256 "0e575a49330992260205b870a7bdfa3e99d7b0cd7d17f7055c82d10592df2fa3"
  license "AGPL-3.0-or-later"

  depends_on arch: :arm64

  def install
    bin.install "xrayvpn-0.4.3-macos-arm64-portable" => "xrayvpn"
  end

  test do
    assert_match "xrayvpn", shell_output("#{bin}/xrayvpn --version")
  end
end
