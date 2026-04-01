# Project Management Workflow

**AI: Start with [INDEX.md](INDEX.md)** for task-specific guidance, which files to attach, and the [AI workflow diagram](INDEX.md#ai-workflow-overview).

This directory contains the documentation, processes, and scripts for managing the project backlog, user stories, defects, and sprints.

**Scripts**: See [scripts/README.md](scripts/README.md) for the full list (validate-backlog, check-links, lint-project-management, backlog-metrics, validate-backlog-integrity, validate-mermaid, visualize-dependencies, test-scripts).

## How to use this workflow with AI

To have the AI assist you with project management tasks (like creating user stories or defects), follow these steps:

1. **Add the Process Document**: Add the following file to your chat:
   `project-management/processes/backlog-management-process.md`

2. **Use prompts from the library**: See [prompts.md](prompts.md) for reusable prompts (create user story, defect, Documentation-Code Consistency Check, release notes, refine backlog, sprint planning, etc.).

## What this workflow does

The `project-management` workflow, guided by the LLM, automates and standardizes the following processes:

- **Backlog Management**: Maintaining a prioritized list of user stories and defects in `product-backlog.md`.
- **User Story/Defect Lifecycle**: Managing the state of items from "To Do" to "Done" using standardized templates.
- **Sprint Planning**: Organizing items into sprints and breaking them down into actionable tasks.
- **Dependency Tracking**: Identifying and managing technical and functional dependencies between backlog items.
- **Documentation**: Ensuring all user stories and defects are documented according to project standards.
- **Documentation-Code Consistency Check**: Before commit, the AI checks code against documentation and generates a gap report; the human reviews and decides what to keep and what to update. See [processes/doc-code-consistency-process.md](processes/doc-code-consistency-process.md).
- **Definition of Done**: Quality gate for completed work. The AI must verify all criteria in [criteria/definition-of-done.md](criteria/definition-of-done.md) before considering a task complete.
- **Definition of Ready**: Gate before items enter a sprint. See [criteria/definition-of-ready.md](criteria/definition-of-ready.md).
- **Release Notes**: Update `RELEASE_NOTES.md` per [processes/release-notes-process.md](processes/release-notes-process.md) when completing user stories/defects.

By providing the `backlog-management-process.md` file, the AI understands the specific file structure, naming conventions, and status transitions required for this project.
