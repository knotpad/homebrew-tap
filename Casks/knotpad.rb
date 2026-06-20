cask "knotpad" do
  version "0.2.4"

  on_intel do
    sha256 "26a941800e3dce7c0caa907b05cb07ed7d9f1a60e8327793dfe91195c7d657dc"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "868bb1ebb9dcd843d1024122e4a446c3b16e9584e412ef10421b8073f7e27ce3"
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
