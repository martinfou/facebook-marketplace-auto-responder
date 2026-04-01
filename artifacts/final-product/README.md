# Facebook Marketplace Auto-Responder — Final Product (Technical Specification Package)

This folder is the **compiled output** of the multi-persona orchestration (Product → AI → Architecture → Extension → Backend → UX → Frontend → Analytics → Orchestrator → Analyst → Compiler).

## Document structure

| Document | Purpose | Primary audience |
|----------|---------|------------------|
| [executive-summary.md](executive-summary.md) | Problem, solution, MVP, risks, next steps (non-technical friendly) | Stakeholders, sponsors |
| [complete-technical-specification.md](complete-technical-specification.md) | Unified build spec (architecture through analytics + roadmap) | Engineering |

**Source artifacts** (full detail, flat layout): see `artifacts/` per [organization-schema.md](../organization-schema.md).

## How to use this specification

1. **Stakeholders / PM**: Read **Executive Summary** first.  
2. **Tech lead**: Read **Complete Technical Specification** front to back once, then deep-link into source artifacts for edge detail.  
3. **Role-based reading**  
   - Extension engineer: Complete Spec §4 + `artifacts/browser-extension-spec.md`  
   - Backend engineer: §3, §5, §8 + `artifacts/backend-api-spec.md`  
   - Frontend engineer: §6–7 + `artifacts/frontend-spec.md`  
   - AI/ML engineer: §2 + `artifacts/conversation-system-design.md`  
   - Data/analytics: §8 + `artifacts/analytics-spec.md`  
4. **Quality gate**: Review `artifacts/orchestration-analysis-report/gap-analysis.md` and `risk-assessment.md` before cutting a production release.  
5. **Terminology**: This package standardizes on **Seller** (account holder), **Buyer** (Marketplace inquirer), **Property** (rental unit + KB), **Conversation** (thread). UI copy may still say “tenant” for domain familiarity; the glossary maps terms.

## Quick links (Complete Technical Specification sections)

- §1 Introduction & product vision  
- §2 Conversation system (LLM, states, scoring, safety)  
- §3 System architecture  
- §4 Browser extension  
- §5 Backend API  
- §6 UX/UI (ASCII wireframes referenced)  
- §7 Frontend (Vue)  
- §8 Analytics  
- §9 Risk & mitigation summary  
- §10 Implementation roadmap  
- §11 Appendices (glossary)

## Orchestration analysis

- [Project summary](../orchestration-analysis-report/project-summary.md)  
- [Status dashboard](../orchestration-analysis-report/status-dashboard.md)  
- [Gap analysis](../orchestration-analysis-report/gap-analysis.md)  
- [Risk assessment](../orchestration-analysis-report/risk-assessment.md)  
- [Quality metrics](../orchestration-analysis-report/quality-metrics.md)
