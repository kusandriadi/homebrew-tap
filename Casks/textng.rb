cask "textng" do
  version "1.0.9"
  sha256 "64a876cfb3f3f6bc3b445b896208f10ca78749275ad101889df325fe39c30387"

  url "https://github.com/kusandriadi/textng/releases/download/v#{version}/TextNG.dmg"
  name "TextNG"
  desc "Lightweight code editor for macOS"
  homepage "https://github.com/kusandriadi/textng"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "TextNG.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/TextNG.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.textng.editor.plist",
    "~/Library/Saved Application State/com.textng.editor.savedState",
  ]
end
