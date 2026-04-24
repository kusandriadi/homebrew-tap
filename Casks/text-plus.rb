cask "text-plus" do
  version "1.0.2"
  sha256 "03e0dde8fb52841b7ba1c040087314bef5429650f2104dcdbfd018d29389e7ac"

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
