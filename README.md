# Ferramentas do Yan pelo Homebrew

## Instalar

| Projeto | Comando |
| --- | --- |
| [DevSwitch](https://github.com/yanmfs/DevSwitch) | `brew install yanmfs/tap/devswitch` |
| [SlideReady](https://github.com/yanmfs/SlideReady) | `brew install --cask yanmfs/tap/slideready` |
| [CleanCopy](https://github.com/yanmfs/CleanCopy) | `brew install --cask yanmfs/tap/cleancopy` |
| [SafeShot](https://github.com/yanmfs/SafeShot) | `brew install --cask yanmfs/tap/safeshot` |
| [EvidencePack](https://github.com/yanmfs/EvidencePack) | `brew install --cask yanmfs/tap/evidencepack` |

Os quatro aplicativos usam os instaladores universais das releases, para Apple Silicon e Intel. Abra pela pasta Aplicativos depois de instalar. As instruções de primeira abertura estão no README de cada projeto.

O perfil `yanmfs` e o `Sistema-cobranca` não fazem parte deste tap.

## DevSwitch

```sh
brew install yanmfs/tap/devswitch
devswitch doctor
devswitch
```

DevSwitch alterna entre Claude Code e Codex com contexto persistente, execução exclusiva por projeto e painel de cotas no terminal. Requer macOS e os CLIs autenticados nas assinaturas do usuário.

Código-fonte, documentação e limitações: [yanmfs/DevSwitch](https://github.com/yanmfs/DevSwitch).

A fórmula e os casks fixam a versão e o SHA-256 dos arquivos. Não configuram chaves de API, cobrança ou credenciais. `brew test yanmfs/tap/devswitch` verifica a persistência da configuração usando somente um projeto temporário. Os casks instalam os aplicativos sem abrir ou apagar dados e preferências.

Para atualizar, rode `brew update` e depois `brew upgrade yanmfs/tap/devswitch` para o comando, ou `brew upgrade --cask yanmfs/tap/NOME` para um app. Para desinstalar um app, use `brew uninstall --cask yanmfs/tap/NOME`.
