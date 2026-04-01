# Antigravity / agent instructions

## Repository purpose
Facebook Marketplace auto-responder for rental workflows (Montreal area, French). High-level requirements: `artifacts/requirements.md`. Personas: `personas/`. Planned implementation: Laravel backend, Vue frontend, browser extension.

## `project-management/` (backlog, sprints, quality)
1. Open **`project-management/INDEX.md`** first for AI task routing (processes, attachments, mermaid workflow, MCP note).
2. **Backlog**: `project-management/backlog/product-backlog.md`
3. **User stories**: `project-management/backlog/user-stories/US-XXX-*.md`
4. **Defects**: `project-management/backlog/defects/DEF-XXX-*.md`
5. **Sprints**: `project-management/sprints/sprint-XX-*.md`
6. **Processes / templates**: `project-management/processes/`, `project-management/templates/`
7. **DoR / DoD**: `project-management/criteria/definition-of-ready.md`, `project-management/criteria/definition-of-done.md`

For AI-assisted commits, follow the INDEX **Pre-Commit Flow** (doc–code consistency, technical debt scan, approval, DoD).

## `docs/` folder
Use `docs/` for product/architecture/API documentation outside the PM system. See `docs/README.md`.

## Git commit preset
All changes must follow **`project-management/processes/git-commit-guide.md`**. The repository should use:

`git config commit.template project-management/templates/git-commit-template.txt`

**Format**
- **Subject**: `US-XXX:` or `DEF-XXX:` + imperative description (first line ≤~72 chars; keep wording tight, ~50 chars when possible).  
  *Alternate*: Conventional Commits `type(scope): subject` (≤50 chars) with `Refs US-XXX` in the footer.
- **Paragraph**: Business value / why.
- **Bullets**: Technical changes.
- **Footer**: `Refs US-XXX` or issue links.

## Implementation style
Small, focused diffs; do not refactor unrelated code or add unsolicited markdown docs.
