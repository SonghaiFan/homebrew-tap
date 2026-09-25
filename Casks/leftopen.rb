cask "leftopen" do
  version "0.3.5"
  sha256 "00b02aecf561acb4b6973de306fbf75c76ce65738477013de3b88fa6bdb0efa8"

  url "https://github.com/SonghaiFan/leftopen/releases/download/v#{version}/LeftOpen-release.zip"
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
