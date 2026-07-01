# HanryYu Homebrew Tap

This tap uses `codex-multi-monitor` for CodexMonitor because Homebrew's
official cask repository also has a separate `codexmonitor` cask. Always use
the fully qualified token below to avoid installing the wrong app.

## Install

```bash
brew install --cask HanryYu/tap/codex-multi-monitor
```

## Upgrade

```bash
brew upgrade --cask HanryYu/tap/codex-multi-monitor
```

## Migrate from the old tap token

```bash
brew uninstall --cask HanryYu/tap/codexmonitor
brew install --cask HanryYu/tap/codex-multi-monitor
```

## Uninstall

```bash
brew uninstall --cask HanryYu/tap/codex-multi-monitor
brew untap HanryYu/tap
```
