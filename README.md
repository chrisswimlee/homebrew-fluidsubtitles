# fluidSubtitles Homebrew tap

macOS 15 or later, Apple Silicon. The cask installs the notarized GitHub Release zip. It does not install FluidVoice.

```bash
brew tap chrisswimlee/fluidsubtitles
brew trust chrisswimlee/fluidsubtitles
brew install --cask fluidsubtitles
```

Homebrew asks for that trust once because this is a personal tap.

Or download [fluidsubtitles-1.6.12.zip](https://github.com/chrisswimlee/fluidSubtitles/releases/download/v1.6.12/fluidsubtitles-1.6.12.zip), unzip it, and drag **fluidSubtitles** to Applications. Open Theater, allow the microphone, then press **Listen**.

- [Release 1.6.12](https://github.com/chrisswimlee/fluidSubtitles/releases/tag/v1.6.12)
- [Product page](https://chrisswimlee.com/fluidSubtitles)
- [For work](https://chrisswimlee.com/fluidSubtitles/license/)

Personal use stays free. If IT or legal need a named license or an SLA, use the For work page.

After a new `v*` release, from this checkout:

```bash
./update-cask.sh 1.6.12 /path/to/fluidSubtitles/dist/SHA256SUMS
```
