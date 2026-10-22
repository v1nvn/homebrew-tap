cask "firstmenu" do
  version "0.12.1"
  sha256 "6e308020306f5551435fe4c2a1b1c1e26b01e7ad023ec9a3bb884909170cc696"

  url "https://github.com/v1nvn/homebrew-tap/releases/download/firstmenu-v#{version}/firstmenu-#{version}.zip"
  name "FirstMenu"
  desc "Scriptable menu-bar app for plugins and system metrics"
  homepage "https://github.com/v1nvn/homebrew-tap"

  depends_on macos: :tahoe

  app "firstmenu.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/firstmenu.app"], must_succeed: false
  end

  zap trash: "~/Library/Preferences/space.v1n.firstmenu.plist"
end
