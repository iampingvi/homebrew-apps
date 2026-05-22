cask "globofucker" do
  version "1.0.7"
  sha256 "6413563217f6552a9e164dc8a862af30e641db63f025d6ec0e64d6012c3ed5ce"

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
