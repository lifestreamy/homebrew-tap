class Xrayvpn < Formula
  desc "Provision and manage a self-hosted Xray VLESS + REALITY VPN server"
  homepage "https://github.com/lifestreamy/xrayvpn"
  url "https://github.com/lifestreamy/xrayvpn/releases/download/v0.4.1/xrayvpn-0.4.1-macos-arm64-portable"
  sha256 "8eaac047413aeeb84b461e14a02d622aa767e46046cdd3a5c16a2794ab35dc31"
  license "AGPL-3.0-or-later"

  depends_on arch: :arm64

  def install
    bin.install "xrayvpn-0.4.1-macos-arm64-portable" => "xrayvpn"
  end

  test do
    assert_match "xrayvpn", shell_output("#{bin}/xrayvpn --version")
  end
end
