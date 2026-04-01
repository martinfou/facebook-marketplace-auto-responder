# Documentation-Code Consistency Process

**Purpose**: Ensure documentation stays aligned with code before commit. The AI checks code against documentation, generates a gap report, and requires human review. Code is the source of truth; the human decides what to keep and what to update. This process is also referred to as the **Documentation-Code Consistency Check** in the Definition of Done.

**Related**: [Backlog Management Process](backlog-management-process.md)

## When to Run

- **AI-assisted work**: When the AI thinks it is done coding, it must run this check before the user commits. The AI also runs the [Technical Debt Identification Scan](technical-debt-identification-process.md) at the same time.
- **Manual run**: A developer can run this anytime for early feedback (e.g., "Generate Documentation-Code Consistency Check report for my changes").

## Process

1. **AI compares** code (scripts, config, source files) with documentation (project-management/, README, backlog items, process docs).
2. **AI generates** a gap report with:
   - Out-of-date docs
   - Contradictions (code says X, docs say Y)
   - Illogical statements
3. **Code is the source of truth** for factual discrepancies.
4. **AI presents** the report to the human.
5. **Human decides**: update docs to match code, or keep docs as-is (with rationale).
6. **AI updates** documentation only per human direction.
7. **Commit proceeds** only after human approval.

## Gap Report Format

Use this structure when generating the report:

```markdown
## Documentation-Code Consistency Report - [Date]

### Out of Date
- [File]: [What is outdated] - Suggested: [Update]

### Contradictions
- Code says X (in [file]); Docs say Y (in [file]) - Code is truth

### Illogical Statements
- [File]: [Statement] - [Why illogical]

### Human Decisions
- [To be filled after human review]
```

## Scope

**Code** (source of truth):
- Shell scripts (`*.sh`)
- Config files (`*.yaml`, `*.json`, etc.)
- Source code (`*.sh`, `*.js`, `*.ts`, etc.)
- Agent config files (`.cursorrules`, `.github/copilot-instructions.md`, etc.)

**Documentation** (checked for alignment):
- `project-management/` (backlog, user-stories, defects, sprints, processes, templates, criteria)
- `README.md` and other root docs
- `project-management/` docs and examples

## Pre-commit Integration

A pre-commit hook can run `prepare-gap-check.sh` to list changed files and remind you to run the consistency check. See [project-management/scripts/README.md](../scripts/README.md) for setup.

**Example pre-commit hook** (add to `.git/hooks/pre-commit`):

```bash
#!/bin/bash
# Validate backlog and remind about Documentation-Code Consistency Check

cd "$(git rev-parse --show-toplevel)" || exit 1

if [ -f "project-management/scripts/validate-backlog.sh" ]; then
    ./project-management/scripts/validate-backlog.sh project-management/backlog
    if [ $? -ne 0 ]; then
        echo "Backlog validation (including link check) failed. Commit aborted."
        exit 1
    fi
fi

if [ -f "project-management/scripts/prepare-gap-check.sh" ]; then
    ./project-management/scripts/prepare-gap-check.sh
fi

exit 0
```

## Manual Run

To run the consistency check manually, ask the AI:

> "Generate a Documentation-Code Consistency Check report for my changes. Compare the code with the documentation and identify out-of-date docs, contradictions, and illogical statements."

Or run the prepare script for context:

```bash
./project-management/scripts/prepare-gap-check.sh
```

---

**Last Updated**: 2026-03-06
