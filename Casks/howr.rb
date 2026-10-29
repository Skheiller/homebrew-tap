cask "howr" do
  version "1.0.2"
  sha256 "08b8d5631ec86f78160ebb88d8e8a0db8bcd14447bbc89d99641d30d38fadd55"

  url "https://github.com/Skheiller/howr/releases/download/v#{version}/Howr-#{version}-homebrew.zip"
  name "Howr"
  desc "Hourly chime for the Mac menu bar"
  homepage "https://lmostafa.dev/howr"

  depends_on macos: :sonoma

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
