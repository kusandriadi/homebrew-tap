cask "text-plus" do
  version "1.0.1"
  sha256 "e16d2d0408cf3f2d2cd4674dd21c05d2e9661b155c4ceacaf13463c8406f0e66"

  url "https://github.com/kusandriadi/text-plus/releases/download/v#{version}/text-plus_#{version}.dmg"
  name "Text Plus"
  desc "Lightweight code editor for macOS — Notepad++ alternative"
  homepage "https://github.com/kusandriadi/text-plus"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "text-plus.app"

  zap trash: [
    "~/Library/Caches/com.textplus.editor",
    "~/Library/Preferences/com.textplus.editor.plist",
    "~/Library/Saved Application State/com.textplus.editor.savedState",
  ]
end
