# Release Notes Process

**Related**: [Release Note Section Template](../templates/release-note-section-template.md), [Backlog Management Process](backlog-management-process.md)

## Overview

Release notes document changes for **users and developers** at the root of the project in `RELEASE_NOTES.md`. One entry per merge to main (or push). Date-based versioning.

**Location**: `RELEASE_NOTES.md` (project root, outside `project-management/`)

**Template and instructions**: See [release-note-section-template.md](../templates/release-note-section-template.md) for the section format and how to fill it out.

## When to Update

- **Each push/merge to main** — Add a new dated section
- **End of sprint** — Review and ensure all sprint changes are documented; run the draft script

## Release Note Structure

Each release section includes:

| Section | Content |
|---------|---------|
| **New Features** | Short title, short description, link to backlog (US-XXX) |
| **Defect Fixes** | Short title, short description, link to backlog (DEF-XXX) |
| **Technical Debt** | Short title, link to backlog (TD-XXX) — when applicable |
| **Breaking Changes** | If any; migration steps |
| **Migration Notes** | If any; upgrade instructions |

## Format

```markdown
## YYYY-MM-DD

### New Features
- **Title** — Short description. [US-XXX](../backlog/user-stories/US-XXX-*.md)

### Defect Fixes
- **Title** — Short description. [DEF-XXX](../backlog/defects/DEF-XXX-*.md)

### Breaking Changes
- (none this release)

### Migration Notes
- (none this release)
```

## Guidelines

- **Short titles** — One line, imperative mood
- **Short descriptions** — 1–2 sentences max
- **Link to backlog** — Use relative path to the backlog item file
- **Audience** — Write for both users (what changed) and developers (technical context when relevant)

## Automation

**Automatic mode** (no human involvement): Append directly to RELEASE_NOTES.md:

```bash
./project-management/scripts/generate-release-notes-draft.sh --auto
```

Or with more commits: `./project-management/scripts/generate-release-notes-draft.sh --auto 50`

The script parses recent commits for `US-XXX`, `DEF-XXX`, and `TD-XXX` patterns, then appends a new dated section to RELEASE_NOTES.md. Recommended for CI on merge to main or as a post-commit hook.

**Dry run** (preview without writing):

```bash
./project-management/scripts/generate-release-notes-draft.sh --dry-run
```

**Manual mode** (print draft to stdout; copy into RELEASE_NOTES.md):

```bash
./project-management/scripts/generate-release-notes-draft.sh
./project-management/scripts/generate-release-notes-draft.sh 50
```

## Checklist (End of Sprint)

- [ ] Run `./project-management/scripts/generate-release-notes-draft.sh --auto` (or manual mode)
- [ ] Add new section to `RELEASE_NOTES.md` with today's date (if not using --auto)
- [ ] Fill in New Features (from completed US-XXX)
- [ ] Fill in Defect Fixes (from completed DEF-XXX)
- [ ] Add Breaking Changes if any
- [ ] Add Migration Notes if any
- [ ] Commit release notes with the sprint/user story commits

## Example Entry

```markdown
## 2026-03-06

### New Features
- **AI Agent Configuration Files** — Added configuration files for AI agents. [US-001](../backlog/user-stories/US-001-ai-agent-configs.md)
- **Root-Level Release Notes** — Release notes moved to project root. [US-004](../backlog/user-stories/US-004-root-release-notes.md)

### Defect Fixes
- **Example Defect for Demo** — Fixed UI glitch in demo flow. [DEF-001](../backlog/defects/DEF-001-ui-glitch-fix.md)

### Breaking Changes
- (none this release)

### Migration Notes
- (none this release)
```

## Alternative: Semantic Versioning

For projects that ship releases with version numbers (e.g., v1.2.0), use semantic versioning instead of date-based headers:

```markdown
## v1.2.0 (2026-03-06)

### New Features
...
```

**Semantic versioning** (MAJOR.MINOR.PATCH):
- **MAJOR**: Breaking changes
- **MINOR**: New features, backward compatible
- **PATCH**: Defect fixes, backward compatible

Keep date-based versioning as the default; use semantic versioning when your project has formal releases or a changelog consumed by external tools.

---

**Last Updated**: 2026-03-06
