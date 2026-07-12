cask "marquee" do
  version "1.0.0"
  sha256 "3e1097ded212b44ca945a7940e252fc09c04ea2bb7cc25ddd649dc94d62ea7df"

  url "https://github.com/bilal-psd/Marquee/releases/download/v#{version}/Marquee-#{version}.zip"
  name "Marquee"
  desc "Menu bar music controller for Apple Music and Spotify"
  homepage "https://github.com/bilal-psd/Marquee"

  depends_on macos: ">= :ventura"

  app "Marquee.app"

  caveats <<~EOS
    Marquee is ad-hoc signed and not notarized, so Gatekeeper will quarantine
    it on install. Clear the quarantine attribute before first launch:

      xattr -dr com.apple.quarantine "#{appdir}/Marquee.app"

    On first use, macOS will ask permission for Marquee to control Music and/or
    Spotify. Approve these under:
      System Settings -> Privacy & Security -> Automation
  EOS
end
