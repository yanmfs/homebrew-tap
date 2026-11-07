cask "slideready" do
  version "0.1.0"
  sha256 "03a15dd492a9d1db781ddc5951d3d5d49fcf926f5554ce464b10ed9f8b49a4f5"

  url "https://github.com/yanmfs/SlideReady/releases/download/v#{version}/SlideReady_#{version}_universal.dmg"
  name "SlideReady"
  desc "Check a PowerPoint presentation before presenting"
  homepage "https://github.com/yanmfs/SlideReady"

  depends_on :macos

  app "SlideReady.app"
end
