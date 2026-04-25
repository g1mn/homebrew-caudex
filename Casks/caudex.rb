cask "caudex" do
  version "0.1.49"
  
  on_arm do
    sha256 "42ead55a7b3db615c41dd90b4f6ecfae9b7aa1df1abe52d74b97cee110fc96e4"
    url "https://pub-02c02c1ba3544333ba81a9ac9ca269ef.r2.dev/aarch64-apple-darwin/dmg/Caudex_#{version}_aarch64.dmg"
  end
  
  on_intel do
    sha256 "9eb52ee46c7ab5ea4ca0982415da99fded1b7d7354f75e50847bdae6cb44eb66"
    url "https://pub-02c02c1ba3544333ba81a9ac9ca269ef.r2.dev/x86_64-apple-darwin/dmg/Caudex_#{version}_x86_64.dmg"
  end
  
  name "Caudex"
  desc "Modern GUI for Claude Code sessions - manage sessions, git integration, MCP servers, and more"
  homepage "https://caudex.sh"
  
  app "Caudex.app"
  
  uninstall delete: "/Applications/Caudex.app"
  
  zap trash: [
    "~/Library/Application Support/Caudex",
    "~/Library/Preferences/com.caudex.app.plist",
    "~/Library/Caches/Caudex",
  ]
end
