cask "caudex" do
  version "0.1.52"
  sha256 "399ec25cd949605d22890499bb66b772d760e0a33a9ed3320f57996f9f177611"

  url "https://pub-02c02c1ba3544333ba81a9ac9ca269ef.r2.dev/aarch64-apple-darwin/dmg/Caudex_#{version}_aarch64.dmg"
  name "Caudex"
  desc "GUI for managing Claude Code sessions, git, and MCP servers"
  homepage "https://caudex.sh/"

  # Upstream ships Apple Silicon only as of 0.1.52 (no x86_64 darwin build).
  depends_on arch: :arm64
  depends_on :macos

  app "Caudex.app"

  uninstall delete: "/Applications/Caudex.app"

  zap trash: [
    "~/Library/Application Support/Caudex",
    "~/Library/Caches/Caudex",
    "~/Library/Preferences/com.caudex.app.plist",
  ]
end
