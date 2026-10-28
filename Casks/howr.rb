cask "howr" do
  version "1.0.0"
  sha256 "ea7def443b39cd8d40337571c137d1606cf63834b923bef222c1ae398e3d66bd"

  url "https://github.com/Skheiller/howr/releases/download/v#{version}/Howr-#{version}-universal.zip"
  name "Howr"
  desc "Hourly chime for the Mac menu bar"
  homepage "https://lmostafa.dev/howr"

  depends_on macos: ">= :sonoma"

  app "Howr.app"

  uninstall quit: "app.howr.Howr"

  zap trash: [
    "~/Library/Application Support/Howr",
    "~/Library/Preferences/app.howr.Howr.plist",
  ]

  caveats <<~EOS
    Howr is ad-hoc signed and is not Apple-notarized.
    If blocked on first launch, review System Settings > Privacy & Security > Open Anyway.
    This cask does not disable Gatekeeper or remove quarantine.
    Turn off Launch at login in Howr Settings before uninstalling.
  EOS
end
