cask "knotpad" do
  version "1.9.28"

  on_intel do
    sha256 "391de362ec9c58d6250b064d0be3bd00dc3738e9c985d1319414bfd831d18f38"
    url "https://github.com/knotpad/homebrew-tap/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "4e62514cea9e7cf5f6fac8520a8cedc5d7617083933b75f339c43ae3d0d29e5f"
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
