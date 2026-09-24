cask "leftopen" do
  version "0.3.4"
  sha256 "24fd0b379f4b01739f04d5e09c74cd19aaa72dee45d3a3b16dab46bf0a5ebd6d"

  url "https://github.com/SonghaiFan/leftopen/releases/download/v#{version}/LeftOpen.zip"
  name "LeftOpen"
  desc "See what your tools left running on localhost"
  homepage "https://github.com/SonghaiFan/leftopen"

  depends_on macos: :sonoma

  app "LeftOpen.app"
  binary "#{appdir}/LeftOpen.app/Contents/MacOS/leftopen"

  zap trash: [
    "~/Library/Saved Application State/app.leftopen.mac.savedState",
  ]
end
