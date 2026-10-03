cask "codexmonitor" do
  version "0.7.14"
  sha256 "693397e043c24db05551dfb3be611ba972f5415aac5202cd9e9a5fdee91b885c"

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
