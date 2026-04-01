#!/bin/bash
# Pre-commit hook: validate project-management before commit.
# Install: cp project-management/scripts/pre-commit-hook.sh .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
# Run from project root.

cd "$(git rev-parse --show-toplevel)" || exit 1

# Only run if project-management or RELEASE_NOTES changed
if git diff --cached --name-only | grep -qE '^project-management/|^RELEASE_NOTES\.md$'; then
    echo "Running project-management validation..."
    if [ -f "project-management/scripts/validate-backlog.sh" ]; then
        ./project-management/scripts/validate-backlog.sh project-management/backlog || exit 1
    fi
    if [ -f "project-management/scripts/lint-project-management.sh" ]; then
        ./project-management/scripts/lint-project-management.sh || exit 1
    fi
fi

exit 0
