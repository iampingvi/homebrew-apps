cask "quckdrop" do
  version "2.2.0"

  on_intel do
    sha256 "68b03463de26a26e5afe141592c32b8d113c5578916d7558a050c08ebaa0c08f"
    url "https://github.com/iampingvi/homebrew-apps/releases/download/v#{version}/QuckDrop-x64.zip"
  end
  on_arm do
    sha256 "4717ce24b242e3b52b694362942bfbaa8a5fbfb5029c4873a597b8f7838c0d7c"
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
