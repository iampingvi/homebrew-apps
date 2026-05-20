cask "mimp" do
  version "1.1.9"

  on_intel do
    sha256 "38744222472d92b2f82169b7764cc1c6b1bddcad906572cd30dacd6bc59805bc"
    url "https://github.com/iampingvi/MIMP/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "e5e535432c60ed05649b4e5eaba301f3dfbc7e1062a406ffbb1b70c5ead2384a"
    url "https://github.com/iampingvi/MIMP/releases/download/v#{version}/MIMP-arm64.zip"
  end

  name "MIMP"
  desc "Minimal Interface Music Player for MacOS"
  homepage "https://mimp.pingvi.link/"

  app "MIMP.app"

  zap trash: [
    "~/Library/Application Scripts/com.pingvi.mimp",
    "~/Library/Containers/com.pingvi.mimp",
    "~/Library/Preferences/com.pingvi.mimp.plist",
    "~/Library/Saved Application State/com.pingvi.mimp.savedState",
  ]
end
