cask "mimp" do
  version "1.2.0"

  on_intel do
    sha256 "52889329e4509de4444df01594b4e89773467fbd07198a629edd96560c7d1378"
    url "https://github.com/iampingvi/homebrew-mimp/releases/download/v#{version}/MIMP-x64.zip"
  end
  on_arm do
    sha256 "a69a60d2bb7479f80dc8c0d800aed4a7f4107bfa5b11e481e593f999c4c8905b"
    url "https://github.com/iampingvi/homebrew-mimp/releases/download/v#{version}/MIMP-arm64.zip"
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
