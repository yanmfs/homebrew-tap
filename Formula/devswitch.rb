# Generated from the reviewed release asset by scripts/update_homebrew.py.
class Devswitch < Formula
  include Language::Python::Virtualenv

  desc "Switch safely between Claude Code and Codex with persistent context"
  homepage "https://github.com/yanmfs/devswitch"
  url "https://github.com/yanmfs/devswitch/releases/download/v1.3.0/devswitch-1.3.0.tar.gz"
  version "1.3.0"
  sha256 "358d8d82df321a94bb83e29f281184284331f9ae66916f08f198c08df446bf83"
  license "MIT"

  depends_on :macos
  depends_on "python@3.14"

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/ef/55/6dc6d6bb953bdfc52519a0059592c52b6e3b8ad51cf8256dffceb55b0610/setuptools-84.2.1-py3-none-any.whl"
    sha256 "ca140b45d5325a9478f880e351484f62fef15f336462e449ca0c03c873d589c2"
  end

  def install
    venv = virtualenv_create(libexec, "python3.14")
    venv.pip_install resource("setuptools"), build_isolation: false
    venv.pip_install_and_link buildpath, build_isolation: false
  end

  def caveats
    <<~EOS
      Install Claude Code and Codex CLI separately and sign in with your subscriptions.
      Run `devswitch doctor` to check both integrations, then `devswitch` in your project.
      No API keys or additional paid APIs are configured by DevSwitch.
    EOS
  end

  test do
    assert_match "devswitch 1.3.0", shell_output("#{bin}/devswitch --version")
    system bin/"devswitch", "-C", testpath, "--first", "codex", "--claude-effort", "high", "config"
    settings = JSON.parse(shell_output("#{bin}/devswitch -C #{testpath} config --json"))
    assert_equal "codex", settings.fetch("primary")
    assert_equal "high", settings.fetch("agents").fetch("claude").fetch("effort")
  end
end
