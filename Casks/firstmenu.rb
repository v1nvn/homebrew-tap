cask "firstmenu" do
  version "0.11.2"
  sha256 "36cef1730403158c14f1b60cd925b9e3557dcee0a101afe2c404b34263b39d0b"

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
