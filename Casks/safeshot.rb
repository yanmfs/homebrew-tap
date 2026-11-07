cask "safeshot" do
  version "0.1.0"
  sha256 "0703da6115b19c6328e567d9e6cb7970f46dfa1459ce1cac99aacd790b293c8d"

  url "https://github.com/yanmfs/Safe-Shot/releases/download/v#{version}/SafeShot_#{version}_universal.dmg"
  name "SafeShot"
  desc "Hide sensitive data in screenshots before sharing"
  homepage "https://github.com/yanmfs/Safe-Shot"

  depends_on :macos

  app "SafeShot.app"
end
