cask "fluidsubtitles" do
  version "1.6.12"
  sha256 "5b2c7de06cfaacc19e36a25f3ccda24ec534a2d84d5405e62b75f268c497fd3a"

  url "https://github.com/chrisswimlee/fluidSubtitles/releases/download/v#{version}/fluidsubtitles-#{version}.zip"
  name "fluidSubtitles"
  desc "Live captions for macOS. Each sentence appears when it is ready."
  homepage "https://github.com/chrisswimlee/fluidSubtitles"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "fluidSubtitles.app"

  zap trash: [
    "~/Library/Application Support/fluidSubtitles",
    "~/Library/Preferences/com.fluidsubtitles.app.plist",
  ]
end
