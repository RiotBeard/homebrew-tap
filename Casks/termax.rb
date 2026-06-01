cask "termax" do
  version "0.71.3"
  sha256 "806bcdd123cbf2ecc0582f0e1e9c24faa40115c8ece3756ddc2c9950dd136ebe"

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
