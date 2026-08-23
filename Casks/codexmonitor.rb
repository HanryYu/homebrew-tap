cask "codexmonitor" do
  version "0.7.10"
  sha256 "1722a241ebc1a3a463408f2fca3bdcc68735fb90a39e3775a25f64fa4f39b05a"

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
