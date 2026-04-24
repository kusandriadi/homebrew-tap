cask "text-plus" do
  version "1.0.0"
  sha256 :no_check

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
