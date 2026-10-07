cask "leftopen" do
  version "0.5.0"
  sha256 "1731d3e07f139779b34896bb1de99592e75c298adb6843c67081345b5464f649"

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
