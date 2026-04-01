# Release Note Section Template

**Purpose**: Template for a single release section in `RELEASE_NOTES.md` at the project root. Use this when adding a new release entry manually or when editing auto-generated content.

**Related**: [Release Notes Process](../processes/release-notes-process.md), [RELEASE_NOTES.md](../../RELEASE_NOTES.md)

---

## How to Fill Out

1. **Date header**: Use `YYYY-MM-DD` (date of release or merge to main)
2. **New Features**: For each completed US-XXX, add a line with title, short description, and link to the user story file
3. **Defect Fixes**: For each completed DEF-XXX, add a line with title, short description, and link to the defect file
4. **Technical Debt**: For each completed TD-XXX (if applicable), add a line with title and link
5. **Breaking Changes**: List any breaking changes with migration steps; use "(none this release)" if none
6. **Migration Notes**: List upgrade instructions if needed; use "(none this release)" if none

**Tips**:
- Keep titles to one line, imperative mood ("Add X" not "Added X")
- Descriptions: 1–2 sentences max
- Always link to the backlog item file
- Write for both users (what changed) and developers (technical context when relevant)

---

## Template (Copy into RELEASE_NOTES.md)

```markdown
## YYYY-MM-DD

### New Features
- **[User story title]** — [Short description of what was added and why it matters]. [US-XXX](../backlog/user-stories/US-XXX-*.md)

### Defect Fixes
- **[Defect fix title]** — [Short description of what was fixed]. [DEF-XXX](../backlog/defects/DEF-XXX-*.md)

### Technical Debt
- **[Technical debt title]** — [Short description if needed]. [TD-XXX](../backlog/technical-debt/TD-XXX-*.md)
*(Omit this section if no TD items this release)*

### Breaking Changes
- (none this release)
*Or list each breaking change with migration steps*

### Migration Notes
- (none this release)
*Or list upgrade instructions*
```

---

## Example

```markdown
## 2026-03-06

### New Features
- **AI Agent Configuration Files** — Added Cursor, Claude Code, and GitHub Copilot instruction files for consistent AI-assisted development. [US-001](../backlog/user-stories/US-001-ai-agent-configs.md)
- **Git commit standards** — Standardized commit format with US-XXX/DEF-XXX subject and business/technical body. [US-002](../backlog/user-stories/US-002-init-git-commit-rules.md)

### Defect Fixes
- **Example defect placeholder** — Demo defect entry for template validation. [DEF-001](../backlog/defects/DEF-001-ui-glitch-fix.md)

### Technical Debt
- (none this release)

### Breaking Changes
- (none this release)

### Migration Notes
- (none this release)
```

---

## Automation

To auto-generate a draft and append to RELEASE_NOTES.md:

```bash
./project-management/scripts/generate-release-notes-draft.sh --auto
```

To preview without writing:

```bash
./project-management/scripts/generate-release-notes-draft.sh --dry-run
```

---

**Last Updated**: 2026-03-06
