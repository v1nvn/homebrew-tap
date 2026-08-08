cask "firstmenu" do
  # Stub: finalized by the first Developer-ID-signed + notarized release.
  # firstmenu/.github/workflows/release.yml runs `brew bump-cask-pr --version <v>`
  # on each release, which downloads the url below, recomputes the sha256, and
  # rewrites both `version` and `sha256`.
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/v1nvn/firstmenu/releases/download/v#{version}/firstmenu-#{version}.zip"
  name "FirstMenu"
  desc "Scriptable macOS menu-bar app for plugins and system metrics"
  homepage "https://github.com/v1nvn/firstmenu"

  # TODO: add `depends_on macos: ">= :<min>"` once MACOSX_DEPLOYMENT_TARGET is confirmed.

  app "firstmenu.app"

  zap trash: [
    "~/Library/Preferences/space.v1n.firstmenu.plist",
  ]
end
