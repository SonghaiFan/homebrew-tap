cask "leftopen" do
  version "0.2.0"
  sha256 "601f26b90ede20060b73b10eabc56f586902e6b9808c010b394a7a4dc3096af4"

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
