cask "knotpad" do
  version "1.0.6"

  on_intel do
    sha256 "63c7ae2b6fe80dbfc8a725cf581440b9782e055a01841f4e5cd1e2ca72802f75"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "a6fe72280cb3db19171d387d63cf7b3d38ebfb9c951be6a0b92a08468eb69dc3"
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
