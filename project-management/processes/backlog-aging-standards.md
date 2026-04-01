# Backlog Aging Standards

**Purpose**: Define default aging thresholds for backlog items. Items that exceed these thresholds may need attention during refinement or sprint planning.

**Related**: [Backlog Management Process](backlog-management-process.md), [backlog-metrics.sh](../scripts/backlog-metrics.sh)

---

## Default Thresholds (Best Practice)

| Priority | Max Days To Do | Action |
|----------|----------------------|--------|
| Critical | 3 | Alert; consider immediate sprint |
| High | 7 | Alert; prioritize next sprint |
| Medium | 14 | Warning |
| Low | 30 | Informational |

**Scope**: Applies to items with status ⭕ To Do. "Days" = days since Created date.

---

## Environment Overrides

The `backlog-metrics.sh` script supports configurable thresholds via environment variables:

| Variable | Default | Description |
|----------|---------|--------------|
| `BACKLOG_AGING_CRITICAL_DAYS` | 3 | Max days for Critical items To Do |
| `BACKLOG_AGING_HIGH_DAYS` | 7 | Max days for High items To Do |
| `BACKLOG_AGING_MEDIUM_DAYS` | 14 | Max days for Medium items To Do |
| `BACKLOG_AGING_LOW_DAYS` | 30 | Max days for Low items To Do |
| `BACKLOG_AGING_FAIL_CRITICAL` | 0 | If 1, exit 1 when Critical threshold exceeded |

**Example**:
```bash
BACKLOG_AGING_CRITICAL_DAYS=5 ./project-management/scripts/backlog-metrics.sh
```

---

## Integration

- **backlog-metrics.sh**: Outputs warnings when items exceed thresholds
- **Refinement**: Review aging items during backlog refinement
- **Sprint Planning**: Consider aging Critical/High items when selecting for sprint

---

**Last Updated**: 2026-03-06
