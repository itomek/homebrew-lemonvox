# frozen_string_literal: true

cask "lemonvox" do
  version "0.6.0"
  sha256 "a08f5c65b190e0230d5b7f08269d54240f7cb75d314b07fce0083ca09d41667e"

  url "https://github.com/itomek/lemonvox/releases/download/v#{version}/LemonVox-#{version}-arm64.zip"
  name "LemonVox"
  desc "Dictation client for an OpenAI-compatible server"
  homepage "https://github.com/itomek/lemonvox"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "LemonVox.app"

  caveats <<~EOS
    Requires Lemonade or another compatible OpenAI API server running separately.
    Supports local or remote HTTP/HTTPS server endpoints ending in /v1.
    Requires transcription and chat completion models, and compatible
    model-discovery metadata. Chat-only
    OpenAI compatibility is insufficient. Tested with Lemonade 2026.44.1.
    Choose transcription and cleanup models in Settings.
    Grant microphone consent when starting dictation. Use Settings > Diagnostics >
    Accessibility... for macOS input and paste permissions.
    Installs as LemonVox.app. Use Homebrew once for the filename migration;
    the first in-app update can retain the old filename.
  EOS
end
