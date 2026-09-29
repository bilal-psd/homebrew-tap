cask "popnote" do
  version "1.0.0"
  sha256 "f86fa8ec557249791398a87d5b31111809c6990bdb592eded45d0bb812e5e1cc"

  url "https://github.com/bilal-psd/popnote/releases/download/v#{version}/Popnote.zip"
  name "Popnote"
  desc "Quick notes and checklists that clear themselves away unless pinned"
  homepage "https://github.com/bilal-psd/popnote"

  depends_on macos: :sonoma

  app "Popnote.app"

  uninstall quit: "io.github.bilal-psd.popnote"

  zap trash: [
    "~/Library/Application Support/Popnote",
    "~/Library/Preferences/io.github.bilal-psd.popnote.plist",
  ]

  caveats <<~EOS
    Popnote isn't notarized by Apple, so macOS blocks it the first time it opens.
    Open it once, then go to System Settings > Privacy & Security and click
    "Open Anyway". You only need to do this once per install.
  EOS
end
