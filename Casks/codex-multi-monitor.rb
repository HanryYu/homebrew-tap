cask "codex-multi-monitor" do
  version "0.6.14"
  sha256 "e7554203deed5e73e7820180a26ee2431feca74916a1dd94ee9bb24fb99b964b"

  url "https://github.com/HanryYu/codex_multi_monitor/releases/download/v#{version}/CodexMonitor-#{version}.dmg",
      verified: "github.com/HanryYu/codex_multi_monitor/"
  name "CodexMonitor"
  desc "Monitor your ChatGPT Codex quota from the macOS menu bar"
  homepage "https://github.com/HanryYu/codex_multi_monitor"

  depends_on macos: :sequoia

  conflicts_with cask: "hanryyu/tap/codexmonitor"

  app "CodexMonitor.app"

  zap trash: [
    "~/Library/Preferences/com.hanryyu.CodexMonitor.plist",
    "~/Library/Caches/com.hanryyu.CodexMonitor",
  ]
end
