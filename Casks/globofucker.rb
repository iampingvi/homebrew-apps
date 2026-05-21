cask "globofucker" do
  version "1.0.2"
  sha256 "cf06af9ad8152e4f7d6d4d29c083150dae91d79c1e5c3f4e2005341ea775d001"

  url "https://github.com/iampingvi/GloboFucker/releases/download/v#{version}/GloboFucker.zip"
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
