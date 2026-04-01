# Claude Code — repository instructions

## What this repo is
Auto-responder for Facebook Marketplace rental conversations (Quebec French context). Source of truth for product intent: `artifacts/requirements.md`, `artifacts/orchestration-definition.md`. Execution order and roles: `personas/`. Stack target: Laravel + Vue + browser extension.

## Project management structure
- **`project-management/INDEX.md`** — single entry for processes, file-attachment table, pre-commit AI workflow, link to MCP area.
- **Backlog**: `project-management/backlog/product-backlog.md`
- **Stories**: `project-management/backlog/user-stories/US-XXX-*.md`
- **Defects**: `project-management/backlog/defects/DEF-XXX-*.md`
- **Sprints**: `project-management/sprints/`
- **How we work**: `project-management/processes/`, `project-management/templates/`
- **Gates**: `project-management/criteria/definition-of-ready.md`, `project-management/criteria/definition-of-done.md`

When finishing work, satisfy DoD (including `RELEASE_NOTES.md` when appropriate) and the INDEX pre-commit steps for AI changes.

## Docs outside PM
General engineering documentation: `docs/` (see `docs/README.md`). Root overview: `README.md`.

## Git: commit message generation
Use **`project-management/processes/git-commit-guide.md`** and the repo commit template **`project-management/templates/git-commit-template.txt`** (`git config commit.template` should point there).

Every commit must include:
1. **Subject line**: `US-XXX:` or `DEF-XXX:` + imperative summary (entire first line ≤~72 chars; aim ~50 for the description part).  
   *Optional*: `type(scope): subject` (≤50 chars) with backlog reference in footer.
2. **Business paragraph**: impact and why.
3. **Technical bullets**: what changed in the codebase.
4. **Footer**: `Refs US-XXX` / `Refs DEF-XXX` or PR/issue ids.

## Edits
Stay within the user’s requested scope; match local naming and patterns.
