cask "knotpad" do
  version "1.0.8"

  on_intel do
    sha256 "8ba4b308a13a3a853010a0b619dc23971159fd6f7a9e6550abc810966a59298d"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "5dbe6b9dbfe8089571dd2b018b7753fcb7dba37628ca2a355aa79e5906f6f51a"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_aarch64.dmg"
  end

  name "Knotpad"
  desc "Note-first project management with automatic task generation"
  homepage "https://knotpad.app"

  app "Knotpad.app"

  zap trash: [
    "~/Library/Application Support/knotpad",
    "~/Library/Preferences/app.knotpad.plist",
    "~/Library/Logs/knotpad",
  ]
end
