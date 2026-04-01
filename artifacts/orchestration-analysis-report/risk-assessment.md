# Risk Assessment — Facebook Marketplace Auto-Responder

**Analyst step**: 10

---

## Risk Register

| # | Risk | Category | Severity | Likelihood | Mitigation |
|---|------|----------|----------|------------|------------|
| R1 | Meta restricts or bans accounts for automation / ToS breach | Platform | Critical | Likely | Conservative defaults, human-in-the-loop, clear user disclosure, rate limits, human-like delays, ability to pause globally |
| R2 | DOM changes break message detection | Technical | High | Certain | SelectorRegistry versioning, rapid release, telemetry, fallback polling |
| R3 | Cross-tenant data leak via mis-scoped query | Security | Critical | Unlikely | Global scopes, policies, automated tests, pen test |
| R4 | Prompt injection exfiltrates system instructions or KB | Security | High | Possible | Separate roles, output schema validation, logging alerts |
| R5 | LLM outage or cost spike | Technical | Medium | Possible | Circuit breaker, review queue stall message, per-org budgets |
| R6 | Quebec Law 25 — unlawful collection/retention of PI | Legal | High | Possible | DPIA, minimization, retention policy (analytics spec), consent, DSR process |
| R7 | Extension store rejection (permissions / policy) | Business | Medium | Possible | Minimal permissions narrative, privacy policy, data handling disclosure |
| R8 | Incorrect auto-send (hallucinated facts) | Product | High | Possible | KB-only facts rule, low-confidence → review, audit log |
| R9 | Calendar double-book despite integration | Technical | Medium | Unlikely | Idempotent event IDs, conflict UI, human confirm |
| R10 | Scam proceeds because “flag not block” | Product | Medium | Possible | Training on landlord review SLA; prominent queue UX |

---

## Facebook Platform Compliance Analysis

**Observation**: Automated messaging and DOM automation may conflict with Meta **Terms** and **Community Standards** depending on interpretation and enforcement. This specification **does not** provide legal clearance.

**Mitigations (product + engineering)**:

- Obtain **legal review** before public launch.  
- **Transparency**: Sellers acknowledge automation; opt-in per org.  
- **Human oversight**: Default review for sensitive categories; pause switches.  
- **Behavior**: Avoid spam cadence; respect thread context; do not scrape beyond conversation UI needed for the feature.  
- **Monitoring**: Track abnormal block rates; kill switch.

---

## Privacy & Legal Compliance (Quebec Law 25)

| Topic | Risk | Mitigation |
|-------|------|------------|
| Consent | Processing Marketplace messages contains third-party PI | Privacy policy; purpose limitation; seller as responsible org |
| Retention | Long chat history | Analytics retention per spec; conversation retention configurable |
| Rights | Access/rectification/erasure | Export/delete workflows; document processor sub-processors (LLM provider) |
| Transfers | LLM in US or other regions | DPAs, SCCs as applicable; minimize fields in prompts |
| Security | Breach notification | Incident plan; encryption at rest for tokens |

---

## Security Threat Model (Summary)

| Threat | Vector | Control |
|--------|--------|---------|
| Stolen PAT | Malware on seller machine | Short TTL, revoke from dashboard, device list |
| XSS in dashboard | Vue escaping + CSP | Standard Laravel + Vite CSP headers |
| CSRF | Sanctum cookie | Stateful domain allowlist |
| Tenant ID tampering | Path params | Authorize policies on every mutation |
| Replay ingest | Network | Idempotency-Key + unique constraints |

---

## Technical Risk Analysis

- **LLM JSON drift**: Schema validation + repair retry once.  
- **Queue backlog**: Horizon monitoring, autoscale workers.  
- **Postgres hot rows**: Partition analytics; index conversations.

---

## Business Risk Analysis

- Dependence on **single channel** (Marketplace).  
- **Adoption friction**: extension install + pairing.  
- **Competitive**: Generic chat tools — differentiation = rental KB + screening + Quebec context.

---

## Severity × Likelihood Legend

- **Severity**: Critical / High / Medium / Low  
- **Likelihood**: Certain / Likely / Possible / Unlikely  

Prioritize mitigations for **R1, R3, R4, R6, R8**.
