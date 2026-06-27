cask "gist" do
  version "0.3.4"
  sha256 "ccdef634e02b0b8e47e82392341969ad0dfa62e4539787fc763b4f9359e60feb"

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