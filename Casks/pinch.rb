cask "pinch" do
  version "1.0.8"
  sha256 "d9a52d4f5183b61da2572e087fddd12b4490e36222e2c8c14dd95f1a1414bf92"

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
