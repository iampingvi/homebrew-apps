cask "quckdrop" do
  version "2.2.0"

  on_intel do
    sha256 "176aa6861c323caba4dc852f239caa437c0005f9b44bd2fc3c58744c06208646"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/QuckDrop-x64.zip"
  end
  on_arm do
    sha256 "400211dc0e3bc0652fb4452ba7f59dddf3190b5421907ba56230ca7ada2fe4ca"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/QuckDrop-arm64.zip"
  end

  name "QuckDrop"
  desc "AirDrop-style Quick Share protocol implementation for macOS"
  homepage "https://quickdrop.pingvi.link/"

  auto_updates true

  app "QuckDrop.app"

  zap trash: [
    "~/Library/Application Scripts/me.grishka.NearDrop",
    "~/Library/Containers/me.grishka.NearDrop",
    "~/Library/Preferences/me.grishka.NearDrop.plist",
    "~/Library/Saved Application State/me.grishka.NearDrop.savedState",
  ]
end
