cask "codexmonitor" do
  version "0.7.12"
  sha256 "826cf88f1a44dc75f21ffa4b1c7e735d66f31843b6d9c8a9d76bf2f1864a0d89"

  url "https://github.com/HanryYu/codex_multi_monitor/releases/download/v#{version}/CodexMonitor-#{version}.dmg"
  name "CodexMonitor"
  desc "Monitor your ChatGPT Codex quota from the menu bar"
  homepage "https://github.com/HanryYu/codex_multi_monitor"

  conflicts_with cask: "hanryyu/tap/codex-multi-monitor"
  depends_on macos: :sequoia

  app "CodexMonitor.app"

  zap trash: [
    "~/Library/Caches/com.hanryyu.CodexMonitor",
    "~/Library/Preferences/com.hanryyu.CodexMonitor.plist",
  ]

  caveats <<~EOS
    The short token `codexmonitor` conflicts with Homebrew/homebrew-cask.
    Prefer the conflict-free tap token:
      brew install --cask HanryYu/tap/codex-multi-monitor
  EOS
end
