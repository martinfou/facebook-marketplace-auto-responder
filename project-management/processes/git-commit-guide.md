---
template_version: 1.2.0
last_updated: 2026-03-07
compatible_with: [all]
requires: [git]
---

# Git Commit Message Template

[← Back to Product Backlog](../backlog/product-backlog.md)

This template provides a structured format for git commit messages that combines business context with technical details.

## Usage

### Setup (One-time)

```bash
# Set as global commit template
git config --global commit.template /path/to/project-management/templates/git-commit-template.txt

# Or set for current repository only
git config commit.template project-management/templates/git-commit-template.txt
```

### Using the Template

When you commit, your editor will open with this template. Fill in the sections and remove the instructions.

```bash
git commit
```

---

## Branching Strategy

We use a simple feature-branch workflow ([ADR-002](../architecture-decision-records/ADR-002-branching-strategy.md)):

- **`main`** — Always deployable, protected. Only receives changes via Pull Request.
- **`feature/US-XXX-short-description`** — One branch per user story. Create when starting work; open a PR to merge into `main` when done.

### Workflow

1. Create a feature branch from `main`: `git checkout -b feature/US-XXX-short-description`
2. Commit on the feature branch using this template
3. When the story is complete, open a PR to merge into `main`
4. Review, merge, then delete the feature branch

---

## Template Format

```
<US-XXX or DEF-XXX>: <Short business description (50-72 characters)>

<Business description paragraph explaining what changed and why from a business/user perspective. This should be 1-3 sentences describing the impact, value, or problem solved.>

<Technical changes for developers:>
- <Specific technical change 1>
- <Specific technical change 2>
- <Specific technical change 3>
```

---

## Example

```
US-042: Add user authentication

Implemented secure user login and registration functionality to enable personalized user experiences and protect user data. This capability is critical for MVP launch as it enables access to protected functionality and builds user trust.

Technical changes for developers:
- Added AuthService with login, register, and logout methods
- Implemented bcrypt password hashing with cost factor 12
- Created session management using secure HTTP-only cookies
- Added AuthenticationMiddleware for protected routes
- Updated database schema with users and sessions tables
- Added unit and integration tests for authentication flow
```

---

## Template File

Save this as `git-commit-template.txt`:

```
# <US-XXX or DEF-XXX>: <Short business description (50-72 characters)>
#
# <Business description paragraph explaining what changed and why from a business/user perspective. This should be 1-3 sentences describing the impact, value, or problem solved.>
#
# Technical changes for developers:
# - <Specific technical change 1>
# - <Specific technical change 2>
# - <Specific technical change 3>
```

---

## Guidelines

### Title (First Line)
- **Must include task number**: Start with `US-XXX:` or `DEF-XXX:` (e.g., `US-042: Add user authentication`)
- Keep it under 72 characters (including task number)
- Use imperative mood ("Add [capability]" not "Added [capability]")
- Focus on business value, not implementation
- No period at the end

### Business Description
- Explain the "what" and "why" from user/business perspective
- Focus on impact and value
- 1-3 sentences, 2-4 lines
- Answer: What problem does this solve? Who benefits?

### Technical Changes
- List specific technical changes
- Use bullet points
- Be specific about what was changed
- Include file/component names if relevant
- Focus on what developers need to know

### Best Practices
- Write the business description first (think user value)
- Then list technical changes (think developer needs)
- Remove template instructions before committing
- Keep it concise but informative
- Reference backlog items if applicable: "Refs US-042"

---

## Integration with Backlog

The task number (US-XXX or DEF-XXX) should be included in the title. You can also add a "Refs" line at the end for additional context:

```
US-042: Add user authentication

Implemented secure user login and registration functionality to enable personalized user experiences and protect user data.

Technical changes for developers:
- Added AuthService with login, register, and logout methods
- Implemented bcrypt password hashing
- Created session management system
- Added AuthenticationMiddleware

Refs US-042
```

---

## Alternative: One-Line Format

For small changes, you can use a simplified format:

```
<US-XXX or DEF-XXX>: <Short business description>

<Brief business context. Technical: <technical detail 1>, <technical detail 2>>
```

Example:
```
DEF-015: Fix email validation defect

Email addresses with plus signs are now accepted. Technical: Updated regex pattern in UserService.validateEmail(), added unit tests.

Refs DEF-015
```

---

## Tips

1. **Start with business value** - What does this change do for users?
2. **Then explain technically** - What did you actually change?
3. **Be specific** - "Updated validation" is vague, "Updated email regex to include + character" is clear
4. **Reference backlog items** - Use "Refs US-XXX" or "Refs DEF-XXX"
5. **Keep it readable** - Both business and technical audiences should understand

---

**Last Updated**: 2026-03-07  
**Version**: 1.2.0

