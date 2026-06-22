cask "knotpad" do
  version "1.0.7"

  on_intel do
    sha256 "485b6ec56e776959667a0656017b9f4d13823cbafb48e32c65879e6a7bd5f253"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "1fd382e350a6b95f3aa0725cd824a6fab5db34d4e96c62d4895df1d268448c55"
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
