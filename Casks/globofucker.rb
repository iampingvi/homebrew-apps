cask "globofucker" do
  version "1.0.8"
  sha256 "96c57ea1fd61c410cc924face2b03a56c5ccc1fa639b7ee4ca7d26cfe30632fc"

  url "https://github.com/iampingvi/homebrew-apps/releases/download/globofucker-v1.0.8/GloboFucker.zip"
  name "GloboFucker"
  desc "Switch keyboard language instantly with Fn/Globe key on macOS"
  homepage "https://pingvi.link"

  app "GloboFucker.app"

  uninstall quit: "com.globofucker.app"

  zap trash: [
    "~/Library/Preferences/com.globofucker.app.plist",
    "~/Library/Caches/com.globofucker.app",
  ]
end
