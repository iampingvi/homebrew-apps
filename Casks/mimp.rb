cask "mimp" do
  version "1.2.14"

  on_intel do
    sha256 "b50f8646c8172f7f55e3a801a1ea3d7e30dffa39b2c479dfdfa2a271308a6776"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "20ff4da3b53acd6afbf76c238aaf15a858974bd212fd6f73807b4b0026e677ca"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/MIMP-arm64.zip"
  end

  name "MIMP"
  desc "Minimal Interface Music Player for MacOS"
  homepage "https://mimp.pingvi.link/"

  auto_updates true

  app "MIMP.app"

  zap trash: [
    "~/Library/Application Scripts/com.pingvi.mimp",
    "~/Library/Containers/com.pingvi.mimp",
    "~/Library/Preferences/com.pingvi.mimp.plist",
    "~/Library/Saved Application State/com.pingvi.mimp.savedState",
  ]
end
