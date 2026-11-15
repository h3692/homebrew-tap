class ClaudeCodeDiscordSync < Formula
  desc "Mirror and control Claude Code sessions from Discord"
  homepage "https://github.com/h3692/claude-code-discord-sync"
  url "https://github.com/h3692/claude-code-discord-sync/releases/download/v0.1.0/claude-code-discord-sync-0.1.0.tgz"
  sha256 "11e4c32a6eb523d600ac0de05616df42baecfecc6a23acd6aaeea6b88e06943a"
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
