cask "rekordsync" do
  version "1.0.33"

  on_intel do
    sha256 "59be14a2fc72ff9c7a43863513192b409f1af1963cbe70f9f7ab00679d024ded"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-x64.zip"
  end
  on_arm do
    sha256 "10d6e9e1cadd0cff3759556d60fa2dbe1041f90b3cebe3d31137650439a591bb"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-arm64.zip"
  end

  name "RekordSync"
  desc "Sync Rekordbox library to Cloud (Google Drive, WebDAV FTP SFTP, Local)"
  homepage "https://pingvi.link"

  auto_updates true

  app "RekordSync.app"

  uninstall quit: "com.pingvi.rekordsync"

  zap trash: [
    "~/Library/Application Scripts/com.pingvi.rekordsync",
    "~/Library/Containers/com.pingvi.rekordsync",
    "~/Library/Preferences/com.pingvi.rekordsync.plist",
    "~/Library/Saved Application State/com.pingvi.rekordsync.savedState",
  ]
end
