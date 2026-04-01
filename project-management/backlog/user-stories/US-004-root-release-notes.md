# User Story: US-004 - Root-Level Release Notes

[← Back to Product Backlog](../product-backlog.md)

**Status**: ✅ Done  
**Priority**: 🟠 High  
**Story Points**: 2  
**Created**: 2026-03-06  
**Updated**: 2026-03-31  
**Assigned Sprint**: Sprint 1

## Description

Create and maintain `RELEASE_NOTES.md` at the project root (outside of `project-management/`) to document changes for users and developers. Provide a template for each release section and clear instructions on how to fill it out.

## User Story

As a developer or stakeholder, I want release notes at the project root with a template and instructions, so that I can consistently document what changed in each release and users can understand updates at a glance.

## Acceptance Criteria

- [x] `RELEASE_NOTES.md` exists at project root (sibling to `project-management/`)
- [x] Release note section template created in `project-management/templates/release-note-section-template.md`
- [x] Template includes all required sections (New Features, Defect Fixes, Technical Debt, Breaking Changes, Migration Notes)
- [x] Instructions on how to fill out the template are included (in template or linked from release-notes-process)
- [x] Release notes process references the template and instructions
- [x] Automation script (`generate-release-notes-draft.sh`) continues to work with the structure

## Business Value

- Users and developers can quickly see what changed in each release
- Consistent format across releases improves readability
- Template and instructions reduce errors and ensure nothing is missed
- Supports both manual and automated (--auto) release note generation

## Technical Requirements

- File location: `RELEASE_NOTES.md` at project root
- Template location: `project-management/templates/release-note-section-template.md`
- Process: `project-management/processes/release-notes-process.md` links to template and instructions
- Script: `project-management/scripts/generate-release-notes-draft.sh` appends to RELEASE_NOTES.md

## Dependencies

- None

## Clarifying Questions

*AI: Before starting implementation, ask the user clarifying questions. Document questions and answers here after the user responds.*

## History

- 2026-03-06 - Created
- 2026-03-31 - Verified template/process/script; added root `RELEASE_NOTES.md` bootstrap; marked Done
- 2026-03-31 - Release notes updated for US-001, US-002, US-003, US-005, DEF-001 completion batch
