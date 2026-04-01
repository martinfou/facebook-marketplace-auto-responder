# User Story: US-009 - Extension Ingest and Outbox Loop

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do  
**Priority**: 🔴 Critical  
**Story Points**: 13  
**Created**: 2026-04-01  
**Updated**: 2026-04-01  
**Assigned Sprint**: Backlog

## Description

Build end-to-end extension ingest, outbox polling, and delivery result flow with idempotency and retries.

## User Story

As a seller, I want new buyer messages to sync reliably and approved responses to send automatically, so that I can scale response volume safely.

## Acceptance Criteria

- [ ] `POST /api/v1/threads/ingest` persists inbound messages idempotently.
- [ ] `GET /api/v1/extension/outbox` returns pending outbound payloads.
- [ ] `POST /api/v1/messages/{id}/delivery-result` updates send state.
- [ ] Duplicate ingest events do not create duplicate replies.
- [ ] Offline/5xx retries are handled without data loss.

## Dependencies

- US-006
- US-008

## Clarifying Questions

- **Q**: Accept polling-only for MVP or include WebSocket push to extension in v1?
- **A**: Polling-only for MVP.
- **Date**: 2026-04-01
- **Q**: Which browser targets are in MVP scope?
- **A**: Chrome only for MVP.
- **Date**: 2026-04-01

## History

- 2026-04-01 - Created
