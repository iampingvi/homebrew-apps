cask "linkup" do
  version "1.0.4"

  on_intel do
    sha256 "c7dc7328abd19a56b79a885d5210063727dee3caf7420af3890c5c279f86f320"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/linkup-v#{version}/LinkUp-x64.zip"
  end
  on_arm do
    sha256 "8ba5250336dd7c9386689c1173f180eafaef8536869b6b992b1547ec85728103"
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
