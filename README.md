# homebrew-disksweep

Homebrew tap for [DiskSweep](https://github.com/vinicios-gomes/DiskSweep), a native macOS disk cleaner.

```bash
brew install --cask vinicios-gomes/disksweep/disksweep
```

Upgrade with `brew upgrade --cask disksweep`; remove with `brew uninstall --cask --zap disksweep`.

The cask follows the newest GitHub Release of DiskSweep (a workflow checks every 6 hours). DiskSweep is
ad-hoc signed and not notarized, so the cask clears the download quarantine flag after installing.
