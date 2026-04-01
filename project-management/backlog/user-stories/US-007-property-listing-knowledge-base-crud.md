# User Story: US-007 - Property, Listing, and Knowledge Base CRUD

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do  
**Priority**: 🔴 Critical  
**Story Points**: 8  
**Created**: 2026-04-01  
**Updated**: 2026-04-01  
**Assigned Sprint**: Backlog

## Description

Build property/listing CRUD and structured knowledge base fields used by the LLM and review UI.

## User Story

As a seller, I want to configure each property and listing with accurate screening and visit data, so that automated responses stay factual.

## Acceptance Criteria

- [ ] CRUD endpoints for properties and listings are available under `/api/v1`.
- [ ] KB fields include rent, availability, policies, visits, contacts.
- [ ] Listing URL can be linked to property and updated.
- [ ] Dashboard forms validate required fields and show errors.
- [ ] KB update invalidates cached property context.

## Dependencies

- US-006

## Clarifying Questions

- **Q**: Which KB fields are mandatory at MVP create-time vs optional?
- **A**: Minimal required fields only for activation: nickname, rent, availability date.
- **Date**: 2026-04-01

## History

- 2026-04-01 - Created
