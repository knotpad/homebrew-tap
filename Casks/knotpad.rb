cask "knotpad" do
  version "1.9.8"

  on_intel do
    sha256 "bab1b6ac087c26962b22036781b5bf894a99b5a99df3be007c3099b7eb1f47a4"
    url "https://github.com/knotpad/homebrew-tap/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "3205cee2080c163daf41235b24889a79d7fe5235a7aac3093f11f02ca5f395f2"
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
