# Gap Analysis — Facebook Marketplace Auto-Responder

**Analyst step**: 10  
**Inputs**: All artifacts through Orchestrator outputs

---

## Requirements Coverage Matrix (10 Scoping Decisions)

| # | Decision (`requirements.md`) | Where addressed | Gap / note |
|---|-------------------------------|-----------------|------------|
| 1 | Bilingual FR/EN | `conversation-system-design.md`, `ux-ui-design.md`, `frontend-spec.md` | None |
| 2 | Per-property knowledge base | `product-requirements.md`, `backend-api-spec.md`, `ux-ui-design.md` | None |
| 3 | Auto-redirect when rented | `conversation-system-design.md`, `product-requirements.md` | Backend redirect listing query rules could use explicit endpoint spec (nice) |
| 4 | Contact persons per property | `backend-api-spec.md` (`property_contacts`), UX KB tabs | None |
| 5 | Conversation state tracking | `conversation-system-design.md`, `backend-api-spec.md` | None |
| 6 | Lockbox / self-visit | Conversation + UX + backend KB JSON | Credential visibility rules in UI (mask until release) — UX mentions tooltip; enforce in API policy |
| 7 | Tenant screening scoring | Conversation + backend | None |
| 8 | Templated rejection/status | Conversation + backend templates | None |
| 9 | Google Drive | Architecture + backend + product phase 1.1 | OAuth scope minimal strategy still high-level |
| 10 | Google Calendar | Same | Freebusy algorithm detail deferred |

**Coverage**: 10/10 referenced; **2** integrations intentionally lighter in API detail until phase 1.1.

---

## Feature Gap List (Product → Technical)

| Feature area | Spec depth | Gap |
|--------------|------------|-----|
| Negotiation / price change | Product: review-first | LLM boundary stated; no dedicated “price change request” sub-flow in conversation doc | Low — covered by escalation |
| Role-based dashboard access | Product optional | No RBAC tables | Acceptable for MVP |
| Weekly email analytics | Analytics Could | No Mailable template | Deferred |
| E2E test plan | Frontend mentions Playwright | No CI matrix | Add in implementation |
| DevOps | Architecture deployment sketch | No K8s/Forge runbook, backups, DR | Gap for ops |

---

## Missing Specifications

| Item | Severity | Recommendation |
|------|----------|----------------|
| OpenAPI / JSON Schema for LLM output | Medium | Add `storage/app/schemas/assistant_response.json` + CI validation |
| Exact Facebook URL patterns for thread detection | Medium | Living doc in extension repo + telemetry |
| Rate limits numeric defaults per org | Low | `config/rate-limits.php` in implementation |
| Data export for GDPR/Law 25 erasure | Medium | Define `DELETE /api/v1/me/data` job flow |

---

## Unaddressed Edge Cases

- **Multi-buyer group threads** (if Marketplace supports): not modeled; assume 1:1 buyer thread.  
- **Seller reads message only in mobile app**: extension won’t see it — **sync gap**; document.  
- **Message edit/delete by Facebook**: idempotency by hash may duplicate or miss — needs product rule.  
- **Same buyer, multiple listings**: thread mapping must pick correct listing — `resolve-listing` flow mitigates partially.

---

## Bilingual Coverage Assessment

| Layer | FR/EN | Assessment |
|-------|-------|------------|
| LLM replies | Yes | Strong |
| Dashboard chrome | Vue I18n | Strong |
| Analytics | Locale for display only | Adequate |
| Email reports | N/A in MVP | Gap if enabled later |
| Extension popup | Stated sync preference | Strings need `fr-CA` file in extension package |

---

## Summary

**No critical requirement from the 10 scoping decisions is missing** from the artifact set. Remaining gaps are **operational** (DevOps, DSR), **integration depth** (Google phase), and **edge-case product rules** (mobile-only, edits).
