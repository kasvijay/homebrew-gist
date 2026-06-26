cask "gist" do
  version "0.3.3"
  sha256 "9e41cb6109280e2513904cf7ab7903b2a2c6ee63cbc952672131dd69b722fa46"

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