cask "globofucker" do
  version "1.0.6"
  sha256 "f5b209956bf07cb331a903229b3ef79c831a21d78ab1f9a33068b0f1309fb85c"

  url "https://github.com/iampingvi/homebrew-apps/releases/download/globofucker-v1.0.6/GloboFucker.zip"
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
