cask "linkup" do
  version "1.0.3"

  on_intel do
    sha256 "8ed532ec06069dbc191702dbb43e79cf52f5f505b95a6532c945ee89bc67bd8e"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/linkup-v#{version}/LinkUp-x64.zip"
  end
  on_arm do
    sha256 "c921331ea4893c517b3b8ab00822c4f9d0d00a0b283b41989d5fe4d37d4c3808"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/linkup-v#{version}/LinkUp-arm64.zip"
  end

  name "LinkUp"
  desc "Sync and share Rekordbox playlists with cue points, waveform colors, and track files"
  homepage "https://pingvi.link"

  auto_updates true

  app "LinkUp.app"

  uninstall quit: "com.pingvi.linkup"

  zap trash: [
    "~/Library/Application Scripts/com.pingvi.linkup",
    "~/Library/Containers/com.pingvi.linkup",
    "~/Library/Preferences/com.pingvi.linkup.plist",
    "~/Library/Saved Application State/com.pingvi.linkup.savedState",
  ]
end
