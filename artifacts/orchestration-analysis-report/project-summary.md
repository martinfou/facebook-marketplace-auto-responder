# Project Summary — Facebook Marketplace Auto-Responder

**Orchestration**: Steps 1–8 complete (technical personas)  
**Date**: 2026-03-31

---

## Executive Summary

The orchestration produced an end-to-end specification for a **multi-tenant** system that automates **Facebook Marketplace** rental inquiries for **Quebec property managers**. The product pairs a **Manifest V3 browser extension** (Chrome/Firefox) for capture and send with a **Laravel 11+ API**, **Vue 3** dashboard, and an **LLM** layer implementing a structured JSON dialogue contract. **Routine** replies can be auto-sent; **sensitive, ambiguous, or suspicious** content is **queued for human review**. The specification covers **bilingual (FR/EN)** conversations, **per-property knowledge bases**, **tenant screening scores (0–100)**, optional **Google Drive** and **Google Calendar** integrations, and an **analytics** pipeline (events, rollups, dashboard APIs).

Cross-cutting themes: **organization-scoped data isolation**, **server-side-only LLM secrets**, **idempotent extension ingest**, and **selector resilience** for Meta’s volatile DOM. MVP deliberately includes core automation, review queue, and basic analytics, while some Google polish is phased to **1.1** per product requirements.

---

## Key Decisions by Domain

### Product (Product Strategist)

- **Problem**: Repetitive screening across many listings (Montreal/Longueuil, FR-primary).  
- **MVP**: Extension sync + KB + LLM + review queue + screening scores + core analytics; Google Drive/Calendar **phase 1.1** for full OAuth depth.  
- **MoSCoW**: Must include multi-tenant auth, ingest, state, scoring, templates; won’t include photo/vision analysis.

### AI / Conversation (LLM Prompt Engineer)

- **Nine-state** machine (`INITIAL` → … → `COMPLETED` / `REJECTED`) with non-linear intent handling.  
- **Strict JSON** assistant output contract (FR/EN fields, intents, state proposal, screening deltas, escalation).  
- **Thresholds**: `auto_send_min`, `flag_below`, `release_visit_credentials_min` drive auto-send vs review vs withheld visit credentials.  
- **Safety**: Seven guardrail categories (scam, injection, PII, discrimination-sensitive, harassment, legal overreach, credential policy).

### Architecture (System Architect)

- **Stack**: Laravel, PostgreSQL, Redis queues, Vue 3 + Pinia + Vite + Tailwind, Reverb/Soketi + Echo, provider-agnostic LLM HTTPS client.  
- **Flows**: Ingest synchronous ack + async worker; optional **polling outbox** from extension MVP (WebSocket push noted as future).  
- **Multi-tenancy**: Application-level `organization_id` scoping; optional PostgreSQL RLS later.

### Browser Extension (Browser Extension Engineer)

- **MV3** service worker + content scripts on **Marketplace and Messenger** URLs.  
- **SelectorRegistry** versioning for DOM resilience.  
- **APIs**: `POST /api/v1/threads/ingest`, `GET /api/v1/extension/outbox`, delivery result callbacks, `extension/mode` pause.  
- **Security**: Bearer PAT in `storage.local`; no LLM keys in extension.

### Backend (Backend Engineer)

- **Schema**: Organizations, users, sellers, properties, listings, conversations, messages, review tasks, screening snapshots, analytics events, templates, OAuth connections, devices.  
- **Jobs**: `ProcessIncomingMessage`, delivery, analytics rollups.  
- **Auth**: Sanctum (dashboard) + PAT (extension) with abilities.

### UX/UI (UX/UI Designer)

- **ASCII wireframes** for popup, dashboard Home, Properties/KB, Conversations, Review queue, Screening detail, Analytics, Settings.  
- **Flows**: Onboarding (pair extension), daily review-first workflow, property setup.  
- **A11y**: WCAG 2.1 AA target; keyboard shortcuts on review.

### Frontend (Frontend Engineer)

- **Structure**: `pages/`, `components/common|conversations|properties`, Pinia stores mirroring domains, Axios `http.ts`, Echo subscriptions on `private-tenant.{org}`.  
- **i18n**: Vue I18n `en` + `fr-CA`.

### Analytics (Analytics Engineer)

- **Raw** `analytics_events` (90d retention) + **daily rollups** (2y) + **Redis** same-day counters.  
- **KPIs**: Median first response, auto-send rate, flag rate, screening averages, funnel stages, per-property volume.

---

## Technology Stack Overview (Consolidated)

| Layer | Technology |
|-------|------------|
| API | Laravel 11+, PHP 8.2+, Sanctum |
| DB | PostgreSQL 15+ |
| Cache / queue | Redis 7+, Laravel Queue |
| Real-time | Laravel Reverb or Soketi, Laravel Echo |
| Dashboard | Vue 3.4+, Vite 5, Pinia 2, Vue Router 4, Tailwind 3, Axios, Vue I18n 9 |
| Extension | Manifest V3, Chrome + Firefox (polyfill) |
| LLM | HTTPS API (OpenAI, Anthropic, or other) behind `LlmOrchestrator` |
| Integrations | Google OAuth, Drive/Calendar APIs |

---

## MVP Scope Summary

| In MVP | Deferred / phased |
|--------|-------------------|
| Extension ingest + outbox + pause | Fine-grained WebSocket push to extension |
| KB, listings URL map, LLM pipeline | Full PDF export, advanced PDF analytics |
| Review queue + screening snapshots | Some “nice” analytics charts |
| Core analytics + rollups | Weekly email report (Could) |
| Bilingual LLM + UI | — |
| Phase 1.1: Drive + Calendar depth | — |

---

## Cross-Cutting Concerns

| Concern | Assessment |
|---------|------------|
| Multi-tenancy | Consistent: org scope in backend, private Echo channels, PAT tied to seller/org. |
| Bilingual | Addressed in conversation JSON, UX i18n, extension locale sync; analytics language-neutral. |
| Security | Auth split dashboard/extension; injection mitigations in conversation doc + backend orchestrator; extension no secrets beyond PAT. |
| Real-time | Backend broadcasts review/state events; frontend subscribes; extension uses polling in MVP spec — **document as intentional**. |
| Terminology | Mixed “landlord/tenant/thread” vs Compiler target “seller/buyer/conversation” — **Compiler normalizes** in `final-product/`. |

---

## Open Questions & Risks

1. **Meta ToS / automation detection** — operational and legal exposure; mitigations in Analyst `risk-assessment.md`.  
2. **DOM stability** — high churn; requires telemetry and rapid release process.  
3. **Outbox polling vs push** — acceptable for MVP load; revisit for scale.  
4. **Law 25 / privacy** — retention, consent, DPA — see risk assessment.  
5. **Exact OpenAPI** — endpoint request/response schemas still narrative; generate OpenAPI in implementation.

See also: `status-dashboard.md`, `gap-analysis.md`, `risk-assessment.md`, `quality-metrics.md`.
