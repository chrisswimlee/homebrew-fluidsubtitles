# fluidSubtitles Homebrew tap

```bash
brew tap chrisswimlee/fluidsubtitles
brew install --cask fluidsubtitles
```

The cask installs the notarized GitHub Release zip. It does not install FluidVoice.

After a new `v*` release, from this checkout:

```bash
./update-cask.sh 1.6.12 /path/to/fluidSubtitles/dist/SHA256SUMS
```
