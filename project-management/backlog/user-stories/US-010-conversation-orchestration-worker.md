# User Story: US-010 - Conversation Orchestration Worker (LLM + State)

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do  
**Priority**: 🔴 Critical  
**Story Points**: 13  
**Created**: 2026-04-01  
**Updated**: 2026-04-01  
**Assigned Sprint**: Backlog

## Description

Implement asynchronous LLM orchestration that assembles prompts, validates structured output, and updates conversation state.

## User Story

As a seller, I want each conversation turn processed with consistent state logic and safety rules, so that responses are accurate and review routing is predictable.

## Acceptance Criteria

- [ ] Worker loads transcript, KB context, and thresholds before LLM call.
- [ ] LLM output JSON schema is validated; invalid payloads trigger fallback review.
- [ ] Conversation state transitions match defined state machine.
- [ ] Escalation (`none|review|block_auto_send`) is persisted and acted on.
- [ ] Prompt assembly is server-side only; no provider keys in extension.

## Dependencies

- US-007
- US-009

## Clarifying Questions

- **Q**: Which LLM provider/model should be used first in MVP (and fallback provider)?
- **A**: Provider-agnostic abstraction from day one; provider selection can be configured by environment.
- **Date**: 2026-04-01
- **Q**: What should happen when daily org LLM budget is reached?
- **A**: Hard limit in MVP: stop auto generation after budget is reached.
- **Date**: 2026-04-01

## History

- 2026-04-01 - Created
