cask "firstmenu" do
  version "0.8.0"
  sha256 "d94ac4c5e0ead208a8d6951f3708e47cb95317e85b3b93bf09dc406a4a68e75b"

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
