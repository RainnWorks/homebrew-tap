# RainnWorks Homebrew tap

```sh
brew install --cask rainnworks/tap/pinch
```

| Name | What | Kind |
|---|---|---|
| [pinch](https://github.com/RainnWorks/pinch) | AirPods stem presses as keyboard shortcuts | cask |

Each app's release workflow updates its file here with `scripts/bump.sh`. Apps
that update themselves through Sparkle are marked `auto_updates true`, so
`brew upgrade` leaves them to their own updater.

## Add an app

1. Add `Casks/<app>.rb` (Mac app) or `Formula/<tool>.rb` (command-line tool).
2. In the app's release workflow, after the release is published, check out this
   repo with `secrets.RW_TAP_DEPLOY_KEY` and run
   `scripts/bump.sh <file> <version> <sha256>`, then commit and push.
