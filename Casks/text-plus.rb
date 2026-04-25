cask "text-plus" do
  version "1.0.6"
  sha256 "9cd28de998740c799341ac5daf758e76853be7a236a6b251db2eb9d97958c890"

  url "https://github.com/kusandriadi/text-plus/releases/download/v#{version}/TextPlus.dmg"
  name "Text Plus"
  desc "Lightweight code editor for macOS — Notepad++ alternative"
  homepage "https://github.com/kusandriadi/text-plus"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "TextPlus.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/TextPlus.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.textplus.editor.plist",
    "~/Library/Saved Application State/com.textplus.editor.savedState",
  ]
end
