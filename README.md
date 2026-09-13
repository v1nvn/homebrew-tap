# v1nvn Homebrew Tap

Homebrew tap for [@v1nvn](https://github.com/v1nvn) — macOS casks for my apps.
This is a general-purpose tap, not tied to any one app: each app ships its own
cask under `Casks/`.

## Usage

```bash
brew tap v1nvn/tap
brew install --cask firstmenu
```

Or, fully-qualified without pre-tapping:

```bash
brew install --cask v1nvn/tap/firstmenu
```

## Casks

| Cask | App | Description |
| --- | --- | --- |
| [`firstmenu`](./Casks/firstmenu.rb) | [FirstMenu](https://github.com/v1nvn/homebrew-tap/releases) | Scriptable macOS menu-bar app for plugins and system metrics |

## Updates

Each app's release pipeline publishes its zip to this tap's [releases](https://github.com/v1nvn/homebrew-tap/releases) and bumps its cask here via `brew bump-cask-pr`, so versions stay current automatically. FirstMenu is closed-source; the tap's releases are its distribution channel.
