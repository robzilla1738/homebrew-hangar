cask "hangar" do
  version "0.1.1"
  sha256 "2160a54f15992f7c35f177925140042707e16ca06e8cd10cb9616bea932c26ed"
  url "https://github.com/robzilla1738/hangar/releases/download/v#{version}/Hangar-#{version}.dmg"
  name "Hangar"
  desc "Native macOS terminal for managing agentic CLI workflows"
  homepage "https://github.com/robzilla1738/hangar"

  depends_on macos: ">= :sequoia"

  app "Hangar.app"

  zap trash: [
    "~/Library/Application Support/Hangar",
    "~/Library/Preferences/dev.robcourson.hangar.plist",
    "~/Library/Caches/dev.robcourson.hangar",
    "~/.config/hangar",
  ]
end
