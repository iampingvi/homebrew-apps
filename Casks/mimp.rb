cask "mimp" do
  version "1.3.3"

  on_intel do
    sha256 "ffc8efc4bb8b5db526afb8132650ba95f5770c62ccbbc6cf213c01cb5b9b2e93"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "107e0a808e8d8b89f73aaa2597e76cf74921aea24b01a1d313f1592f013f9df6"
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
