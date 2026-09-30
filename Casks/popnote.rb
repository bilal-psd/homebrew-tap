cask "popnote" do
  version "1.0.0"
  sha256 "5576582419876714129362109f6ad5c8aea442c1cd38d87fc62f5f3d9897ef0e"

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
