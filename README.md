# Skheiller's Homebrew tap

Install [Howr](https://github.com/Skheiller/howr), the hourly menu-bar chime for macOS 14 or later:

```sh
brew install --cask skheiller/tap/howr
```

This is an independent tap, not the official Homebrew cask catalog. Casks pin versioned release downloads and SHA-256 checksums.

Howr is ad-hoc signed and is not Apple-notarized. On first launch, macOS may require **System Settings → Privacy & Security → Open Anyway**. The cask leaves quarantine and Gatekeeper intact. See [Apple's instructions](https://support.apple.com/102445).

Quit Howr before an upgrade. Turn off **Launch at login** in Howr Settings before uninstalling.

```sh
brew update && brew upgrade --cask skheiller/tap/howr
brew uninstall --cask skheiller/tap/howr
```

App source and issues: [Skheiller/howr](https://github.com/Skheiller/howr). Tap definitions use the [MIT license](LICENSE).
