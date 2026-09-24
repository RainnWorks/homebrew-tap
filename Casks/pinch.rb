cask "pinch" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/RainnWorks/pinch/releases/download/v#{version}/Pinch-#{version}.dmg"
  name "Pinch"
  desc "Turn AirPods stem presses into keyboard shortcuts"
  homepage "https://github.com/RainnWorks/pinch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Pinch.app"

  zap trash: [
    "~/Library/Caches/works.rainn.pinch",
    "~/Library/HTTPStorages/works.rainn.pinch",
    "~/Library/Preferences/works.rainn.pinch.plist",
  ]
end
