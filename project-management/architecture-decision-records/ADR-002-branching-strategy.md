# Architecture Decision Record 002: Branching Strategy

**Status**: Accepted  
**Date**: 2026-03-07

## Context

The workflow lacked a defined branching strategy. Without one, commits can land directly on `main`, making it harder to review work, isolate changes, and keep `main` always deployable. For a solo developer with AI assistance, we need a simple, low-overhead strategy that still provides structure and traceability.

## Decision

**Use a simple feature-branch strategy:**

- **`main`** — Always deployable, protected. Only receives changes via Pull Request (PR) from feature branches.
- **`feature/US-XXX-short-description`** — One branch per user story. Work for a given user story happens on its feature branch; when complete, open a PR to merge into `main`.

### Branch Naming

- Format: `feature/US-XXX-short-description` (e.g. `feature/US-042-add-user-auth`)
- Use the user story ID for traceability
- Keep the description short and kebab-case

### Workflow

1. Create a feature branch from `main` when starting work on a user story
2. Commit on the feature branch using the [Git Commit Guide](../processes/git-commit-guide.md)
3. When the story is complete, open a PR to merge into `main`
4. Review (self-review for solo dev), merge, then delete the feature branch

## Consequences

- **Positive**: `main` stays deployable; changes are isolated and reviewable; clear traceability from branch to user story; simple enough for solo + AI workflow.
- **Negative**: Slightly more overhead than committing directly to `main`; requires PR discipline.
- **Neutral**: Aligns with [Git Commit Guide](../processes/git-commit-guide.md) and [Sprint Planning Process](../processes/sprint-planning-process.md).

---

**Related**: [Git Commit Guide](../processes/git-commit-guide.md), [Sprint Planning Process](../processes/sprint-planning-process.md)
