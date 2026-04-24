cask "text-plus" do
  version "1.0.3"
  sha256 "c6906d41ba3ba14a4bc2c714949d80d43dddee07e1e382b37cb5cd0ad3f8833d"

  url "https://github.com/kusandriadi/text-plus/releases/download/v#{version}/text-plus_#{version}.dmg"
  name "Text Plus"
  desc "Lightweight code editor for macOS — Notepad++ alternative"
  homepage "https://github.com/kusandriadi/text-plus"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "text-plus.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/text-plus.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.textplus.editor.plist",
    "~/Library/Saved Application State/com.textplus.editor.savedState",
  ]
end
