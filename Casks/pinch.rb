cask "pinch" do
  version "1.0.7"
  sha256 "21778bf505cf1ef36460bab8b5962082d2cb1cce0ced71d6d06fb915d4c054fa"

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
