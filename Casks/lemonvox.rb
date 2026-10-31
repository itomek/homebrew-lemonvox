cask "lemonvox" do
  version "0.1.0"
  sha256 "785b58d40177fd24cb4255a04f15bbe2cbd9747983a76a607a07be593393f721"

  url "https://github.com/itomek/lemonvox/releases/download/v#{version}/LemonVox-#{version}-arm64.zip"
  name "LemonVox"
  desc "Native dictation client for Lemonade"
  homepage "https://github.com/itomek/lemonvox"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "LemonVox Prototype.app"

  caveats <<~EOS
    Requires Lemonade installed and running separately (tested with 2026.44.1).
    Choose transcription and cleanup models in Settings.
    macOS will request microphone and Accessibility permissions for dictation.
    This early release installs as LemonVox Prototype.app.
  EOS
end
