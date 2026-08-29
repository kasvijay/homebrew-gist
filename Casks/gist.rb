cask "gist" do
  version "0.4.0"
  sha256 "0a30e6688831f68b2ae58c15aa83a779e62eaa7e133fb75db2d59ef963cc4087"

  url "https://github.com/kasvijay/Gist/releases/download/v#{version}/Gist-v#{version}.dmg",
      verified: "github.com/kasvijay/Gist/"
  name "Gist"
  desc "Native macOS transcription app"
  homepage "https://github.com/kasvijay/Gist"

  depends_on macos: :sonoma

  app "Gist.app"

  # Note: user recordings in ~/Documents/Gist are deliberately left untouched.
  zap trash: [
    "~/Library/Preferences/com.vijaykas.gist.plist",
    "~/Library/Caches/com.vijaykas.gist",
    "~/Library/Application Support/com.vijaykas.gist",
  ]
end