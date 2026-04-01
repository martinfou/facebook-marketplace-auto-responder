# Project Management Scripts

Scripts for validating backlog structure, preparing Documentation-Code Consistency Check, generating release notes, and checking links. Run from project root.

## Available Scripts

### validate-backlog.sh

Validates backlog structure, file naming conventions (US-XXX, DEF-XXX, TD-XXX), and cross-references. Runs check-links.sh.

**Usage:**
```bash
./project-management/scripts/validate-backlog.sh [backlog-directory]
```

**Default:** `project-management/backlog`

**Example:**
```bash
./project-management/scripts/validate-backlog.sh
./project-management/scripts/validate-backlog.sh project-management/backlog
```

### prepare-gap-check.sh

Prepares context for the Documentation-Code Consistency Check. Lists changed files and outputs a reminder.

**Usage:**
```bash
./project-management/scripts/prepare-gap-check.sh
```

**See:** [processes/doc-code-consistency-process.md](../processes/doc-code-consistency-process.md)

### generate-release-notes-draft.sh

Generates a draft for RELEASE_NOTES.md by parsing recent commits for US-XXX, DEF-XXX, and TD-XXX patterns.

**Usage:**
```bash
./project-management/scripts/generate-release-notes-draft.sh [N]           # Print to stdout
./project-management/scripts/generate-release-notes-draft.sh --auto [N]   # Append to RELEASE_NOTES.md
./project-management/scripts/generate-release-notes-draft.sh --dry-run [N]  # Preview without writing
```

**Arguments:** N = number of commits to scan (default: 20)

**Example:**
```bash
./project-management/scripts/generate-release-notes-draft.sh
./project-management/scripts/generate-release-notes-draft.sh --auto 50
```

**See:** [processes/release-notes-process.md](../processes/release-notes-process.md)

### backlog-metrics.sh

Computes backlog health metrics: items by status (US, DEF, TD), aging, cycle time, story points, velocity, throughput, and aging threshold alerts.

**Usage:**
```bash
./project-management/scripts/backlog-metrics.sh [options] [backlog-directory] [sprints-directory]
```

**Options:**
- `--stats` or `-s` — Output Backlog Statistics section in markdown format for pasting into product-backlog.md

**Default:** backlog: `project-management/backlog`, sprints: `project-management/sprints`

**Aging thresholds** (override via env): See [processes/backlog-aging-standards.md](../processes/backlog-aging-standards.md). Example: `BACKLOG_AGING_CRITICAL_DAYS=5 ./project-management/scripts/backlog-metrics.sh`

**Example:**
```bash
./project-management/scripts/backlog-metrics.sh
./project-management/scripts/backlog-metrics.sh --stats   # Output stats block for product-backlog.md
```

### lint-project-management.sh

Runs anal-level checks: backlog validation, link check, forbidden terminology (bug, grooming, PBI, tech debt, WIP), and newline-at-EOF.

**Usage:**
```bash
./project-management/scripts/lint-project-management.sh
```

### check-links.sh

Checks for broken markdown links in project-management markdown files. By default validates the entire `project-management/` tree (processes, templates, sprints, criteria, backlog, etc.).

**Usage:**
```bash
./project-management/scripts/check-links.sh [scan-directory] [base-directory]
```

**Default:** scan: `project-management`, base: `.`

**Example:**
```bash
./project-management/scripts/check-links.sh
./project-management/scripts/check-links.sh project-management .
./project-management/scripts/check-links.sh project-management/backlog .
```

**Note:** Template files may contain intentional placeholder links (e.g. `user-stories/US-001-story-name.md`) or paths that are correct when the template is copied to its target location (e.g. `../product-backlog.md` in user-story-template, which resolves correctly when the file is in `backlog/user-stories/`). The link checker skips these cases for templates.

### validate-backlog-integrity.sh

Checks backlog integrity: orphan references, missing files, duplicate IDs, and Fibonacci story points.

**Usage:**
```bash
./project-management/scripts/validate-backlog-integrity.sh [backlog-directory]
```

**Default:** `project-management/backlog`

### validate-mermaid.sh

Extracts Mermaid blocks from markdown files and validates syntax. Uses `mmdc` (mermaid-cli) if installed; otherwise reports blocks without validation.

**Usage:**
```bash
./project-management/scripts/validate-mermaid.sh [directory]
```

**Default:** `project-management`

### visualize-dependencies.sh

Generates a Mermaid flowchart of dependencies between user stories and defects. Output to stdout; paste into a .md file or [mermaid.live](https://mermaid.live).

**Usage:**
```bash
./project-management/scripts/visualize-dependencies.sh [backlog-directory]
```

**Default:** `project-management/backlog`

### test-scripts.sh

Runs the script test suite: validate-backlog, check-links, lint-project-management, backlog-metrics, validate-backlog-integrity, and negative test for validate-backlog.

**Usage:**
```bash
./project-management/scripts/test-scripts.sh
```

### pre-commit-hook.sh

Template for a pre-commit hook. Copy to `.git/hooks/pre-commit` and make executable to run validation before each commit.

**Install:**
```bash
cp project-management/scripts/pre-commit-hook.sh .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

## Pre-commit Hook

Add to `.git/hooks/pre-commit` (run from project root):

```bash
#!/bin/bash
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

## Making Scripts Executable

```bash
chmod +x project-management/scripts/*.sh
```
