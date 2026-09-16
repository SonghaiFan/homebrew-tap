cask "leftopen" do
  version "0.2.2"
  sha256 "30c8126238257769c14e84409542ecd94fc74de448bf2be26db8436577d9c4f4"

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
