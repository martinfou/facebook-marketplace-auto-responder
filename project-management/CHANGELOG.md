# Changelog

All notable changes to the project-management workflow are documented here.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

---

## [Unreleased]

### Added
- CI pipeline (GitHub Actions) for validation, lint, link check, script tests
- `glossary.md` excluded from forbidden-term lint (documents terms, does not use them)
- `test-scripts.sh` — test suite for scripts
- `validate-backlog-integrity.sh` — orphan detection, duplicate IDs, story points check
- `validate-mermaid.sh` — Mermaid diagram validation
- `visualize-dependencies.sh` — dependency graph generator
- `glossary.md` — single source of truth for terminology
- `.markdownlint.json` — markdown lint configuration
- Pre-commit hook for validation

---

## [1.0.0] - 2026-03-07

### Added
- Initial project-management workflow
- Backlog structure (user stories, defects, technical debt, retrospective improvements)
- Processes: backlog management, sprint planning, sprint review, sprint retrospective
- Definition of Done, Definition of Ready
- Documentation-Code Consistency Process
- Technical Debt Identification Process
- Release notes process
- Scripts: validate-backlog, check-links, backlog-metrics, prepare-gap-check, generate-release-notes-draft
- lint-project-management.sh
- Acceptance criteria for project naming conventions
