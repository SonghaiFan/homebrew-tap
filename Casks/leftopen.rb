cask "leftopen" do
  version "0.4.1"
  sha256 "b2a1a64d3fac33faadfc8be9ec58baca664a6ff1dea73873a3a83a6842b6204f"

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
