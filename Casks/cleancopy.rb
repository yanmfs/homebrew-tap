cask "cleancopy" do
  version "0.1.0"
  sha256 "1a3665cae6fbe0bba7a7a34be627334601c2d4e1cd1774b389a97e1e0dba724a"

  url "https://github.com/yanmfs/CleanCopy/releases/download/v#{version}/CleanCopy_#{version}_universal.dmg"
  name "CleanCopy"
  desc "Clean line breaks and hyphenation in text copied from PDFs"
  homepage "https://github.com/yanmfs/CleanCopy"

  depends_on :macos

  app "CleanCopy.app"
end
