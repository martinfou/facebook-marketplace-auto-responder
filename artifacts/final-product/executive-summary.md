# Executive Summary — Facebook Marketplace Auto-Responder

**Audience**: Stakeholders, sponsors, product owners  
**Date**: 2026-03-31

---

## The problem

Property managers in Greater Montreal and Longueuil list many rental units on **Facebook Marketplace**. Buyers ask the same questions repeatedly—availability, credit and **TAL** (rental board) history, pets and smoking, appliances, and visit logistics (lockbox vs. contact person). Answering manually across **multiple properties** is slow, error-prone, and does not scale.

## The solution

**Facebook Marketplace Auto-Responder** is a software system that:

1. **Watches** Marketplace conversations through a **browser extension** the seller installs (Chrome or Firefox).  
2. **Understands** messages using a **large language model** configured with **per-property facts** (text from the listing and a structured knowledge base).  
3. **Replies automatically** when the situation is routine and safe, in **French or English** as appropriate.  
4. **Queues sensitive, unclear, or suspicious messages** for the seller to review in a **web dashboard** before anything is sent.  
5. Provides **analytics** (response times, volumes, screening trends) so sellers can improve listings and automation settings.

There is **no automated analysis of listing photos**; only **text** is used as model context.

## Why it is built this way

- **Marketplace has no stable public API** for all sellers, so a **browser extension** is the practical integration path.  
- A **web application** (Laravel API + Vue dashboard) gives secure configuration, review, and reporting **outside** Facebook.  
- **Human-in-the-loop** reduces the risk of wrong commitments (visits, codes, lease terms) and helps with **trust and compliance**.

## MVP scope (first release)

**Included**

- Multi-organization accounts with data separation  
- Property knowledge base and linked Marketplace URLs  
- Extension: message capture, backend sync, outbound send with **pause**  
- LLM conversation flow with **screening score** and **review queue**  
- Core **dashboard** pages: overview, properties, conversations, review, basic analytics  
- **Bilingual** assistant behavior and dashboard language support  

**Phased soon after (e.g. v1.1)**

- Deeper **Google Drive** and **Google Calendar** integration (OAuth, visits)  

**Explicitly out of scope (v1)**

- Computer vision on photos  
- Fully autonomous price negotiation without review  

## Technology (plain language)

- **Secure server** (Laravel) stores conversations, settings, and scores.  
- **Database** (PostgreSQL) and **queues** (Redis) handle reliability and scale.  
- **Dashboard** (Vue) is a modern single-page web app.  
- **AI provider** is called from the server only—**keys are never embedded** in the extension.

## Major risks (honest view)

| Risk | Plain-language impact |
|------|------------------------|
| **Platform rules** | Automation may conflict with Meta policies; accounts could be limited. Mitigation: transparency, conservative behavior, human review, legal advice. |
| **Facebook UI changes** | The extension depends on the page structure; updates may be needed often. Mitigation: structured selector maintenance and telemetry. |
| **Wrong answers** | Models can hallucinate if not constrained. Mitigation: facts from knowledge base only, thresholds, review queue, audit trail. |
| **Privacy (Quebec Law 25)** | Conversations contain personal information. Mitigation: retention limits, contracts with subprocessors (e.g. AI vendor), data subject requests. |

## Recommended next steps

1. **Legal / privacy review** of automation and data handling.  
2. **MVP engineering**: authentication → properties/listings → ingest pipeline → LLM → review UI → analytics rollups.  
3. **Pilot** with a small number of sellers and **review-heavy** defaults.  
4. Iterate on **selectors**, **prompts**, and **thresholds** using real (consented) traffic.

---

### Technical appendix (terms)

- **LLM**: Large language model used to draft structured responses.  
- **TAL**: *Tribunal administratif du logement* — Quebec rental board.  
- **Knowledge base**: Structured fields (rent, policies, visit instructions) attached to each property.  
- **Review queue**: List of conversations where automation requires human approval before sending.

For full technical detail, see [complete-technical-specification.md](complete-technical-specification.md).
