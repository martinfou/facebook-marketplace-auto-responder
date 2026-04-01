# AI Prompt Library

Reusable prompts for project management tasks. Add `project-management/processes/backlog-management-process.md` to your chat for context.

---

## Create User Story

> I want you to create a user story to do [X], [Y], and [Z]. Use the user story template in project-management/templates/user-story-template.md. Save to project-management/backlog/user-stories/ and add an entry to the product backlog.

**Variants**:
- "Create a user story for [specific capability]. Include acceptance criteria and business value."
- "Add US-XXX for [capability]. Document dependencies on [US-YYY]."

---

## Create Defect

> I want you to create a defect report for [defect description]. Use the defect template in project-management/templates/defect-template.md. Include steps to reproduce, expected vs actual behavior, and environment details. Save to project-management/backlog/defects/ and add an entry to the product backlog.

**Variants**:
- "Create DEF-XXX for [defect]. Document the root cause and proposed solution."
- "Add a defect for [symptom]. Priority is [Critical/High/Medium/Low]."

---

## Run Documentation-Code Consistency Check

> Generate a Documentation-Code Consistency Check report for my changes. Compare the code with the documentation in project-management/ and identify out-of-date docs, contradictions, and illogical statements. Code is the source of truth. Present the report and wait for my decisions on what to update.

**Variants**:
- "Run the Documentation-Code Consistency Check before I commit."
- "Compare my code changes with project-management docs and generate a Documentation-Code Consistency Check report."

---

## Generate Release Notes Draft

> Run project-management/scripts/generate-release-notes-draft.sh and help me format the output for RELEASE_NOTES.md. Use the structure in project-management/processes/release-notes-process.md.

**Variants**:
- "Generate a release notes draft from the last 20 commits."
- "Prepare RELEASE_NOTES.md for today's release. Run the draft script first."

---

## Refine Backlog Item

> Review [US-XXX / DEF-XXX] and help me refine it. Check that it meets the Definition of Ready: acceptance criteria are specific and testable, dependencies are documented, story points are estimated, and there are no open clarifying questions. Suggest improvements.

**Variants**:
- "Is US-XXX ready for sprint planning? Run through the Definition of Ready checklist."
- "Refine this backlog item for the next refinement session."

---

## Start Sprint Planning

> I want to start sprint planning for Sprint [X]. Follow project-management/processes/sprint-planning-process.md. Review the product backlog, check items meet Definition of Ready, sort by dependencies, and suggest which items to select based on team velocity of [N] points. Use the sprint planning template.

**Variants**:
- "Plan Sprint 2. Our velocity is 8 points. Which backlog items should we take?"
- "Create sprint-02-[name].md. Include [US-001, US-002] and break them into tasks."

---

## Run Backlog Metrics

> Run project-management/scripts/backlog-metrics.sh and summarize the results. Highlight any items aging beyond 7 days or Critical items not started.

---

## Validate Backlog

> Run project-management/scripts/validate-backlog.sh and fix any errors or warnings. Ensure all links are valid.

---

## Run Sprint Retrospective

> Help me run the sprint retrospective for Sprint [X]. Follow project-management/processes/sprint-retrospective-process.md. Run backlog-metrics.sh first, then guide me through the 8 steps. Use the retrospective template to capture output and add it to the sprint document.

**Variants**:
- "Prepare for our sprint retrospective. What should we do?"
- "Run the retrospective process for sprint-01. Capture the output."

---

## Identify Technical Debt

> Help me identify and capture technical debt. Follow project-management/processes/technical-debt-identification-process.md. I noticed [description of debt]. Create a TD-XXX item and add it to the backlog.

**Variants**:
- "We took a shortcut in [area]. Create a technical debt item for it."
- "Run a tech-debt identification session. What should we look for?"
- "Add TD-001 for [refactoring need]. Use the technical debt template."

---

**Last Updated**: 2026-03-06
