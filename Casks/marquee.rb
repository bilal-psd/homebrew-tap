cask "marquee" do
  version "1.0.1"
  sha256 "8790ee96e4185ea9ad7732cca61b1fa3bd6b1aa90388e0fbbd58f3db956a8284"

  url "https://github.com/bilal-psd/Marquee/releases/download/v#{version}/Marquee-#{version}.zip"
  name "Marquee"
  desc "Menu bar music controller for Apple Music and Spotify"
  homepage "https://github.com/bilal-psd/Marquee"

  depends_on macos: :ventura

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
