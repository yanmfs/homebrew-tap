# Yan Suzano — Homebrew tap

## DevSwitch

```sh
brew install yanmfs/tap/devswitch
devswitch doctor
devswitch
```

DevSwitch alterna entre Claude Code e Codex com contexto persistente, execução exclusiva por projeto e painel de cotas no terminal. Requer macOS e os CLIs autenticados nas assinaturas do usuário.

Código-fonte, documentação e limitações: [yanmfs/devswitch](https://github.com/yanmfs/devswitch).

A fórmula fixa uma release e seu SHA-256. Não configura chaves de API, cobrança ou credenciais. `brew test yanmfs/tap/devswitch` verifica a persistência da configuração usando somente um projeto temporário.

Atualizar: `brew update` e `brew upgrade yanmfs/tap/devswitch`.
