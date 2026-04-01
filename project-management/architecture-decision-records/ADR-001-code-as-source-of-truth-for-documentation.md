# Architecture Decision Record 001: Code as Source of Truth for Documentation

**Status**: Accepted  
**Date**: 2026-03-06

## Context

When AI-assisted development produces code changes, documentation (README, process docs, backlog items) can drift out of sync. Discrepancies cause confusion, wasted effort, and incorrect assumptions. We need a clear rule for resolving conflicts between code and documentation.

## Decision

**Code is the source of truth** for factual discrepancies between code and documentation. When the Documentation-Code Consistency Check identifies contradictions (code says X, docs say Y), the code is authoritative. The human reviews the gap report and decides what to update; documentation is updated to match code, not the reverse.

## Consequences

- **Positive**: Single source of truth reduces ambiguity; developers and AI can trust that code reflects actual behavior; documentation stays aligned with implementation.
- **Negative**: Documentation may lag behind code until the gap check runs; requires discipline to run the check before commit.
- **Neutral**: Process is documented in [doc-code-consistency-process.md](../processes/doc-code-consistency-process.md).

---

**Related**: [Documentation-Code Consistency Process](../processes/doc-code-consistency-process.md), [Backlog Management Process](../processes/backlog-management-process.md)
