cask "pinch" do
  version "1.0.4"
  sha256 "8e975dbb5f70dbadddce1e177fe59c6075b7654590d7fee92a4d36b178525f3f"

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
