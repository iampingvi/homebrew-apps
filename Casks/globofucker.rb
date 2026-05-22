cask "globofucker" do
  version "1.0.7"
  sha256 "4651af5ceb761b1b795823089e904bb930827e46f0a4b879c71182e2082e8f00"

  url "https://github.com/iampingvi/homebrew-apps/releases/download/globofucker-v1.0.7/GloboFucker.zip"
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
