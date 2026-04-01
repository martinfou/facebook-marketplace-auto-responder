#!/bin/bash
# Script Test Suite
# Tests validate-backlog, check-links, backlog-metrics, lint for basic functionality.
# Run from project root.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
BACKLOG_DIR="$PROJECT_ROOT/project-management/backlog"

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

PASSED=0
FAILED=0

run_test() {
    local name="$1"
    local cmd="$2"
    if (cd "$PROJECT_ROOT" && eval "$cmd" > /dev/null 2>&1); then
        echo -e "${GREEN}✓${NC} $name"
        PASSED=$((PASSED+1))
        return 0
    else
        echo -e "${RED}✗${NC} $name"
        FAILED=$((FAILED+1))
        return 1
    fi
}

echo "=== Script Test Suite ==="
echo ""

# validate-backlog: should pass with valid backlog
run_test "validate-backlog.sh passes with valid backlog" \
    "./project-management/scripts/validate-backlog.sh project-management/backlog"

# check-links: should pass
run_test "check-links.sh passes" \
    "./project-management/scripts/check-links.sh project-management ."

# lint-project-management: should pass
run_test "lint-project-management.sh passes" \
    "./project-management/scripts/lint-project-management.sh"

# backlog-metrics: should run without error
run_test "backlog-metrics.sh runs" \
    "./project-management/scripts/backlog-metrics.sh project-management/backlog project-management/sprints"

# backlog-metrics --stats: should output markdown
run_test "backlog-metrics.sh --stats outputs markdown" \
    "grep -q 'Backlog Statistics' < <(./project-management/scripts/backlog-metrics.sh --stats project-management/backlog project-management/sprints)"

# validate-backlog-integrity: should pass
run_test "validate-backlog-integrity.sh passes" \
    "./project-management/scripts/validate-backlog-integrity.sh project-management/backlog"

# validate-backlog: should fail gracefully with missing dir
run_test "validate-backlog.sh fails on missing backlog dir" \
    "! ./project-management/scripts/validate-backlog.sh /nonexistent/backlog 2>/dev/null"

# visualize-dependencies: should run without error
run_test "visualize-dependencies.sh runs" \
    "./project-management/scripts/visualize-dependencies.sh project-management/backlog"

echo ""
echo "=========================================="
echo "Passed: $PASSED | Failed: $FAILED"
if [ $FAILED -gt 0 ]; then
    exit 1
fi
exit 0
