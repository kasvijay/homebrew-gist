cask "gist" do
  version "0.3.2"
  sha256 "d35ca31ebd4ebbcf87519be2cff8a95b52ffcd397553c372d42bad92356bfb2e"

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