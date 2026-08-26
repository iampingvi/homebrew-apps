cask "mimp" do
  version "1.4.0"

  on_intel do
    sha256 "ab13f12b957c8456f0e6730b4c27f6d9ff48a6f752290b6022dd7a151df8576a"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "65bf687f7e8477b9ba5dbda049adeab6a0c80824af2387303fd723f97d918393"
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
