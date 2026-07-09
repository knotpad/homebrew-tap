cask "knotpad" do
  version "1.6.2"

  on_intel do
    sha256 "e7b768957418725d086beb7ec6845cc167e3b9712ebeb6415788c6513afdc937"
    url "https://github.com/knotpad/homebrew-tap/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "9cf861d9df1068c7886de6a9f787ca2f187f5f67d761c1ab76468929dca84d58"
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
