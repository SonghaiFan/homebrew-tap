cask "leftopen" do
  version "0.2.0"
  sha256 "3f9c81b960e9daacfb3e6248d3f384a5ac5ff7bfaba6e01ffd66c7041b477585"

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
