# Sprint Retrospective Process

**Purpose**: Step-by-step guide for conducting a sprint retrospective. Run at the end of every sprint to inspect how the sprint went and agree on improvements for the next one.

**Related**: [Retrospective Output Template](../templates/retrospective-template.md), [Backlog Management Process](backlog-management-process.md), [Sprint Review Process](sprint-review-process.md)

---

## When to Run

- **Timing**: End of sprint, after [sprint review](sprint-review-process.md) and before next sprint planning
- **Prerequisite**: Sprint review completed
- **Duration**: 30–60 minutes (adjust for team size)
- **Participants**: Sprint team, Scrum Master (if applicable), Product Owner (optional)

---

## Step-by-Step Process

### Step 1: Schedule and Prepare

- [ ] Schedule retrospective for the sprint retrospective date (see sprint document)
- [ ] Run `./project-management/scripts/backlog-metrics.sh` to gather sprint metrics
- [ ] Review sprint outcomes: completed vs incomplete stories, velocity
- [ ] Open the sprint document's "Sprint Retrospective Notes" section (or have [Retrospective Output Template](../templates/retrospective-template.md) ready)

### Step 2: Open the Session

- [ ] State the goal: inspect the last sprint (people, relationships, process, tools) and identify improvements
- [ ] Set a constructive tone: focus on learning, not blame
- [ ] Optionally review retrospective improvements from the previous retrospective; note what was done and what was carried forward

### Step 3: What Went Well?

- [ ] Ask: "What went well this sprint?"
- [ ] Capture successes, positive practices, and things to continue
- [ ] Aim for 3–5 items
- [ ] Record in the "What Went Well" section of the output

### Step 4: What Could Be Improved?

- [ ] Ask: "What could be improved?"
- [ ] Capture bottlenecks, frustrations, and process gaps
- [ ] If technical debt is mentioned, capture it and create a TD-XXX item per [Technical Debt Identification Process](technical-debt-identification-process.md)
- [ ] Aim for 3–5 items
- [ ] Record in the "What Could Be Improved" section of the output

### Step 5: Define Retrospective Improvements

- [ ] From "What Could Be Improved," select 1–3 items to act on
- [ ] For each: define a specific, actionable step; assign an owner; set due sprint
- [ ] Create file: `backlog/retrospective-improvements/RI-XXX-description.md` using the [Retrospective Improvement Template](../templates/retrospective-improvement-template.md)
- [ ] Add entry to product backlog Retrospective Improvements section (see [product-backlog.md](../backlog/product-backlog.md))
- [ ] Record in the "Retrospective Improvements" table of the retrospective output

### Step 6: Process Changes to Document

- [ ] Identify any agreed process changes that need documentation updates
- [ ] List in "Process Changes to Document" with the document path to update
- [ ] Assign owner if different from retrospective improvement owner

### Step 7: Capture and Publish

- [ ] Fill in the [Retrospective Output Template](../templates/retrospective-template.md) with all captured content
- [ ] Add the output to the sprint document's "Sprint Retrospective Notes" section
- [ ] Commit the updated sprint document

### Step 8: Follow-Up

- [ ] Add retrospective improvements to next sprint planning (if applicable); they are tracked in `backlog/retrospective-improvements/`
- [ ] Update process docs per "Process Changes to Document"
- [ ] At the next retrospective, review retrospective improvements from this retro; close completed, carry forward incomplete

---

## Output Location

Add the retrospective output to the sprint document:

```
project-management/sprints/sprint-XX-*.md
```

Under the "Sprint Retrospective Notes" section.

---

## Checklist Summary

| Step | Action |
|------|--------|
| 1 | Schedule, run backlog-metrics, review sprint outcomes |
| 2 | Open session, set tone, review previous retrospective improvements |
| 3 | What went well? Capture 3–5 items |
| 4 | What could be improved? Capture 3–5 items |
| 5 | Define 1–3 retrospective improvements with owner and due sprint |
| 6 | List process changes to document |
| 7 | Fill template, add to sprint document, commit |
| 8 | Follow-up: next sprint planning, update docs, review at next retro |

---

**Last Updated**: 2026-03-06
