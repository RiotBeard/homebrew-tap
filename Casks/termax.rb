cask "termax" do
  version "0.7.1"
  sha256 "b3e65ed3c04bde24c19bc9c30ccdec54d51a2ec7c5a1af16beafd8348c51e883"

  url "https://github.com/RiotBeard/termax/releases/download/v#{version}/TerMax_#{version}_aarch64.dmg"
  name "TerMax"
  desc "Terminal-first AI-native dev workspace (personal fork of Terax)"
  homepage "https://github.com/RiotBeard/termax"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "TerMax.app"

  zap trash: [
    "~/Library/Application Support/com.riotbeard.termax",
    "~/Library/Caches/com.riotbeard.termax",
    "~/Library/Logs/com.riotbeard.termax",
    "~/Library/Preferences/com.riotbeard.termax.plist",
    "~/Library/Saved Application State/com.riotbeard.termax.savedState",
  ]
end
