cask "globofucker" do
  version "1.0.8"
  sha256 "53c8713434d66044c77456316c8557d2ab81710c3dc4405aaa30e5614c0be594"

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
