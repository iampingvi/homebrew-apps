cask "mimp" do
  version "1.2.3"

  on_intel do
    sha256 "8cdcc7d276b3750ca0cf63779d9aae76ce899a53bf25b8190ed809900a0204b1"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "a61d7a5594bce2b7a38d265db72e7344ef777013cc0e242275022cf879b6f0cc"
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
