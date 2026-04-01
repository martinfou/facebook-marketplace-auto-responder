---
template_version: 1.1.0
last_updated: 2026-03-06
compatible_with: [user-story, defect, sprint-planning]
requires: [markdown-support]
---

# Product Backlog Table Template

This template provides the structure for your main product backlog tracking table. This table provides a high-level overview of all user stories and defects.

## Usage

1. Copy this template to create your `product-backlog.md` file
2. Update the table as items are added, modified, or completed
3. Keep the table sorted by priority (Critical → High → Medium → Low)
4. Update "Last Updated" date when making changes

---

# Product Backlog

This is the main product backlog tracking all user stories and defects.

**Last Updated**: YYYY-MM-DD (update when making changes)

## User Stories

| ID | Title | Priority | Points | Status | Sprint | Created | Updated |
|----|-------|----------|--------|--------|--------|---------|---------|
| [US-001](user-stories/US-001-story-name.md) | [Story Title] | 🔴 Critical | [X] | ⭕ | - | [YYYY-MM-DD] | [YYYY-MM-DD] |
| [US-002](user-stories/US-002-story-name.md) | [Story Title] | 🟠 High | [X] | ⏳ | Sprint 1 | [YYYY-MM-DD] | [YYYY-MM-DD] |
| [US-003](user-stories/US-003-story-name.md) | [Story Title] | 🟡 Medium | [X] | ✅ | Sprint 1 | [YYYY-MM-DD] | [YYYY-MM-DD] |

## Defects

| ID | Title | Priority | Points | Status | Sprint | Created | Updated |
|----|-------|----------|--------|--------|--------|---------|---------|
| [DEF-001](defects/DEF-001-defect-description.md) | [Defect Description] | 🔴 Critical | [X] | ⭕ | - | [YYYY-MM-DD] | [YYYY-MM-DD] |
| [DEF-002](defects/DEF-002-defect-description.md) | [Defect Description] | 🟠 High | [X] | ⏳ | Sprint 1 | [YYYY-MM-DD] | [YYYY-MM-DD] |
| [DEF-003](defects/DEF-003-defect-description.md) | [Defect Description] | 🟡 Medium | [X] | ✅ | Sprint 1 | [YYYY-MM-DD] | [YYYY-MM-DD] |

## Technical Debt

| ID | Title | Priority | Points | Status | Sprint | Created | Updated |
|----|-------|----------|--------|--------|--------|---------|---------|
| [TD-001](technical-debt/TD-001-description.md) | [Description] | 🟠 High | [X] | ⭕ | - | [YYYY-MM-DD] | [YYYY-MM-DD] |

## Retrospective Improvements

| ID | Description | Owner | Due Sprint | Status |
|----|-------------|-------|------------|--------|
| [RI-001](retrospective-improvements/RI-001-description.md) | [Description] | [Owner] | [Sprint] | ⭕ |

---

## Status Values

- ⭕ **To Do**: In backlog; may or may not be assigned to a sprint. No work has begun.
- ⏳ **In Progress**: Work has started (e.g. first task in progress). Assigned to active sprint.
- ✅ **Done**: All acceptance criteria met; Documentation-Code Consistency Check run; human approved.

## Priority Levels

- 🔴 **Critical**: Blocks core functionality, must be fixed/implemented immediately
- 🟠 **High**: Important feature/defect, should be addressed soon
- 🟡 **Medium**: Nice to have, can wait
- 🟢 **Low**: Future consideration, low priority

## Column Definitions

- **ID**: Unique identifier (US-XXX for user stories, DEF-XXX for defects)
  - Link to detailed item: `[US-001](user-stories/US-001-story-name.md)`
- **Title**: Short, descriptive title (50 characters or less recommended)
- **Priority**: Visual priority indicator (🔴 🟠 🟡 🟢)
- **Points**: Story points (Fibonacci: 1, 2, 3, 5, 8, 13)
- **Status**: Current status (⭕ ⏳ ✅)
- **Sprint**: Assigned sprint number or "-" if not assigned
- **Created**: Date when item was created (YYYY-MM-DD)
- **Updated**: Date when item was last updated (YYYY-MM-DD)

## Notes

- User story details: See `user-stories/US-XXX-*.md` files
- Defect details: See `defects/DEF-XXX-*.md` files
- Technical debt details: See `technical-debt/TD-XXX-*.md` files
- Retrospective improvements: See `retrospective-improvements/RI-XXX-*.md` files (from retrospectives)
- Sprint assignments: See `../sprints/sprint-XX-*.md` files (if using sprint planning)

## Backlog Statistics (Optional)

**Total Items**: [X]  
**By Status**:
- ⭕ To Do: [X]
- ⏳ In Progress: [X]
- ✅ Done: [X]

**By Priority**:
- 🔴 Critical: [X]
- 🟠 High: [X]
- 🟡 Medium: [X]
- 🟢 Low: [X]

**Total Story Points**: [X]

---

## Tips for Maintaining the Backlog

1. **Keep it Updated**: Update status and dates when items change
2. **Sort by Priority**: Keep Critical items at top of each section
3. **Link to Details**: Always link IDs to detailed markdown files
4. **Regular Review**: Review and refine backlog regularly (weekly/bi-weekly)
5. **Update Dates**: Keep "Created" and "Updated" dates current
6. **Clear Titles**: Use descriptive, concise titles (update if needed as understanding evolves)

## Example Table Entry

| ID | Title | Priority | Points | Status | Sprint | Created | Updated |
|----|-------|----------|--------|--------|--------|---------|---------|
| [US-001](user-stories/US-001-ai-agent-configs.md) | AI Agent Configuration Files | 🟠 High | 2 | ⏳ | Sprint 1 | 2026-02-14 | 2026-02-14 |

This entry indicates:
- User Story #1 about AI Agent Configuration Files
- High priority
- Estimated at 2 story points
- Currently in progress
- Assigned to Sprint 5
- Created on 2026-02-14
- Last updated on 2026-02-14
- Clicking US-001 links to detailed document

---

## Template Validation Checklist

Before finalizing backlog table, ensure:

- [ ] "Last Updated" date is current
- [ ] All user stories from backlog are included
- [ ] All defects from backlog are included
- [ ] IDs link correctly to detailed files
- [ ] Priorities are assigned (🔴 🟠 🟡 🟢)
- [ ] Story points are estimated
- [ ] Status is current (⭕ ⏳ ✅)
- [ ] Sprint assignments are accurate
- [ ] Created and Updated dates are correct
- [ ] Table is sorted by priority (Critical → High → Medium → Low)
- [ ] Statistics are updated (if using)
- [ ] File is saved as `product-backlog.md`

