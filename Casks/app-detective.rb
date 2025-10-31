cask "app-detective" do
  version "1.1.0"
  sha256 "b2f0f54743d77fa14415f42b55a873c1f41bc45d1ce97c908e1d70973aaa8932"

  url "https://github.com/hewigovens/app-detective/releases/download/#{version}/AppDetective.zip"
  name "App Detective"
  desc "Inspect macOS apps for embedded frameworks and plug-ins"
  homepage "https://github.com/hewigovens/app-detective"

  depends_on macos: ">= :sonoma"

  app "AppDetective.app"

  zap trash: [
    "~/Library/Application Support/AppDetective",
    "~/Library/Preferences/dev.hewig.AppDetective.plist",
    "~/Library/Saved Application State/dev.hewig.AppDetective.savedState",
  ]
end
