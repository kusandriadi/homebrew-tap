cask "text-plus" do
  version "1.0.4"
  sha256 "da6c0e1c60d4a29765ae27a300c85a644844bba8a7937c34a5c687bc656b64a1"

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
