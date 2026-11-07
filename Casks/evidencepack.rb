cask "evidencepack" do
  version "0.1.0"
  sha256 "388c0c4e83b968ad27075c63040071185bcc95c6211a669a7b1d051af297b853"

  url "https://github.com/yanmfs/EvidencePack/releases/download/v#{version}/EvidencePack_#{version}_universal.dmg"
  name "EvidencePack"
  desc "Organize screenshots and receipts into PDF reports"
  homepage "https://github.com/yanmfs/EvidencePack"

  depends_on :macos

  app "EvidencePack.app"
end
