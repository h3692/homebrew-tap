class ClaudeCodeDiscordSync < Formula
  desc "Mirror and control Claude Code sessions from Discord"
  homepage "https://github.com/h3692/claude-code-discord-sync"
  url "https://github.com/h3692/claude-code-discord-sync/releases/download/v0.2.0/claude-code-discord-sync-0.2.0.tgz"
  sha256 "6057f4113669bf752548b71d297f1395c0b6111e5414467d6e74d6983881a52d"
  license "MIT"

  depends_on "node"
  depends_on "tmux"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "setup", shell_output("#{bin}/claude-code-discord-sync --help")
  end
end
