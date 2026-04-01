# User Story: US-014 - Analytics Events, Rollups, and Overview API

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do  
**Priority**: 🟠 High  
**Story Points**: 8  
**Created**: 2026-04-01  
**Updated**: 2026-04-01  
**Assigned Sprint**: Backlog

## Description

Implement analytics event capture, daily rollups, Redis counters, and overview/timeseries endpoints for dashboard metrics.

## User Story

As a seller, I want actionable performance metrics, so that I can tune templates, screening, and operations.

## Acceptance Criteria

- [ ] Domain events are recorded in `analytics_events`.
- [ ] Daily rollup job writes org and per-property aggregates.
- [ ] Overview endpoint returns current stats and period deltas.
- [ ] Timeseries endpoint supports `hour|day` granularity.
- [ ] Retention jobs enforce analytics retention policy.

## Dependencies

- US-010
- US-013

## Clarifying Questions

- **Q**: Do you want weekly email reports in MVP or defer to post-MVP?
- **A**: Defer weekly email reports to post-MVP; MVP needs overview cards + basic trends.
- **Date**: 2026-04-01
- **Q**: What trend window should MVP analytics support?
- **A**: Last 7 and 30 days.
- **Date**: 2026-04-01

## History

- 2026-04-01 - Created
