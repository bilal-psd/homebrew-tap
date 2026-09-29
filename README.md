# homebrew-tap

Homebrew tap for [Popnote](https://github.com/bilal-psd/popnote), [Marquee](https://github.com/bilal-psd/Marquee) and other tools.

## Install Popnote

A scratchpad for your Mac: quick notes and checklists that clear themselves away unless pinned.

```bash
brew install --cask bilal-psd/tap/popnote
```

Popnote is ad-hoc signed (not notarized), so macOS blocks it the first time it
opens. Open it once, then go to **System Settings › Privacy & Security** and
click **Open Anyway**. You only need to do this once per install.

## Install Marquee

```bash
brew install --cask bilal-psd/tap/marquee
```

Marquee is ad-hoc signed (not notarized). After install, clear the Gatekeeper
quarantine attribute before first launch:

```bash
xattr -dr com.apple.quarantine "/Applications/Marquee.app"
```
