cask "rekordsync" do
  version "1.0.32"

  on_intel do
    sha256 "10c477d8d9e92360c7c200aff26a8365c46c673ead664ad40e8f5cbd659d73cf"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/rekordsync-v#{version}/RekordSync-x64.zip"
  end
  on_arm do
    sha256 "0917c7b32b79d4fa98b693d69d20423f0f84a30c60d7cb3e1f35d473d9f9d787"
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
