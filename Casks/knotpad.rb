cask "knotpad" do
  version "1.9.22"

  on_intel do
    sha256 "8b67ed0af22a6f467c90eb50bd4f20f1eae98a5e32c10ccfdfb6e895dd444b21"
    url "https://github.com/knotpad/homebrew-tap/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "d61583484306dccccccc687605cb141fab5a73f458a7c3e5dbbbde89d84bb68e"
    url "https://github.com/knotpad/homebrew-tap/releases/download/v#{version}/knotpad_#{version}_aarch64.dmg"
  end

  name "Knotpad"
  desc "Note-first project management with automatic task generation"
  homepage "https://knotpad.app"

  auto_updates true

  app "Knotpad.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Knotpad.app"]
  end

  zap trash: [
    "~/Library/Application Support/knotpad",
    "~/Library/Preferences/app.knotpad.plist",
    "~/Library/Logs/knotpad",
  ]
end
