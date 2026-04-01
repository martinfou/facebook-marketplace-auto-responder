# User Story: US-011 - Review Queue Approve/Edit/Send Workflow

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do  
**Priority**: 🔴 Critical  
**Story Points**: 8  
**Created**: 2026-04-01  
**Updated**: 2026-04-01  
**Assigned Sprint**: Backlog

## Description

Create dashboard review queue with approve, edit, reject, and send actions for flagged messages.

## User Story

As a seller, I want a fast review queue for flagged messages, so that I can keep control over sensitive conversations without delaying responses too much.

## Acceptance Criteria

- [ ] Review queue list supports filters and sort by age/reason.
- [ ] Conversation detail view shows draft, context, score, and state.
- [ ] Approve/edit/reject updates task status and message audit trail.
- [ ] Approve-and-send triggers outbox delivery path.
- [ ] Queue SLA metrics are emitted for analytics.

## Dependencies

- US-010
- US-013

## Clarifying Questions

- **Q**: Do you want bulk approve actions in MVP or single-item review only?
- **A**: Bulk approve and bulk reject are required in MVP.
- **Date**: 2026-04-01
- **Q**: What review queue SLA target should MVP track?
- **A**: 60 minutes.
- **Date**: 2026-04-01

## History

- 2026-04-01 - Created
