cask "gist" do
  version "0.3.6"
  sha256 "ac00f6151a69df3e901b21dbf48cd7009521121a45eb88dbf01e290fa8c17aa2"

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