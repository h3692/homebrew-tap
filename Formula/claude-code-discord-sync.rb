class ClaudeCodeDiscordSync < Formula
  desc "Mirror and control Claude Code sessions from Discord"
  homepage "https://github.com/h3692/claude-code-discord-sync"
  url "https://github.com/h3692/claude-code-discord-sync/releases/download/v0.1.1/claude-code-discord-sync-0.1.1.tgz"
  sha256 "cc6979b7878b7295f01b66aa718ba58395fef9e8e8106b66e5eef0f312f4b119"
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
