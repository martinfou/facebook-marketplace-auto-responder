# Product Backlog Structure

**Related**: [Product Backlog Template](../templates/product-backlog-template.md), [Backlog Management Process](backlog-management-process.md)

## Overview

This document defines the structure and templates for the product backlog, including user stories and defects. The backlog is managed using markdown files with structured templates.

## Backlog Organization

### Backlog File Structure

```
project-management/
├── backlog/
│   ├── product-backlog.md (main backlog file)
│   ├── user-stories/
│   │   ├── US-001-story-name.md
│   │   ├── US-002-story-name.md
│   │   └── ...
│   ├── defects/
│   │   ├── DEF-001-defect-description.md
│   │   ├── DEF-002-defect-description.md
│   │   └── ...
│   ├── technical-debt/  (optional)
│   │   ├── TD-001-description.md
│   │   └── ...
│   └── retrospective-improvements/
│       ├── RI-001-description.md
│       └── ...
├── sprints/
│   └── sprint-XX-*.md
├── processes/
├── templates/
├── criteria/
├── architecture-decision-records/
└── prompts.md
```

**Note**: Adjust file paths and ID format (US-XXX, DEF-XXX, TD-XXX) to match your project structure. Technical debt (TD-XXX) is optional; teams may instead track technical debt as US-XXX with a "Technical Debt" label.

## Product Backlog Table

### Main Backlog Table Format

See [../templates/product-backlog-template.md](../templates/product-backlog-template.md) for the complete table template.

The main backlog table tracks:
- User Stories (with status, priority, points, sprint assignment)
- Defects (with status, priority, points, sprint assignment)
- Technical Debt (optional; TD-XXX with same columns if adopted)

### Status Values

- ⭕ **To Do**: In backlog; may or may not be assigned to a sprint. No work has begun.
- ⏳ **In Progress**: Work has started (e.g. first task in progress). Assigned to active sprint.
- ✅ **Done**: All acceptance criteria met; Documentation-Code Consistency Check run; human approved.

### Priority Levels

- 🔴 **Critical**: Blocks core functionality, must be fixed immediately
- 🟠 **High**: Important feature/defect, should be addressed soon
- 🟡 **Medium**: Nice to have, can wait
- 🟢 **Low**: Future consideration, low priority

## User Story Template

### User Story Form

See [../templates/user-story-template.md](../templates/user-story-template.md) for the complete template.

**Key Sections**:
- Status, Priority, Story Points, Dates
- Description
- User Story (As a... I want... So that...)
- Acceptance Criteria
- Business Value
- Technical Requirements
- Reference Documents
- Technical References
- Dependencies
- Notes
- History

**ID Format**: US-XXX (or your custom format)

**File Path**: `backlog/user-stories/US-XXX-story-name.md`

## Defect Template

### Defect Form

See [../templates/defect-template.md](../templates/defect-template.md) for the complete template.

**Key Sections**:
- Status, Priority, Story Points, Dates
- Description
- Steps to Reproduce
- Expected Behavior
- Actual Behavior
- Environment
- Screenshots/Logs
- Technical Details
- Root Cause
- Solution
- Reference Documents
- Technical References
- Testing Checklist
- Notes
- History

**ID Format**: DEF-XXX (or your custom format)

**File Path**: `backlog/defects/DEF-XXX-defect-description.md`

## Technical Debt Template (Optional)

See [../templates/technical-debt-template.md](../templates/technical-debt-template.md) for the complete template.

**ID Format**: TD-XXX

**File Path**: `backlog/technical-debt/TD-XXX-description.md`

**When to use**: Refactoring, cleanup, or quality improvements that don't fit US-XXX or DEF-XXX. Alternatively, track technical debt as US-XXX with a "Technical Debt" label.

**Identification**: See [technical-debt-identification-process.md](technical-debt-identification-process.md) for when and how to identify technical debt.

## Backlog Dependency Management

### Dependency Sorting

The backlog should be sorted by dependencies before prioritizing. This ensures that:
- Items with no dependencies are ready to start
- Prerequisites are completed before dependent items
- Sprint planning can select items without blocking dependencies

**Sorting Process**:
1. Review all backlog items and their dependencies
2. Create a dependency graph
3. Sort items so prerequisites come first
4. Within the same dependency level, sort by priority

**Example**:
- US-001: User Authentication (no dependencies) → First
- US-002: User Profile (depends on US-001) → Second
- US-003: User Settings (depends on US-002) → Third

## Backlog Prioritization

### Prioritization Criteria

1. **Business Value**: How important is this to users?
2. **Technical Risk**: How risky is the implementation?
3. **Dependencies**: What other work depends on this? (Sort by dependencies first, then prioritize within dependency levels)
4. **Effort**: How much work is required?
5. **Urgency**: How time-sensitive is this?

**Note**: Prioritization happens within each dependency level after sorting by dependencies.

### Priority Matrix

| Priority | Business Value | Technical Risk | Urgency |
|----------|----------------|----------------|---------|
| 🔴 Critical | High | Low-Medium | Immediate |
| 🟠 High | High | Medium | Soon |
| 🟡 Medium | Medium | Low-Medium | Normal |
| 🟢 Low | Low | Low | Future |

## Backlog Refinement

### Refinement Process

1. **Review Backlog**: Review all backlog items
2. **Clarify Requirements**: Ensure items are well-defined
3. **Estimate Points**: Assign story points using Fibonacci
4. **Identify Dependencies**: Document all dependencies for each item
5. **Sort by Dependencies**: Order backlog so items with dependencies come after prerequisites
6. **Prioritize**: Order items by priority (within same dependency level)
7. **Break Down**: Split large items into smaller tasks
8. **Update Status**: Update status of items

### Refinement Checklist

- [ ] Item has clear description
- [ ] Acceptance criteria are defined
- [ ] Story points are estimated
- [ ] Priority is assigned
- [ ] Technical references are included
- [ ] Dependencies are identified
- [ ] Business value is documented

## Story Points Estimation

### Fibonacci Sequence

Use Fibonacci sequence for story point estimation:
- **1 Point**: Trivial task, < 1 hour
- **2 Points**: Simple task, 1-4 hours
- **3 Points**: Small task, 4-8 hours
- **5 Points**: Medium task, 1-2 days
- **8 Points**: Large task, 2-3 days
- **13 Points**: Very large task, 3-5 days (should be broken down)

### Estimation Factors

Consider:
- **Complexity**: How complex is the task?
- **Uncertainty**: How much is unknown?
- **Effort**: How much work is required?
- **Risk**: What are the risks?

## Template Usage

### Creating a New User Story

1. Copy the User Story Template from [../templates/user-story-template.md](../templates/user-story-template.md)
2. Assign unique ID: US-XXX (use next available number)
3. Fill in all required fields
4. Save to: `backlog/user-stories/US-XXX-story-name.md`
5. Add entry to `backlog/product-backlog.md` table

### Creating a New Defect

1. Copy the Defect Template from [../templates/defect-template.md](../templates/defect-template.md)
2. Assign unique ID: DEF-XXX (use next available number)
3. Fill in all required fields, especially:
   - Steps to reproduce
   - Expected vs. actual behavior
   - Environment details
4. Save to: `backlog/defects/DEF-XXX-defect-description.md`
5. Add entry to `backlog/product-backlog.md` table

### Creating a Technical Debt Item (Optional)

1. Copy the Technical Debt Template from [../templates/technical-debt-template.md](../templates/technical-debt-template.md)
2. Assign unique ID: TD-XXX (use next available number)
3. Fill in description, impact, proposed solution, and acceptance criteria
4. Save to: `backlog/technical-debt/TD-XXX-description.md`
5. Add entry to `backlog/product-backlog.md` table (Technical Debt section)

### Creating a New Sprint

1. Copy the Sprint Planning Template from [../templates/sprint-planning-template.md](../templates/sprint-planning-template.md)
2. Update sprint number: `sprint-XX-*.md`
3. Fill in sprint header (goal, duration, velocity, dates)
4. Add user stories from backlog
5. Break down into tasks
6. Save to: `sprints/sprint-XX-sprint-name.md`

## File Naming Conventions

### User Stories
- Format: `US-XXX-story-name.md`
- Example: `US-001-user-authentication.md`
- Use kebab-case for story names

### Defects
- Format: `DEF-XXX-defect-description.md`
- Example: `DEF-001-login-crash-on-special-chars.md`
- Use kebab-case for descriptions

### Sprints
- Format: `sprint-XX-sprint-name.md`
- Example: `sprint-01-foundation.md`
- Use zero-padding for numbers (01, 02, etc.)

## Best Practices

### Writing Good Backlog Items

1. **Clear Titles**: Descriptive, concise (50 characters or less)
2. **User Stories**: Follow "As a... I want... So that..." format
3. **Acceptance Criteria**: Specific, testable, measurable
4. **Technical References**: Link to code, docs, specs
5. **Business Value**: Explain why it matters

### Managing Backlog

1. **Keep It Updated**: Regular refinement and status updates
2. **Prioritize Regularly**: Review priorities frequently
3. **Break Down Large Items**: Keep items manageable (aim for < 8 points)
4. **Document Decisions**: Record why items are prioritized
5. **Communicate Changes**: Keep team informed of updates

## References

- **User Story Template**: [../templates/user-story-template.md](../templates/user-story-template.md)
- **Defect Template**: [../templates/defect-template.md](../templates/defect-template.md)
- **Product Backlog Template**: [../templates/product-backlog-template.md](../templates/product-backlog-template.md)
- **Sprint Planning Template**: [../templates/sprint-planning-template.md](../templates/sprint-planning-template.md)
- **Backlog Management Process**: [backlog-management-process.md](backlog-management-process.md)

---

**Last Updated**: 2026-03-06  
**Version**: 1.0  
**Status**: Product Backlog Structure Complete

