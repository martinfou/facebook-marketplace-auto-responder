# Sprint Review Process

**Purpose**: Step-by-step guide for conducting a sprint review. Run at the end of every sprint, before the retrospective. Demo completed work, verify acceptance criteria, and capture feedback.

**Related**: [Sprint Planning Template](../templates/sprint-planning-template.md), [Backlog Management Process](backlog-management-process.md), [Sprint Retrospective Process](sprint-retrospective-process.md)

---

## When to Run

- **Timing**: End of sprint, before sprint retrospective
- **Duration**: 1–2 hours (adjust for team size and deliverables)
- **Participants**: Sprint team, Product Owner, stakeholders (optional)
- **Prerequisite**: Sprint work completed; items ready to demo

---

## Step-by-Step Process

### Step 1: Prepare

- [ ] Run `./project-management/scripts/backlog-metrics.sh` to gather sprint metrics
- [ ] Review completed items from the sprint document
- [ ] Ensure demo environment is ready (if applicable)
- [ ] Have the sprint document open for "Sprint Review Notes" section

### Step 2: Demo Done Items

- [ ] For each completed user story or defect fix:
  - Demo the working functionality
  - Walk through each acceptance criterion in the backlog item
  - Confirm each criterion is met
- [ ] For items not completed: briefly explain status and next steps

### Step 3: Verify Acceptance Criteria

- [ ] Open each completed backlog item (US-XXX, DEF-XXX)
- [ ] For each acceptance criterion: confirm it is met by testing or inspection
- [ ] Mark each criterion as `[x]` in the item file only after confirming
- [ ] If any criterion is not met: note as incomplete; do not mark item as Done until fixed

### Step 4: Capture Feedback

- [ ] Ask stakeholders: "What feedback do you have?"
- [ ] Document feedback in the sprint document's "Sprint Review Notes" section
- [ ] Identify any new backlog items (user stories, defects) from feedback
- [ ] Note any reprioritization or scope changes

### Step 5: Update Backlog

- [ ] Create new backlog items for feedback that warrants work (use [user-story-template.md](../templates/user-story-template.md) or [defect-template.md](../templates/defect-template.md))
- [ ] Add entries to product backlog table
- [ ] Update priorities if stakeholders requested changes
- [ ] Move incomplete items to next sprint or back to backlog

### Step 6: Document and Close

- [ ] Fill in "Sprint Review Notes" in the sprint document with:
  - What was demonstrated
  - Feedback received
  - Decisions made (new items, reprioritization)
- [ ] Commit the updated sprint document

---

## Checklist Summary

| Step | Action |
|------|--------|
| 1 | Prepare: run backlog-metrics, review completed items, ready demo |
| 2 | Demo each completed item; walk through acceptance criteria |
| 3 | Verify each acceptance criterion; mark complete in item file |
| 4 | Capture stakeholder feedback |
| 5 | Update backlog: new items, reprioritization |
| 6 | Document in Sprint Review Notes; commit |

---

## Integration with Other Processes

- **Sprint Retrospective**: Run retrospective after sprint review; review outcomes inform retro discussion
- **Sprint Planning**: Incomplete items and new backlog items feed into next sprint planning
- **Definition of Done**: All done items must satisfy [definition-of-done.md](../criteria/definition-of-done.md) before marking Done

---

**Last Updated**: 2026-03-07
