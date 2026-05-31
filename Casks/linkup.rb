cask "linkup" do
  version "1.0.1"

  on_intel do
    sha256 "2ce501dd30fddbe10e5c9861f3ad9933432c304fb78c29463c6875f50c4a707c"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/linkup-v#{version}/LinkUp-x64.zip"
  end
  on_arm do
    sha256 "3fb38633a7e08f49399b7677f2fdf6936f7d73b1c00c62d47e121285cbf5ee90"
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
