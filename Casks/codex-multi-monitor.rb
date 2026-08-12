cask "codex-multi-monitor" do
  version "0.7.8"
  sha256 "8c9efcdebbe0572e9262ad3209fe33f4fa53db9bc06b9ed26d325ceba77439f6"

  url "https://github.com/HanryYu/codex_multi_monitor/releases/download/v#{version}/CodexMonitor-#{version}.dmg"
  name "CodexMonitor"
  desc "Monitor your ChatGPT Codex quota from the menu bar"
  homepage "https://github.com/HanryYu/codex_multi_monitor"

  conflicts_with cask: "hanryyu/tap/codexmonitor"
  depends_on macos: :sequoia

  app "CodexMonitor.app"

  zap trash: [
    "~/Library/Caches/com.hanryyu.CodexMonitor",
    "~/Library/Preferences/com.hanryyu.CodexMonitor.plist",
  ]
end
