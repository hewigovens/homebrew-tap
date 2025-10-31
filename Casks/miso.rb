cask "miso" do
  version "1.0.1"
  sha256 "ab2a1ea4934b18a37a6699f54ede7cf9f7adaf367b5faa649303f56ea2a6cdf8"

  url "https://github.com/hewigovens/Miso/releases/download/#{version}/Miso.zip",
      verified: "github.com/hewigovens/Miso/"
  name "Miso"
  desc "HUD-style input method switcher"
  homepage "https://github.com/hewigovens/Miso"

  depends_on macos: ">= :monterey"

  app "Miso.app"

  zap trash: [
    "~/Library/Application Support/Miso",
    "~/Library/Preferences/dev.hewig.Miso.plist",
    "~/Library/Saved Application State/dev.hewig.Miso.savedState",
  ]
end
