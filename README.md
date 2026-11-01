# LemonVox Homebrew tap

Install the signed and notarized macOS release:

```sh
brew tap itomek/lemonvox
brew trust --cask itomek/lemonvox/lemonvox
brew install --cask itomek/lemonvox/lemonvox
```

Homebrew 7 requires an explicit trust decision for third-party casks. The command above trusts only this cask. Review [Casks/lemonvox.rb](Casks/lemonvox.rb) before granting it.

Requires Apple silicon and macOS 26 or later. The app currently appears as **LemonVox Prototype**.

Install and run [Lemonade](https://lemonade-server.ai/) separately; version 2026.44.1 is the tested baseline. Select transcription and cleanup models in LemonVox Settings. Grant microphone access when requested. Add and enable the app in **System Settings → Privacy & Security → Accessibility**, then relaunch. This tap does not install models or manage Lemonade.

[Source and releases](https://github.com/itomek/lemonvox)

For an existing installation, install the first updater-enabled release once:

```sh
brew update
brew upgrade --cask --greedy itomek/lemonvox/lemonvox
```

Version 0.2.0 adds in-app update checks. The cask is marked self-updating; `--greedy` includes it in explicit Homebrew upgrades. The app continues to install as LemonVox Prototype until the naming follow-up is released.
