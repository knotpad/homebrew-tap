cask "knotpad" do
  version "0.2.5"

  on_intel do
    sha256 "6b46146fba89e95f60d42774effbe044069b610f11d5b74330cf53983003417e"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "4d052e280a4f65cf1d4368e6ef69b41ae5dcf5d2063a85fdf3e58f2f1374b1e0"
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
