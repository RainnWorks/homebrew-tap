cask "pinch" do
  version "1.0.2"
  sha256 "0f3f1398ee83ab68122a49cd999cc0130706e7951797e0576e6a147135595f62"

  url "https://github.com/RainnWorks/pinch/releases/download/v#{version}/Pinch-#{version}.dmg"
  name "Pinch"
  desc "Turn AirPods stem presses into keyboard shortcuts"
  homepage "https://github.com/RainnWorks/pinch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pinch.app"

  zap trash: [
    "~/Library/Caches/works.rainn.pinch",
    "~/Library/HTTPStorages/works.rainn.pinch",
    "~/Library/Preferences/works.rainn.pinch.plist",
  ]
end
