cask "codexmonitor" do
  version "0.6.3"
  sha256 "ad0a3a3534b75faf4e98147f060606930dadc61553850ba9da0cf7eba5414cc0"

  url "https://github.com/HanryYu/codex_multi_monitor/releases/download/v#{version}/CodexMonitor-#{version}.dmg",
      verified: "github.com/HanryYu/codex_multi_monitor/"
  name "CodexMonitor"
  desc "Monitor your ChatGPT Codex quota from the macOS menu bar"
  homepage "https://github.com/HanryYu/codex_multi_monitor"

  depends_on macos: :sequoia

  app "CodexMonitor.app"

  zap trash: [
    "~/Library/Preferences/com.hanryyu.CodexMonitor.plist",
    "~/Library/Caches/com.hanryyu.CodexMonitor",
  ]
end
