cask "quckdrop" do
  version "2.2.0"

  on_intel do
    sha256 "a3d526060fa013257b38703261b8a8210a337edb94023f384a2d50ef8dec0e41"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/QuckDrop-x64.zip"
  end
  on_arm do
    sha256 "60e5bd69e0a5dd07c435e0175d42a145976e3fd7beb7a265e45e3f7f8d73d97a"
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
