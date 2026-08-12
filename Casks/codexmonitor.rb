cask "codexmonitor" do
  version "0.7.8"
  sha256 "8c9efcdebbe0572e9262ad3209fe33f4fa53db9bc06b9ed26d325ceba77439f6"

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
