# Product Backlog

This is the main product backlog tracking all user stories and defects.

**Last Updated**: 2026-04-01

**Active Sprint**: [Sprint 1: AI Workflow Foundation](../sprints/sprint-01-ai-workflow-foundation.md)

## User Stories

| ID | Title | Priority | Points | Status | Sprint | Created | Updated |
|----|-------|----------|--------|--------|--------|---------|---------|
| [US-005](user-stories/US-005-test-mcp-integration.md) | Test MCP Integration | 🟢 Low | 1 | ✅ | - | 2026-03-08 | 2026-03-31 |
| [US-001](user-stories/US-001-ai-agent-configs.md) | AI Agent Configuration Files | 🔴 Critical | 2 | ✅ | [Sprint 1](../sprints/sprint-01-ai-workflow-foundation.md) | 2026-02-14 | 2026-03-31 |
| [US-002](user-stories/US-002-init-git-commit-rules.md) | Git Initialization and Commit Standards | 🟠 High | 3 | ✅ | [Sprint 1](../sprints/sprint-01-ai-workflow-foundation.md) | 2026-02-14 | 2026-03-31 |
| [US-003](user-stories/US-003-root-docs-folder.md) | Root-Level Docs Folder | 🟡 Medium | 1 | ✅ | [Sprint 1](../sprints/sprint-01-ai-workflow-foundation.md) | 2026-03-06 | 2026-03-31 |
| [US-004](user-stories/US-004-root-release-notes.md) | Root-Level Release Notes | 🟠 High | 2 | ✅ | [Sprint 1](../sprints/sprint-01-ai-workflow-foundation.md) | 2026-03-06 | 2026-03-31 |
| [US-006](user-stories/US-006-org-auth-multi-tenant-foundation.md) | Organization Auth and Multi-Tenant Foundation | 🔴 Critical | 8 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-007](user-stories/US-007-property-listing-knowledge-base-crud.md) | Property, Listing, and Knowledge Base CRUD | 🔴 Critical | 8 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-008](user-stories/US-008-extension-pairing-and-token-management.md) | Extension Pairing and Token Management | 🔴 Critical | 5 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-009](user-stories/US-009-extension-ingest-outbox-loop.md) | Extension Ingest and Outbox Loop | 🔴 Critical | 13 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-010](user-stories/US-010-conversation-orchestration-worker.md) | Conversation Orchestration Worker (LLM + State) | 🔴 Critical | 13 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-011](user-stories/US-011-review-queue-approve-edit-send.md) | Review Queue Approve/Edit/Send Workflow | 🔴 Critical | 8 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-012](user-stories/US-012-screening-scoring-thresholds.md) | Screening Scoring and Threshold Policies | 🟠 High | 8 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-013](user-stories/US-013-dashboard-conversations-properties-ui.md) | Dashboard Conversations and Properties UI | 🟠 High | 13 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-014](user-stories/US-014-analytics-events-rollups-overview.md) | Analytics Events, Rollups, and Overview API | 🟠 High | 8 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |
| [US-015](user-stories/US-015-observability-security-compliance-baseline.md) | Observability, Security, and Compliance Baseline | 🟠 High | 5 | ⭕ | Backlog | 2026-04-01 | 2026-04-01 |

## Defects

| ID | Title | Priority | Points | Status | Sprint | Created | Updated |
|----|-------|----------|--------|--------|--------|---------|---------|
| [DEF-001](defects/DEF-001-ui-glitch-fix.md) | Example Defect for Demo | 🟢 Low | 1 | ✅ | [Sprint 1](../sprints/sprint-01-ai-workflow-foundation.md) | 2026-02-14 | 2026-03-31 |

## Technical Debt

| ID | Title | Priority | Points | Status | Sprint | Created | Updated |
|----|-------|----------|--------|--------|--------|---------|---------|

## Retrospective Improvements

| ID | Description | Owner | Due Sprint | Status |
|----|-------------|-------|------------|--------|

---

## Status Values

- ⭕ **To Do**: In backlog; may or may not be assigned to a sprint. No work has begun.
- ⏳ **In Progress**: Work has started (e.g. first task in progress). Assigned to active sprint.
- ✅ **Done**: All acceptance criteria met; Documentation-Code Consistency Check run; human approved.

## Priority Levels

- 🔴 **Critical**: Blocks core functionality, must be fixed/implemented immediately
- 🟠 **High**: Important feature/defect, should be addressed soon
- 🟡 **Medium**: Nice to have, can wait
- 🟢 **Low**: Future consideration, low priority

## Notes

- User story details: See `user-stories/US-XXX-*.md` files
- Defect details: See `defects/DEF-XXX-*.md` files
- Technical debt details: See `technical-debt/TD-XXX-*.md` files
- Retrospective improvements: See `retrospective-improvements/RI-XXX-*.md` files (from retrospectives)
- Sprint assignments: See `../sprints/sprint-XX-*.md` files (if using sprint planning)

## Backlog Statistics

*Run `./project-management/scripts/backlog-metrics.sh --stats` to generate this section.*

**Total Items**: 16  
**By Status**:
- ⭕ To Do: 10
- ⏳ In Progress: 0
- ✅ Done: 6

**By Priority**:
- 🔴 Critical: 6
- 🟠 High: 6
- 🟡 Medium: 1
- 🟢 Low: 2

**Total Story Points**: 88
