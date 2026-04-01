# Project Management Glossary

**Purpose**: Single source of truth for terminology. Use these terms consistently across all project-management documentation.

---

## Backlog Item Types

| Term | Definition |
|------|------------|
| **User story** | A backlog item describing functionality from a user's perspective. Format: "As a... I want... So that...". ID: US-XXX. |
| **Defect** | A backlog item describing incorrect or unexpected behavior. ID: DEF-XXX. Do not use "bug" except in the parenthetical "defect (bug)" in the defect template. |
| **Technical debt** | A backlog item for refactoring, cleanup, or quality improvements. ID: TD-XXX. Do not use "tech debt". |
| **Retrospective improvement** | An action item from a sprint retrospective. ID: RI-XXX. |
| **Backlog item** | Generic term for any of the above (US, DEF, TD, RI) when referring collectively. |

---

## Status Values

| Term | Symbol | Definition |
|------|--------|------------|
| **To Do** | ⭕ | In backlog; may or may not be assigned to a sprint. No work has begun. |
| **In Progress** | ⏳ | Work has started. Assigned to active sprint. |
| **Done** | ✅ | All acceptance criteria met; Documentation-Code Consistency Check run; human approved. |

Do not use: Todo, to-do, Backlog, Open, New, InProgress, WIP, Working, Complete, Completed, Finished, Closed.

---

## Priority Levels

| Term | Symbol | Definition |
|------|--------|------------|
| **Critical** | 🔴 | Blocks core functionality; must be addressed immediately. |
| **High** | 🟠 | Important; should be addressed soon. |
| **Medium** | 🟡 | Nice to have; can wait. |
| **Low** | 🟢 | Future consideration; low priority. |

Do not use: P0, P1, P2, P3, P4, Urgent, Blocker, Important, Normal, Minor, Nice-to-have.

---

## Quality Gates

| Term | Abbreviation | Definition |
|------|--------------|------------|
| **Definition of Done** | DoD | Quality gate for completed work. All criteria must be met before marking ✅ Done. |
| **Definition of Ready** | DoR | Quality gate before items enter a sprint. Items must be refined before selection. |
| **Documentation-Code Consistency Check** | — | Process where AI compares code with documentation; human reviews gap report. |
| **Technical Debt Identification Scan** | — | Process where AI identifies technical debt from code changes. |

---

## Agile Ceremonies & Artifacts

| Term | Definition |
|------|------------|
| **Sprint planning** | Ceremony at start of sprint; select items, break into tasks. |
| **Sprint review** | Ceremony at end of sprint; demo work, capture feedback. |
| **Sprint retrospective** | Ceremony after sprint review; inspect and adapt. |
| **Backlog refinement** | Ongoing activity to clarify and estimate items. Do not use "grooming". |
| **Product backlog** | Prioritized list of user stories, defects, technical debt. |
| **Story points** | Relative estimate using Fibonacci (1, 2, 3, 5, 8, 13). Do not use "SP". |
| **Acceptance criteria** | Testable conditions that must be met for an item to be Done. Do not use "AC". |

---

## Roles

| Term | Abbreviation | Definition |
|------|--------------|------------|
| **Product Owner** | PO | Responsible for backlog prioritization and value. |
| **Scrum Master** | SM | Facilitates process and removes impediments. |
| **Development Team** | — | Delivers the product increment. |

---

## File Paths (relative to project-management/)

| Type | Path | ID Format |
|------|------|-----------|
| User stories | `backlog/user-stories/` | US-XXX |
| Defects | `backlog/defects/` | DEF-XXX |
| Technical debt | `backlog/technical-debt/` | TD-XXX |
| Retrospective improvements | `backlog/retrospective-improvements/` | RI-XXX |
| Architecture Decision Records | `architecture-decision-records/` | ADR-XXX |
| Sprints | `sprints/` | sprint-XX |

---

**Related**: [Acceptance Criteria for Project Naming Conventions](criteria/acceptance-criteria-for-project-naming-conventions.md)
