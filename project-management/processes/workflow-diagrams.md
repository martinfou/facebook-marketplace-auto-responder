# Workflow Diagrams Example

This document demonstrates the Mermaid.js workflow diagrams used to visualize the backlog management process. These diagrams help team members understand how user stories and defects flow through the system.

## User Story Workflow

This flowchart shows the complete lifecycle of a user story from initial creation through backlog management to sprint planning and completion.

```mermaid
flowchart TD
    A[Create User Story] --> B[Use User Story Template]
    B --> C[Assign Unique ID US-XXX]
    C --> D[Fill Required Fields]
    D --> E[Document Dependencies]
    E --> F[Save to user-stories/US-XXX-name.md]
    F --> G[Add to Product Backlog Table]
    G --> H[Set Status: To Do]
    H --> I[Assign Priority]
    I --> J[Estimate Story Points]
    J --> K{Backlog Refinement}
    K -->|Clarify Requirements| L[Update User Story]
    L --> K
    K -->|Identify Dependencies| M[Review All Dependencies]
    M --> N[Sort Backlog by Dependency Order]
    N --> O{Ready for Sprint?}
    O -->|No| K
    O -->|Yes| P[Select for Sprint Planning]
    P --> Q{All Dependencies Resolved?}
    Q -->|No| R[Include Dependencies in Sprint]
    Q -->|Yes| S[Add to Sprint Planning Document]
    R --> S
    S --> T[Break Down into Tasks]
    T --> U[Update Status: In Progress]
    U --> V[Ask Clarifying Questions]
    V --> W[Update Document with Answers]
    W --> X[Work on User Story]
    X --> Y[Complete User Story]
    Y --> Z[Documentation-Code Consistency Check]
    Z --> AA[Human Reviews Report]
    AA --> AB[Verify Acceptance Criteria Met]
    AB --> AC[Mark Acceptance Criteria Complete]
    AC --> AD[Update Status: Done]
    AD --> AE[Conduct Retro Session]
```

**Key Steps**:
1. Create user story using template and document dependencies
2. Add to product backlog with initial status
3. Go through backlog refinement including dependency identification
4. Sort backlog by dependency order
5. Verify item meets [Definition of Ready](../criteria/definition-of-ready.md)
6. Select for sprint planning (ensuring dependencies are resolved)
6. Break down into tasks, ask clarifying questions, update document with answers, then work on user story
7. Run Documentation-Code Consistency Check; human reviews report
8. Verify all acceptance criteria met, then mark complete and update status
9. Conduct sprint retrospective (retro session)

## Defect Workflow

This flowchart shows the complete lifecycle of a defect, including decision points for critical defects that require immediate attention.

```mermaid
flowchart TD
    A[Create Defect] --> B[Use Defect Template]
    B --> C[Assign Unique ID DEF-XXX]
    C --> D[Fill Required Fields]
    D --> E[Document Steps to Reproduce]
    E --> F[Save to defects/DEF-XXX-description.md]
    F --> G[Add to Product Backlog Table]
    G --> H[Set Status: To Do]
    H --> I[Assign Priority]
    I --> J{Is Critical?}
    J -->|Yes| K[Immediate Action Required]
    K --> L[Add to Current Sprint]
    J -->|No| M[Estimate Story Points]
    M --> N{High Priority?}
    N -->|Yes| O[Address in Next Sprint]
    N -->|No| P[Wait for Sprint Planning]
    O --> Q[Add to Sprint Planning]
    P --> Q
    L --> Q
    Q --> R[Break Down into Tasks]
    R --> S[Update Status: In Progress]
    S --> T[Ask Clarifying Questions]
    T --> U[Update Document with Answers]
    U --> V[Work on Defect]
    V --> W[Complete Defect]
    W --> X[Documentation-Code Consistency Check]
    X --> Y[Human Reviews Report]
    Y --> Z[Verify Acceptance Criteria Met]
    Z --> AA[Mark Criteria Complete]
    AA --> AB[Update Status: Done]
    AB --> AC[Conduct Retro Session]
```

**Key Decision Points**:
- **Critical Defects**: Require immediate action and are added to current sprint
- **High Priority Defects**: Should be addressed in next sprint
- **Medium/Low Priority Defects**: Can wait for regular sprint planning

## Status Lifecycle

This state diagram shows the status transitions for backlog items throughout their lifecycle.

```mermaid
stateDiagram-v2
    state "To Do" as To_Do
    state "In Progress" as In_Progress
    state "Done" as Done
    [*] --> To_Do: Item Created
    To_Do --> In_Progress: Work Begins
    In_Progress --> Done: Work Finished
    In_Progress --> To_Do: Work Paused/Cancelled
    Done --> [*]
    
    note right of To_Do
        In backlog
        May or may not be assigned to sprint
    end note
    
    note right of In_Progress
        Item assigned to sprint
        Currently being worked on
    end note
    
    note right of Done
        Item finished
        Tested and verified
    end note
```

**Status Definitions**:
- **⭕ To Do**: In backlog; may or may not be assigned to a sprint. No work has begun.
- **⏳ In Progress**: Work has started (e.g. first task in progress). Assigned to active sprint.
- **✅ Done**: All acceptance criteria met; Documentation-Code Consistency Check run; human approved.

## AI-Assisted Task Flow

End-to-end flow for AI-assisted work from task start to commit:

```mermaid
flowchart TD
    Start[Task Start] --> Clarify[Clarifying Questions]
    Clarify --> Implement[Implementation]
    Implement --> Gap[Documentation-Code Consistency Check]
    Implement --> TD[Technical Debt Scan]
    Gap --> Human[Human Approval]
    TD --> Human
    Human --> DoD[Definition of Done]
    DoD --> Commit[Commit]
```

**Key steps**: Task start → clarifying questions → implementation → Documentation-Code Consistency + Technical Debt Identification Scan → human approval → Definition of Done → commit.

See [INDEX.md](../INDEX.md) for the full AI workflow and which files to attach for each task.

## How to Use These Diagrams

1. **Reference During Process**: Use these diagrams as quick reference when working with backlog items
2. **Onboarding**: Share with new team members to help them understand the workflow
3. **Process Improvement**: Use as a basis for discussing process improvements
4. **Documentation**: Include in process documentation to provide visual context

## Integration

These diagrams are integrated into:
- `project-management/processes/backlog-management-process.md` - Main process documentation
- User story template examples
- Sprint planning documentation

## Notes

- Diagrams use Mermaid.js syntax and render in most modern markdown viewers
- Diagrams should be updated if the process changes
- For best rendering, use markdown viewers that support Mermaid.js (GitHub, GitLab, VS Code with extensions, etc.)

