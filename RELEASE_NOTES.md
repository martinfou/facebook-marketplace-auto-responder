# Release notes

Change history for this repository. Add a new dated section for each release or merge to `main`.

**How to write an entry**: use [project-management/templates/release-note-section-template.md](project-management/templates/release-note-section-template.md) and [project-management/processes/release-notes-process.md](project-management/processes/release-notes-process.md).

## 2026-03-31

### New Features

- **Root-level release notes** — Added this file at the repository root with links to the section template and release process; verified existing template, process links, and `generate-release-notes-draft.sh`. [US-004](project-management/backlog/user-stories/US-004-root-release-notes.md)
- **AI agent configuration** — Root instructions for Cursor (`.cursorrules`), GitHub Copilot, Antigravity, and Claude Code, including `project-management/` workflow summary. [US-001](project-management/backlog/user-stories/US-001-ai-agent-configs.md)
- **Git commit standards** — Commit message preset in agent configs; local `git config commit.template` set to `project-management/templates/git-commit-template.txt`. [US-002](project-management/backlog/user-stories/US-002-init-git-commit-rules.md)
- **Docs layout** — `docs/README.md` plus root `README.md` describing repository structure. [US-003](project-management/backlog/user-stories/US-003-root-docs-folder.md)
- **MCP integration** — Runnable stdio MCP server under `mcp-project-management/` with `npm run verify` (tools `pm_ping`, `create_user_story_fixture`). [US-005](project-management/backlog/user-stories/US-005-test-mcp-integration.md)
- **MCP documentation** — `mcp-project-management/README.md` updated for editor configuration and verification.

### Defect Fixes

- **Example defect workflow** — Confirmed DEF-001 as the reference defect for Sprint 1 demo. [DEF-001](project-management/backlog/defects/DEF-001-ui-glitch-fix.md)

### Technical Debt

- (none this release)

### Breaking Changes

- (none this release)

### Migration Notes

- (none this release)
