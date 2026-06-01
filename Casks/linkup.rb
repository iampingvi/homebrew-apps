cask "linkup" do
  version "1.0.5"

  on_intel do
    sha256 "16c30a63f884cfd1f9cc649129ecdb3090c0a5b1eb89959ce801ac7c6fe0e3d6"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/linkup-v#{version}/LinkUp-x64.zip"
  end
  on_arm do
    sha256 "ec0acc5f4f3ae118e6873a0bbfb8633539372f06f08d6867d012940593e20fdd"
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
