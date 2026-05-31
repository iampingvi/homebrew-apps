cask "linkup" do
  version "1.0.2"

  on_intel do
    sha256 "d28bf409f6df4527ac06817f16d37d25ff1a491ad539cbb51b48bea10d8731e5"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/linkup-v#{version}/LinkUp-x64.zip"
  end
  on_arm do
    sha256 "6bd940376cb861f3a8e702b3aa92481a8b9015f547a66c26fba8def54f6e5a46"
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
