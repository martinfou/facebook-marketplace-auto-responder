# Requirements - Facebook Marketplace Auto-Responder

## Orchestration Type
Develop an application that automatically answers questions on Facebook Marketplace using an LLM.

## Initial Description
The user wants to build an app that monitors Facebook Marketplace listings and automatically responds to buyer questions using a large language model. The app should handle common inquiries about listed items (price, availability, condition, shipping, etc.) in a natural, conversational manner.

## Detailed Requirements (Q&A)

1. **Integration Method**: Browser extension (Chrome/Firefox extension that interfaces with Facebook Marketplace)
2. **Scope of Responses**: Full conversation handling — answer questions, negotiate prices, schedule meetups, and handle follow-ups
3. **Context Awareness**: Text-based listing details only (title, description, price) — no photo analysis
4. **Human-in-the-Loop**: Auto-send routine answers; queue unusual or sensitive messages for human review
5. **Tone/Personality**: Configurable per seller (each seller can set their preferred communication tone)
6. **Safety Guardrails**: Flag suspicious messages (scams, inappropriate content) for human review but don't block
7. **Multi-Listing Support**: Monitor and respond across all active listings simultaneously
8. **Multi-Tenant**: Yes — multiple seller accounts supported
9. **Platform**: Browser extension + web dashboard for configuration and analytics; tech stack is Laravel (backend) + Vue (frontend)
10. **Analytics**: Full analytics dashboard with metrics, trends, response times, conversation volumes, and conversion rates

## Selected Persona Order
**Option 3: Strategy → Intelligence-First → Platform**
`Product Strategist → LLM Prompt Engineer → System Architect → Browser Extension Engineer → Backend Engineer → UX/UI Designer → Frontend Engineer → Analytics Engineer → Orchestrator → Analyst`

## Domain Context
- **Industry**: Rental property management (landlord managing multiple properties)
- **Language**: French (Quebec French — conversations are in French)
- **Location**: Montreal and Longueuil, Quebec, Canada
- **Use Case**: Automating repetitive tenant screening conversations on Facebook Marketplace
- **Conversation Patterns Identified**:
  1. Greeting + availability date inquiry
  2. Credit check / TAL (Tribunal administratif du logement) screening
  3. Animals / smoking policy questions
  4. Property details (appliances, furnishing, dimensions)
  5. Visit scheduling (lockbox codes, contact persons, phone numbers)
  6. Redirecting to alternative properties when one is rented
  7. Follow-up messages (rejection notices, status updates)
- **Multi-property management**: Seller manages multiple properties simultaneously (Chabot, Gardenville, Cartier, Quinn, 6e Ave, Marmier, Adelaide)
- **Visit coordination**: Some properties use lockboxes, others require contacting specific people for visits

## Scoping Questions (Yes/No)

1. **Bilingual support**: Yes — app must support French and English conversations
2. **Per-property knowledge base**: Yes — each listing has its own configured data (address, price, availability, visit instructions, screening questions)
3. **Auto-redirect to alternative properties**: Yes — when a property is rented, automatically suggest available alternatives
4. **Contact persons per property**: Yes — store and manage visit coordinators per property (name + phone number)
5. **Conversation state tracking**: Yes — track per-buyer state so screening questions aren't repeated
6. **Lockbox/self-visit instructions**: Yes — automatically send access codes and addresses for self-guided visits
7. **Tenant screening scoring**: Yes — flag buyers based on credit, pets, smoking, and other criteria
8. **Templated rejection/status messages**: Yes — support pre-built messages for rejections, status updates, and follow-ups
9. **Google Drive integration**: Yes — share property photo albums/links with interested buyers
10. **Calendar integration**: Yes — connect to Google Calendar for visit scheduling and double-booking prevention
