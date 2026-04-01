# User Story: US-008 - Extension Pairing and Token Management

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do  
**Priority**: 🔴 Critical  
**Story Points**: 5  
**Created**: 2026-04-01  
**Updated**: 2026-04-01  
**Assigned Sprint**: Backlog

## Description

Implement secure device pairing and token lifecycle for the browser extension.

## User Story

As a seller, I want to pair my extension securely, so that only my authorized browser can sync and send messages.

## Acceptance Criteria

- [ ] Dashboard can issue/revoke extension tokens by device.
- [ ] Extension auth endpoint returns scoped token abilities.
- [ ] Expired/revoked tokens are rejected consistently.
- [ ] Device list with `last_seen_at` is visible in settings.

## Dependencies

- US-006

## Clarifying Questions

- **Q**: Preferred token TTL and rotation policy for extension devices?
- **A**: 30-day token lifetime for MVP.
- **Date**: 2026-04-01

## History

- 2026-04-01 - Created
