cask "firstmenu" do
  version "0.5.0"
  sha256 "7e4bc2beeea43a31e32680b7c8cc87423728d47c3b05719575c5a4be519fc3f1"

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
