# Acceptance Criteria for Project Naming Conventions

**Purpose**: Comprehensive checklist to ensure project perfection—no errors, consistent terminology, and close alignment with agile methodology. Use for audits, onboarding, and quality assurance.

**Related**: [Definition of Done](definition-of-done.md), [Definition of Ready](definition-of-ready.md), [Backlog Management Process](../processes/backlog-management-process.md)

---

## 1. Terminology Consistency

Use **exactly** these terms. Do not substitute synonyms.

### 1.1 Backlog Item Types

| ✅ Use | ❌ Do Not Use |
|-------|---------------|
| **User story** | feature, story, PBI (unless explicitly defined) |
| **Defect** | bug, issue, fix (defect is canonical; "bug" only in informal parenthetical) |
| **Technical debt** | tech debt, TD (TD-XXX is the ID format, not the term) |
| **Retrospective improvement** | retro improvement, improvement item |
| **Backlog item** | item (when referring to US/DEF/TD/RI collectively) |

### 1.2 Status Values

| ✅ Use | ❌ Do Not Use |
|-------|---------------|
| **To Do** | Todo, to-do, Backlog, Open, New |
| **In Progress** | InProgress, WIP, Working |
| **Done** | Complete, Completed, Finished, Closed |

**Symbols**: Use ⭕ To Do, ⏳ In Progress, ✅ Done consistently.

### 1.3 Priority Levels

| ✅ Use | ❌ Do Not Use |
|-------|---------------|
| **Critical** | P0, P1, Urgent, Blocker |
| **High** | P2, Important |
| **Medium** | P3, Normal |
| **Low** | P4, Minor, Nice-to-have |

**Symbols**: 🔴 Critical, 🟠 High, 🟡 Medium, 🟢 Low.

### 1.4 Quality Gates

| ✅ Use | ❌ Do Not Use |
|-------|---------------|
| **Definition of Done** | DoD (acceptable as abbreviation after first use), Done criteria |
| **Definition of Ready** | DoR (acceptable as abbreviation after first use), Ready criteria |
| **Documentation-Code Consistency Check** | Doc-code check, consistency check, gap check (unless referring to the script) |
| **Technical Debt Identification Scan** | Tech debt scan, TD scan |

### 1.5 Agile Ceremonies and Artifacts

| ✅ Use | ❌ Do Not Use |
|-------|---------------|
| **Sprint planning** | Sprint plan, planning session |
| **Sprint review** | Demo, sprint demo (acceptable as informal) |
| **Sprint retrospective** | Retro (acceptable as informal abbreviation), retro session |
| **Backlog refinement** | Refinement, grooming |
| **Product backlog** | Backlog (when context is clear) |
| **Story points** | Points (when context is clear), SP |
| **Acceptance criteria** | AC, criteria (when context is clear) |

### 1.6 Roles (Scrum/Agile)

| ✅ Use | ❌ Do Not Use |
|-------|---------------|
| **Product Owner** | PO (acceptable as abbreviation) |
| **Scrum Master** | SM (acceptable as abbreviation) |
| **Development Team** | Dev team, team |

---

## 2. File Structure and Naming

### 2.1 Paths (Canonical)

| Type | Path | ID Format |
|------|------|-----------|
| User stories | `backlog/user-stories/US-XXX-*.md` | US-XXX |
| Defects | `backlog/defects/DEF-XXX-*.md` | DEF-XXX |
| Technical debt | `backlog/technical-debt/TD-XXX-*.md` | TD-XXX |
| Retrospective improvements | `backlog/retrospective-improvements/RI-XXX-*.md` | RI-XXX |
| Architecture Decision Records | `architecture-decision-records/ADR-XXX-*.md` | ADR-XXX |
| Sprints | `sprints/sprint-XX-*.md` | sprint-XX |

**Note**: All paths are relative to `project-management/`. ADRs live in `architecture-decision-records/`, not `adr/`.

### 2.2 File Naming Conventions

- [ ] User stories: `US-XXX-kebab-case-title.md` (e.g., `US-001-ai-agent-configs.md`)
- [ ] Defects: `DEF-XXX-kebab-case-description.md` (e.g., `DEF-001-ui-glitch-fix.md`)
- [ ] Technical debt: `TD-XXX-kebab-case-description.md`
- [ ] Retrospective improvements: `RI-XXX-kebab-case-description.md`
- [ ] ADRs: `ADR-XXX-kebab-case-title.md` (zero-pad: ADR-001, ADR-002)
- [ ] Sprints: `sprint-XX-kebab-case-name.md` (zero-pad: sprint-01, sprint-02)

### 2.3 No Duplicate Concepts

- [ ] Only one ADR location: `architecture-decision-records/` (not `adr/` and `architecture-decision-records/`)
- [ ] Only one product backlog: `backlog/product-backlog.md`
- [ ] Release notes at project root: `RELEASE_NOTES.md` (not inside `project-management/`)

---

## 3. Agile Methodology Alignment

### 3.1 Scrum Events (Order and Timing)

- [ ] **Sprint planning**: Start of sprint, after retrospective, before development
- [ ] **Sprint review**: End of sprint, before retrospective
- [ ] **Sprint retrospective**: End of sprint, after sprint review, before next sprint planning
- [ ] **Backlog refinement**: Weekly or bi-weekly; not a formal Scrum event but recommended

### 3.2 Definition of Ready (Gate Before Sprint)

- [ ] Acceptance criteria are specific and testable
- [ ] Dependencies identified and resolved (or in same sprint)
- [ ] Story points estimated (Fibonacci: 1, 2, 3, 5, 8, 13)
- [ ] No open clarifying questions
- [ ] Technical references included
- [ ] User story follows "As a... I want... So that..." (for user stories)
- [ ] Priority assigned

### 3.3 Definition of Done (Gate Before Done)

- [ ] Acceptance criteria met
- [ ] Code changes implemented and tested
- [ ] Unit tests added/updated (where applicable)
- [ ] Documentation updated
- [ ] No new linter errors
- [ ] Backlog item status updated to ✅ Done
- [ ] RELEASE_NOTES.md updated
- [ ] Documentation-Code Consistency Check run; human approved

### 3.4 Status Lifecycle

- [ ] Exactly three states: ⭕ To Do → ⏳ In Progress → ✅ Done
- [ ] No intermediate states (e.g., "In Review", "Blocked" as status—use Risks & Blockers instead)
- [ ] Work begins: To Do → In Progress
- [ ] Work completes: In Progress → Done (only after Definition of Done)
- [ ] Work paused: In Progress → To Do (allowed)

### 3.5 Story Points (Fibonacci)

- [ ] Use only: 1, 2, 3, 5, 8, 13
- [ ] Items > 13 points should be broken down
- [ ] Estimation factors: complexity, uncertainty, effort, risk

### 3.6 Dependency Management

- [ ] Dependencies documented in each backlog item
- [ ] Backlog sorted by dependencies before prioritization
- [ ] Prerequisites completed before dependent items
- [ ] Circular dependencies identified and resolved

---

## 4. Process Compliance

### 4.1 Pre-Commit Flow (AI-Assisted Work)

- [ ] Clarifying questions asked before implementation
- [ ] User answers documented in backlog item
- [ ] Documentation-Code Consistency Check run before commit
- [ ] Technical Debt Identification Scan run before commit
- [ ] Human approval obtained before commit
- [ ] Definition of Done verified before marking Done

### 4.2 Backlog Management

- [ ] New user stories: create file, add to product backlog table
- [ ] New defects: create file, add to product backlog table
- [ ] Status updated in both item file and product backlog table
- [ ] "Updated" date refreshed on status change
- [ ] History section updated on significant changes

### 4.3 Sprint Planning

- [ ] Run backlog-metrics.sh before planning
- [ ] Backlog sorted by dependencies
- [ ] Definition of Ready gate applied to all selected items
- [ ] Capacity/velocity check performed
- [ ] Items broken down into tasks
- [ ] Sprint document created from template
- [ ] Backlog status updated to In Progress for selected items

### 4.4 Sprint Review

- [ ] Demo each completed item
- [ ] Verify each acceptance criterion; mark `[x]` in item file
- [ ] Capture stakeholder feedback
- [ ] Update backlog: new items, reprioritization
- [ ] Document in Sprint Review Notes

### 4.5 Sprint Retrospective

- [ ] Run after sprint review
- [ ] Capture "What went well" and "What could be improved"
- [ ] Define 1–3 retrospective improvements (RI-XXX)
- [ ] Add output to sprint document
- [ ] Follow up: add RI items to next sprint planning

### 4.6 Release Notes

- [ ] Update on each push/merge to main
- [ ] Update at end of sprint
- [ ] Sections: New Features, Defect Fixes, Technical Debt, Breaking Changes, Migration Notes
- [ ] Link to backlog items (US-XXX, DEF-XXX, TD-XXX)
- [ ] Location: `RELEASE_NOTES.md` at project root

---

## 5. Documentation Standards

### 5.1 Charts and Diagrams

- [ ] Use Mermaid only (no ASCII art, no images for flowcharts)
- [ ] Wrap node labels with special characters in double quotes (e.g., `["User: /braindump"]`)
- [ ] Validate diagrams in [Mermaid Live Editor](https://mermaid.live/) before commit

### 5.2 Code as Source of Truth

- [ ] Code overrides documentation in case of contradiction
- [ ] Human decides what to update after gap report
- [ ] Documentation updated only per human direction

### 5.3 Cross-References

- [ ] Use relative links: `[text](path/to/file.md)`
- [ ] Links from product backlog to item files
- [ ] Links from release notes to backlog items
- [ ] Process docs link to related processes and templates

---

## 6. Error Prevention

### 6.1 Validation

- [ ] Run `validate-backlog.sh` before commit (or in pre-commit hook)
- [ ] Run `check-links.sh` to verify all links
- [ ] Run `backlog-metrics.sh` for health metrics
- [ ] No broken internal links

### 6.2 Consistency Checks

- [ ] Product backlog table matches item files (IDs, titles, status)
- [ ] Sprint document references valid backlog items
- [ ] No orphaned files (item files not in product backlog)
- [ ] No duplicate IDs (US-XXX, DEF-XXX, etc.)

### 6.3 Date and Version

- [ ] Dates in YYYY-MM-DD format
- [ ] "Last Updated" or "Updated" refreshed on changes
- [ ] "Created" preserved on creation

---

## 7. README and INDEX Alignment

### 7.1 README.md

- [ ] Says "features and bugs" only when summarizing for humans; use "user stories and defects" when referring to backlog structure
- [ ] Links to INDEX.md as entry point for AI
- [ ] Lists scripts: validate-backlog, backlog-metrics, prepare-gap-check, generate-release-notes-draft, check-links

### 7.2 INDEX.md

- [ ] Single entry point for AI-assisted project management
- [ ] Process table matches actual process files
- [ ] Paths table matches canonical structure
- [ ] Pre-commit flow matches definition-of-done and doc-code-consistency-process

---

## 8. Scripts

### 8.1 Required Scripts

- [ ] `validate-backlog.sh` — validates backlog structure and links
- [ ] `backlog-metrics.sh` — computes metrics, aging
- [ ] `prepare-gap-check.sh` — lists changed files for consistency check
- [ ] `generate-release-notes-draft.sh` — generates release notes from commits
- [ ] `check-links.sh` — validates links

### 8.2 Script Paths

- [ ] All scripts in `project-management/scripts/`
- [ ] Invoked as `./project-management/scripts/<script>.sh`

---

## 9. Templates

### 9.1 Template Usage

- [ ] User story: use `user-story-template.md`
- [ ] Defect: use `defect-template.md`
- [ ] Technical debt: use `technical-debt-template.md`
- [ ] Sprint planning: use `sprint-planning-template.md`
- [ ] Retrospective: use `retrospective-template.md`
- [ ] Retrospective improvement: use `retrospective-improvement-template.md`
- [ ] Release note section: use `release-note-section-template.md`
- [ ] ADR: use `architecture-decision-record-template.md`

### 9.2 Template Location

- [ ] All in `project-management/templates/`

---

## 10. Agile Principles Checklist

- [ ] **Inspect and adapt**: Sprint review and retrospective every sprint
- [ ] **Transparency**: Backlog visible, status clear, risks documented
- [ ] **Prioritization**: Backlog ordered by value and dependencies
- [ ] **Small, frequent releases**: Release notes per push/merge
- [ ] **Definition of Done**: Shared, enforced, non-negotiable
- [ ] **Definition of Ready**: Items refined before sprint
- [ ] **Continuous improvement**: Retrospective improvements tracked (RI-XXX)
- [ ] **Collaboration**: Clarifying questions, human approval gates
- [ ] **Sustainable pace**: Velocity and capacity considered in planning

---

## Quick Audit Commands

```bash
# Validate backlog structure and links
./project-management/scripts/validate-backlog.sh project-management/backlog

# Check all links
./project-management/scripts/check-links.sh

# Backlog metrics and aging
./project-management/scripts/backlog-metrics.sh --stats
```

---

## Revision History

| Date | Change |
|------|--------|
| 2026-03-07 | Initial creation |
| 2026-03-07 | Renamed from acceptance-criteria-mega-list.md |
| 2026-03-07 | Added lint-project-management.sh for anal-level checks |
