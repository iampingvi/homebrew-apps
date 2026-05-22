cask "globofucker" do
  version "1.0.7"
  sha256 "21cb4ed69d086f63c21d2b85118a6f91c4bc813d4aa0e17a65430c9040c7ac9f"

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
