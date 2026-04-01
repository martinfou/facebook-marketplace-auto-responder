# Copilot instructions — Facebook Marketplace Auto-Responder

## Product context
Rental Marketplace automation (Quebec / French context). See `artifacts/requirements.md`, `artifacts/orchestration-definition.md`, and `personas/`. Target stack: Laravel + Vue + browser extension.

## Project management workflow
- **Entry point**: `project-management/INDEX.md` — sprint/backlog processes, which docs to attach, pre-commit flow for AI work.
- **Backlog**: `project-management/backlog/product-backlog.md`
- **Work items**: `project-management/backlog/user-stories/US-XXX-*.md`, `project-management/backlog/defects/DEF-XXX-*.md`
- **Sprints**: `project-management/sprints/`
- **Processes & templates**: `project-management/processes/`, `project-management/templates/`
- **Done / Ready**: `project-management/criteria/definition-of-done.md`, `project-management/criteria/definition-of-ready.md`

Use the INDEX pre-commit flow (documentation–code consistency, technical debt scan, human approval, DoD) before treating work as complete.

## General documentation
Non-PM technical write-ups belong under `docs/` (see `docs/README.md`).

## Git commits
Mandatory format: `project-management/processes/git-commit-guide.md`. Repo uses commit template at `project-management/templates/git-commit-template.txt`.

- **Subject**: `US-XXX:` or `DEF-XXX:` + imperative summary (≤~72 chars total; prefer ≤~50 for the descriptive part).  
  *Optional*: `type(scope): subject` (≤50 chars) + `Refs US-XXX` in footer.
- **Body**: Business paragraph, then technical bullets, then footer with refs.

## Code changes
Keep edits scoped to the requested story or fix; align with surrounding code style.
