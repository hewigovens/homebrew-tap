cask "github-desktop-tip" do
  version "20261123-3513be1c54"
  sha256 "718d086faf7c6f83bd8a813b4e14ca44a314b8e6f507790be8eb4513355642e4"

  url "https://github.com/hewigovens/github-desktop/releases/download/tip-#{version}/GitHub.Desktop-arm64.zip"
  name "GitHub Desktop (Tip)"
  desc "Tip build of GitHub Desktop from hewigovens/github-desktop"
  homepage "https://github.com/hewigovens/github-desktop"

  conflicts_with cask: "github-desktop"
  depends_on macos: :ventura

  app "GitHub Desktop.app"

  zap trash: [
    "~/Library/Application Support/GitHub Desktop",
    "~/Library/Preferences/com.github.GitHubClient.plist",
    "~/Library/Saved Application State/com.github.GitHubClient.savedState",
  ]
end
