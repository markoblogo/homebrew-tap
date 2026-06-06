# Markoblogo Tap

Homebrew tap for the ABVX/Markoblogo CLI toolchain.

## Install

Install directly:

```bash
brew install markoblogo/tap/<formula>
```

Or add the tap once and install by short name:

```bash
brew tap markoblogo/tap
brew install <formula>
```

## Available tools

| Formula | Primary command | What it does | Upstream |
| --- | --- | --- | --- |
| `agentsgen` | `agentsgen` | Generates and safely updates `AGENTS.md`, `RUNBOOK.md`, and AI-readable repo artifacts for coding agents. | [markoblogo/AGENTS.md_generator](https://github.com/markoblogo/AGENTS.md_generator) |
| `abvx-set` | `set-plan-config-apply`, `set-validate-registry` | Orchestration and registry tooling for the SET control plane. | [markoblogo/SET](https://github.com/markoblogo/SET) |
| `id-protocol` | `idctl` | Portable human-AI context protocol tooling and validators. | [markoblogo/ID](https://github.com/markoblogo/ID) |

## Brewfile example

```ruby
tap "markoblogo/tap"
brew "agentsgen"
brew "abvx-set"
brew "id-protocol"
```
