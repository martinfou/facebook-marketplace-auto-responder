# Escalation Process

**Purpose**: Lightweight process for when blockers or risks require escalation. Ensures issues are recorded and addressed.

**Related**: [Backlog Management Process](backlog-management-process.md), [Risk Register](../backlog/risks.md), [Sprint Planning Template](../templates/sprint-planning-template.md)

---

## When to Escalate

- **Blocker > 2 days**: Work blocked for more than 2 days with no path forward
- **Critical defect unaddressed**: Critical priority item not started within aging threshold (see [backlog-aging-standards.md](backlog-aging-standards.md))
- **Scope conflict**: Stakeholder request conflicts with sprint commitment or technical constraints
- **Resource gap**: Missing skills, access, or capacity to complete committed work
- **Process failure**: Repeated failures (e.g. broken CI, recurring quality issues) that block delivery

---

## How to Escalate

1. **Document**: Record the issue in the sprint document's "Risks & Blockers" section or create a risk in [risks.md](../backlog/risks.md)
2. **Identify owner**: Escalate to Product Owner (scope/priority), Tech Lead (technical), or project lead (resource/process)
3. **State clearly**: What is blocked, for how long, what is needed to unblock
4. **Propose options**: If possible, suggest 1–2 options (e.g. descope, extend timeline, add resource)

---

## How to Record

- **In sprint doc**: Add to "Risks & Blockers" with date, description, and escalation target
- **In risk register**: Add row to [risks.md](../backlog/risks.md) with ID, impact, mitigation, owner
- **In backlog**: If the blocker becomes a backlog item (e.g. DEF-XXX, TD-XXX), link from the risk or sprint notes

---

## Follow-Up

- Revisit escalated items in next standup or sprint review
- Close when unblocked; update status in risk register or sprint doc
- If escalation recurs, consider process improvement (retrospective improvement)

---

**Last Updated**: 2026-03-07
