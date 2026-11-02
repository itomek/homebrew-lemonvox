# LemonVox Homebrew tap

Install the signed and notarized macOS release:

```sh
brew tap itomek/lemonvox
brew trust --cask itomek/lemonvox/lemonvox
brew install --cask itomek/lemonvox/lemonvox
```

Homebrew 7 requires an explicit trust decision for third-party casks. The command above trusts only this cask. Review [Casks/lemonvox.rb](Casks/lemonvox.rb) before granting it.

Requires Apple silicon and macOS 26 or later. The app installs as **LemonVox.app**.

Install and run [Lemonade](https://lemonade-server.ai/) separately; version 2026.44.1 is the tested baseline. Select transcription and cleanup models in LemonVox Settings. Grant microphone consent when starting dictation. Use **Settings → Diagnostics → Accessibility…** for macOS input and paste permissions. This tap does not install models or manage Lemonade.

[Source and releases](https://github.com/itomek/lemonvox)

For an existing installation, quit the running app and use Homebrew once to migrate the filename:

```sh
brew update
brew upgrade --cask --greedy itomek/lemonvox/lemonvox
```

Version 0.3.0 installs as LemonVox.app. The cask is marked self-updating; `--greedy` includes it in explicit Homebrew upgrades. The first in-app update retains the old filename. See the [migration notes](https://github.com/itomek/lemonvox/blob/main/docs/distribution/app-name-migration.md) for current validation limits and conflict handling; do not use `--force` to conceal an occupied destination.
