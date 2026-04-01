# Technical Debt Template

**Purpose**: Track technical debt items separately from user stories and defects. Use TD-XXX for refactoring, cleanup, or quality improvements that don't fit US-XXX or DEF-XXX.

**Optional**: Teams may instead track technical debt as US-XXX with a "Technical Debt" label. Use this template if you want a dedicated TD-XXX type.

**Identification**: See [technical-debt-identification-process.md](../processes/technical-debt-identification-process.md) for when and how to identify technical debt.

## Usage

1. Copy this template
2. Assign unique ID (TD-001, TD-002, ...)
3. Fill in all sections
4. Save to: `backlog/technical-debt/[ID]-[description].md` (create `technical-debt/` if needed)
5. Add entry to product backlog table (Technical Debt section, if using TD-XXX)

---

# Technical Debt: [ID] - [Short Description]

[← Back to Product Backlog](../product-backlog.md)

**Status**: ⭕ To Do | ⏳ In Progress | ✅ Done  
**Priority**: 🔴 Critical / 🟠 High / 🟡 Medium / 🟢 Low  
**Story Points**: [X] (Fibonacci: 1, 2, 3, 5, 8, 13)  
**Created**: [YYYY-MM-DD]  
**Updated**: [YYYY-MM-DD]  
**Assigned Sprint**: [Sprint Number or "Backlog"]

## Description

[What technical debt exists? What needs to be improved or refactored?]

## Impact

[Why does this matter? What risks or costs does it impose?]

## Proposed Solution

[How will this be addressed? High-level approach.]

## Acceptance Criteria

- [ ] Criterion 1
- [ ] Criterion 2

## Technical References

[Links to code, files, or areas affected.]

## Notes

[Additional context.]

## History

- [YYYY-MM-DD] - Created

---

**Last Updated**: 2026-03-06
