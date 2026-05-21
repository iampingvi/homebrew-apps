cask "mimp" do
  version "1.2.4"

  on_intel do
    sha256 "e455f9f96f1188d31c688512b3062de0550673c38ec840364be9d2b82cf3bb20"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "7ec9c6a418b1a2b95d0955435a303d5241a8cf076faf3b0d6171e47ebe17e76f"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/MIMP-arm64.zip"
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
