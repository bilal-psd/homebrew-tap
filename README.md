# homebrew-tap

Homebrew tap for [Marquee](https://github.com/bilal-psd/Marquee) and other tools.

## Install Marquee

```bash
brew install --cask bilal-psd/tap/marquee
```

Marquee is ad-hoc signed (not notarized). After install, clear the Gatekeeper
quarantine attribute before first launch:

```bash
xattr -dr com.apple.quarantine "/Applications/Marquee.app"
```
