cask "firstmenu" do
  version "0.0.0"
  sha256 :no_check

  url "https://github.com/v1nvn/homebrew-tap/releases/download/firstmenu-v#{version}/firstmenu-#{version}.zip"
  name "FirstMenu"
  desc "Scriptable menu-bar app for plugins and system metrics"
  homepage "https://github.com/v1nvn/homebrew-tap"

  depends_on macos: :tahoe

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/firstmenu.app"], must_succeed: false
  end

  app "firstmenu.app"

  zap trash: [
    "~/Library/Preferences/space.v1n.firstmenu.plist",
  ]
end
