cask "termax" do
  version "0.71.2"
  sha256 "c5ebb173734dffea6b2a7484f45c5c70aa1a79cd2dc5f43deab0e6ec33cf8d2b"

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
