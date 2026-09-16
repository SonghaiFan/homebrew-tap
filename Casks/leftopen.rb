cask "leftopen" do
  version "0.2.1"
  sha256 "4d015968e2b747871c6a8383d86398d5ecad871a7a9c1b7971a64e30f3eda871"

  url "https://github.com/SonghaiFan/leftopen/releases/download/v#{version}/LeftOpen.zip"
  name "LeftOpen"
  desc "See what your tools left running on localhost"
  homepage "https://github.com/SonghaiFan/leftopen"

  depends_on macos: :sonoma

  app "LeftOpen.app"

  zap trash: [
    "~/Library/Saved Application State/app.leftopen.mac.savedState",
  ]
end
