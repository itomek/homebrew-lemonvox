cask "lemonvox" do
  version "0.2.0"
  sha256 "9dcea4333c84154dae018fda1cfdaf8f68029a7e5a2d7eae7e1637aa180f6163"

  url "https://github.com/itomek/lemonvox/releases/download/v#{version}/LemonVox-#{version}-arm64.zip"
  name "LemonVox"
  desc "Native dictation client for Lemonade"
  homepage "https://github.com/itomek/lemonvox"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "LemonVox Prototype.app"

  caveats <<~EOS
    Requires Lemonade installed and running separately (tested with 2026.44.1).
    Choose transcription and cleanup models in Settings.
    Grant microphone access when requested. Enable the app manually in
    System Settings > Privacy & Security > Accessibility, then relaunch.
    This early release installs as LemonVox Prototype.app.
  EOS
end
