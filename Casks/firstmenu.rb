cask "firstmenu" do
  version "0.13.1"
  sha256 "08b525475acf06cbe79e46eeb81d5ee74d9c5fbb8143bd5bb3b13a880bf60517"

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
