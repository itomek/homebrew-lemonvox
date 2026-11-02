# frozen_string_literal: true

cask "lemonvox" do
  version "0.3.0"
  sha256 "72bebbd0561c1858881dcea09605ddb0b7bf137331d8a5cadb797e946c0cffca"

  url "https://github.com/itomek/lemonvox/releases/download/v#{version}/LemonVox-#{version}-arm64.zip"
  name "LemonVox"
  desc "Native dictation client for Lemonade"
  homepage "https://github.com/itomek/lemonvox"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "LemonVox.app"

  caveats <<~EOS
    Requires Lemonade installed and running separately (tested with 2026.44.1).
    Choose transcription and cleanup models in Settings.
    Grant microphone consent when starting dictation. Use Settings > Diagnostics >
    Accessibility... for macOS input and paste permissions.
    Installs as LemonVox.app. Use Homebrew once for the filename migration;
    the first in-app update can retain the old filename.
  EOS
end
