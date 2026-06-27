cask "knotpad" do
  version "1.2.11"

  on_intel do
    sha256 "cb92dd3e8b4018cb815bb32467b9ae00f12cdfc56a1d3f062e86b98c5c5e8e86"
    url "https://github.com/knotpad/homebrew-tap/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "d1db977b041c9e510d3c706c536824089ff815214a5a85bf3ec33fce568dad47"
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
