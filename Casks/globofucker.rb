cask "globofucker" do
  version "1.1.10"
  sha256 "a51fdbdab239ad696579c9be99da3c899dcb4009e0afbef4b147e8c58113c3de"

  url "https://github.com/iampingvi/homebrew-apps/releases/download/globofucker-v1.1.10/GloboFucker.zip"
  name "GloboFucker"
  desc "Switch keyboard language instantly with Fn/Globe key on macOS"
  homepage "https://pingvi.link"

  app "GloboFucker.app"

  postflight do
    system_command "/usr/bin/open", args: ["-a", "#{appdir}/GloboFucker.app"]
  end

  uninstall quit: "com.globofucker.app"

  zap trash: [
    "~/Library/Preferences/com.globofucker.app.plist",
    "~/Library/Caches/com.globofucker.app",
  ]
end
