# Organization Schema - Facebook Marketplace Auto-Responder

## Selected Structure: Flat Structure (Option 3)

All persona artifacts are placed directly in the `artifacts/` folder with no subdirectories, except for Orchestrator/Analyst artifacts (in `orchestration-analysis-report/`) and Compiler artifacts (in `final-product/`).

## Folder Structure

```
artifacts/
├── requirements.md
├── orchestration-definition.md
├── organization-schema.md
├── product-requirements.md
├── conversation-system-design.md
├── system-architecture.md
├── browser-extension-spec.md
├── backend-api-spec.md
├── ux-ui-design.md
├── frontend-spec.md
├── analytics-spec.md
├── orchestration-analysis-report/
│   ├── project-summary.md
│   ├── status-dashboard.md
│   ├── gap-analysis.md
│   ├── risk-assessment.md
│   └── quality-metrics.md
└── final-product/
    ├── README.md
    ├── executive-summary.md
    └── complete-technical-specification.md
```

## Naming Conventions

- All artifact filenames use **kebab-case** (lowercase with hyphens)
- All artifacts use `.md` extension
- Filenames should be descriptive and match the artifact content

## Folder Mapping Rules

| Persona | Output Location |
|---------|----------------|
| Product Strategist | `artifacts/product-requirements.md` |
| LLM Prompt Engineer | `artifacts/conversation-system-design.md` |
| System Architect | `artifacts/system-architecture.md` |
| Browser Extension Engineer | `artifacts/browser-extension-spec.md` |
| Backend Engineer | `artifacts/backend-api-spec.md` |
| UX/UI Designer | `artifacts/ux-ui-design.md` |
| Frontend Engineer | `artifacts/frontend-spec.md` |
| Analytics Engineer | `artifacts/analytics-spec.md` |
| Orchestrator | `artifacts/orchestration-analysis-report/project-summary.md`, `artifacts/orchestration-analysis-report/status-dashboard.md` |
| Analyst | `artifacts/orchestration-analysis-report/gap-analysis.md`, `artifacts/orchestration-analysis-report/risk-assessment.md`, `artifacts/orchestration-analysis-report/quality-metrics.md` |
| Compiler | `artifacts/final-product/README.md`, `artifacts/final-product/executive-summary.md`, `artifacts/final-product/complete-technical-specification.md` |

## Instructions for Personas

- Place all output artifacts directly in the `artifacts/` folder unless you are the Orchestrator, Analyst, or Compiler
- Orchestrator and Analyst: place all outputs in `artifacts/orchestration-analysis-report/`
- Compiler: place all outputs in `artifacts/final-product/`
- Reference input artifacts using relative paths from the orchestration root (e.g., `artifacts/product-requirements.md`)
