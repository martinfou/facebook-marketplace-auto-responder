# Facebook Marketplace Auto-Responder

Automation for Facebook Marketplace rental conversations (Montreal / Longueuil, Quebec French). Product goals and domain constraints are captured under [`artifacts/requirements.md`](artifacts/requirements.md).

## Repository layout

| Path | Purpose |
|------|---------|
| [`artifacts/`](artifacts/) | Requirements, organization schema, orchestration definition |
| [`personas/`](personas/) | Ordered role prompts for multi-agent workflows |
| [`docs/`](docs/) | Product and technical docs **outside** the PM system ([`docs/README.md`](docs/README.md)) |
| [`project-management/`](project-management/) | Backlog, sprints, processes, templates — start at [`project-management/INDEX.md`](project-management/INDEX.md) |
| [`mcp-project-management/`](mcp-project-management/) | MCP server package for PM workflow integration ([README](mcp-project-management/README.md)) |
| [`RELEASE_NOTES.md`](RELEASE_NOTES.md) | Release history |

## AI assistants

Cursor, GitHub Copilot, Antigravity, and Claude Code pick up context from the root agent config files (`.cursorrules`, `.github/copilot-instructions.md`, `.agent/instructions.md`, `.claudecode/instructions.md`).

## Git commits

Use [`project-management/processes/git-commit-guide.md`](project-management/processes/git-commit-guide.md). Recommended:

```bash
git config commit.template project-management/templates/git-commit-template.txt
```
