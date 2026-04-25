cask "textng" do
  version "1.0.8"
  sha256 "bd51cce54dcecfef046f0e720ad0cca2762f4794f0f5fafa64e3e4d9275bb562"

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
