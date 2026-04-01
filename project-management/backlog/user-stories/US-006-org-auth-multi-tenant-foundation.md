# User Story: US-006 - Organization Auth and Multi-Tenant Foundation

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do  
**Priority**: 🔴 Critical  
**Story Points**: 8  
**Created**: 2026-04-01  
**Updated**: 2026-04-01  
**Assigned Sprint**: Backlog

## Description

Implement tenant-safe authentication and organization scoping as the platform foundation for all subsequent features.

## User Story

As a seller, I want my organization data isolated from other organizations, so that conversations, properties, and analytics are private and secure.

## Acceptance Criteria

- [ ] Laravel Sanctum auth supports dashboard session login/logout.
- [ ] Every tenant-owned model includes `organization_id` and policy enforcement.
- [ ] API requests return 404/403 when cross-tenant IDs are accessed.
- [ ] Extension token abilities are scoped to extension operations only.
- [ ] Automated test coverage includes at least 3 cross-tenant authorization tests.
- [ ] MVP RBAC includes only Admin/Member/Viewer role checks across API and UI routes.

## Business Value

This story de-risks security and enables all core MVP functionality safely.

## Technical Requirements

- Reference: `artifacts/backend-api-spec.md`, `artifacts/system-architecture.md`
- Implement org scope middleware/policies and model scopes.

## Dependencies

- None

## Clarifying Questions

- **Q**: Will MVP support one seller user per organization or multiple roles from day one?
- **A**: Multiple roles from day one, but minimal RBAC in MVP (Admin/Member/Viewer). Full granular permissions deferred.
- **Date**: 2026-04-01

## History

- 2026-04-01 - Created
