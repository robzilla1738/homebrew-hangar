cask "hangar" do
  version "0.1.0"
  sha256 "6252dd4204974a4204653b4e8c9831ba684afa302a61691f9a66dcd00b6b6b9b"
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
