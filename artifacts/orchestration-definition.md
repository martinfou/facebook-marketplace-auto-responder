# Facebook Marketplace Auto-Responder

## Purpose

This orchestration designs a complete application system for automating tenant conversations on Facebook Marketplace for rental property landlords. The app uses an LLM to handle repetitive screening conversations (credit checks, pet/smoking policies, availability, visit scheduling) across multiple property listings simultaneously, in both French and English. It consists of a Chrome/Firefox browser extension that interfaces with Facebook Marketplace and a Laravel + Vue web dashboard for configuration, analytics, and human review of flagged conversations.

The system solves the problem of landlords spending excessive time answering the same questions repeatedly across dozens of listings and properties. By automating routine responses while flagging unusual or sensitive messages for human review, landlords can manage more properties with less effort while maintaining quality tenant interactions. The orchestration produces a comprehensive technical specification covering every layer of the application — from LLM prompt design to browser extension architecture, backend APIs, frontend dashboards, and analytics pipelines.

## Personas

Product Strategist: Defines the product vision, user stories, feature prioritization, and MVP scope for the Facebook Marketplace auto-responder. Specializes in rental property management workflows and marketplace automation products. Produces a product requirements document with prioritized feature backlog, user journey maps, and MVP definition.

LLM Prompt Engineer: Designs the complete prompt system for handling tenant conversations, including conversation flow templates, tone configuration, context injection from property knowledge bases, bilingual support, safety guardrails, and escalation logic. Expert in conversational AI patterns and multi-turn dialogue management. Produces prompt templates, conversation state machine design, and tenant screening scoring logic.

System Architect: Designs the overall system architecture spanning the browser extension, Laravel backend, Vue frontend, LLM integration layer, and external service connections (Google Drive, Google Calendar). Focuses on scalability, multi-tenancy, data flow, and security. Produces architecture diagrams, technology stack decisions, API contracts, and integration specifications.

Browser Extension Engineer: Specifies the browser extension architecture including content scripts, message interception on Facebook Marketplace, DOM interaction patterns, communication with the backend API, and cross-browser compatibility (Chrome/Firefox). Produces extension manifest design, content script specifications, and message handling protocols.

Backend Engineer: Designs the Laravel API including multi-tenant data models, authentication/authorization, message queuing, property knowledge base management, conversation state persistence, webhook handling, and integrations with Google Drive and Google Calendar. Produces database schema, API endpoint specifications, queue architecture, and integration designs.

UX/UI Designer: Designs the user interface and experience for both the browser extension overlay and the Vue web dashboard, including seller onboarding, property configuration, conversation review queue, tenant screening views, and analytics displays. Uses ASCII art for all mockups and wireframes. Produces wireframes, user flow diagrams, and component specifications.

Frontend Engineer: Designs the Vue.js dashboard application including component architecture, state management, routing, real-time updates for conversation monitoring, and responsive design. Translates UX/UI designs into technical frontend specifications. Produces component hierarchy, state management design, and frontend API integration specifications.

Analytics Engineer: Designs the analytics pipeline including metrics collection, trend calculation, conversion tracking, response time monitoring, tenant screening statistics, and dashboard data aggregation. Produces analytics data model, metrics definitions, reporting specifications, and dashboard data requirements.

Orchestrator: Coordinates all personas to ensure complete and consistent output across the entire orchestration. Tracks completion status and identifies dependencies between personas. Creates a summary report compiling key decisions and specifications from each persona. Generates a project status dashboard showing orchestration progress. Generates all artifacts in the orchestration-analysis-report/ folder.

Analyst: Analyzes all artifacts produced by other personas for contradictions, gaps, and inconsistencies. Identifies risks related to Facebook platform policies, privacy/data handling, and multi-tenancy security. Performs gap analysis on missing requirements or unaddressed edge cases. Creates quality metrics and completeness scoring. Produces prioritized recommendations with implementation roadmaps. Generates all artifacts in the orchestration-analysis-report/ folder.

Compiler: Compiles all artifacts from the orchestration into a unified, polished final product. Reads all specifications, designs, and analysis reports to produce a cohesive technical specification document. Ensures consistent tone, terminology, and language level across all compiled content. Generates all artifacts in the final-product/ folder.

## Sequence

1. Product Strategist defines the product vision, user stories, and MVP scope — analyzes requirements.md to create a comprehensive product requirements document with prioritized feature backlog, user journey maps for landlords managing multiple properties, and clear MVP boundaries. Produces product-requirements.md.

2. LLM Prompt Engineer designs the conversation system — uses product-requirements.md and the real conversation examples from requirements.md to create prompt templates, conversation state machines, bilingual response patterns, tone configuration system, tenant screening scoring logic, and safety guardrails. Produces conversation-system-design.md.

3. System Architect designs the overall system architecture — synthesizes product-requirements.md and conversation-system-design.md to define the full technology stack, system components, data flow between browser extension, Laravel backend, Vue frontend, and LLM service. Designs multi-tenant architecture, external integrations (Google Drive, Google Calendar), and security model. Produces system-architecture.md.

4. Browser Extension Engineer specifies the extension architecture — uses system-architecture.md to design content scripts, Facebook Marketplace DOM interaction, message interception, extension-to-backend communication, and cross-browser compatibility. Produces browser-extension-spec.md.

5. Backend Engineer designs the Laravel API — uses system-architecture.md, conversation-system-design.md, and browser-extension-spec.md to design database schema, API endpoints, multi-tenant data isolation, message queuing, property knowledge base storage, conversation state persistence, and external service integrations. Produces backend-api-spec.md.

6. UX/UI Designer creates interface designs — uses product-requirements.md, conversation-system-design.md, and system-architecture.md to design wireframes and user flows for the browser extension overlay, web dashboard (property management, conversation review queue, tenant screening, settings), and seller onboarding. Produces ux-ui-design.md.

7. Frontend Engineer designs the Vue.js dashboard — uses ux-ui-design.md, backend-api-spec.md, and system-architecture.md to specify Vue component architecture, state management (Pinia/Vuex), routing, real-time conversation monitoring via WebSockets, and responsive layout implementation. Produces frontend-spec.md.

8. Analytics Engineer designs the analytics system — uses backend-api-spec.md, product-requirements.md, and system-architecture.md to define metrics collection pipeline, KPI definitions (response time, conversion rate, screening pass rate), trend calculations, and dashboard data aggregation queries. Produces analytics-spec.md.

9. Orchestrator compiles summary report and status dashboard — reviews all artifacts from steps 1-8, creates executive summary of key decisions and specifications, and generates project status dashboard. Produces orchestration-analysis-report/project-summary.md and orchestration-analysis-report/status-dashboard.md.

10. Analyst performs comprehensive analysis — analyzes all artifacts for contradictions, gaps, risks (Facebook policy compliance, privacy, multi-tenancy security), and quality issues. Produces orchestration-analysis-report/gap-analysis.md, orchestration-analysis-report/risk-assessment.md, and orchestration-analysis-report/quality-metrics.md.

11. Compiler compiles all artifacts into a unified final product — reads all specifications, designs, and analysis reports to produce a cohesive, polished technical specification. Ensures consistent tone, terminology, and cross-references across all sections. Produces final-product/README.md, final-product/executive-summary.md, and final-product/complete-technical-specification.md.

## Artifact Dependencies

- Step 1: Inputs: requirements.md → Outputs: product-requirements.md
- Step 2: Inputs: requirements.md, product-requirements.md → Outputs: conversation-system-design.md
- Step 3: Inputs: product-requirements.md, conversation-system-design.md → Outputs: system-architecture.md
- Step 4: Inputs: system-architecture.md → Outputs: browser-extension-spec.md
- Step 5: Inputs: system-architecture.md, conversation-system-design.md, browser-extension-spec.md → Outputs: backend-api-spec.md
- Step 6: Inputs: product-requirements.md, conversation-system-design.md, system-architecture.md → Outputs: ux-ui-design.md
- Step 7: Inputs: ux-ui-design.md, backend-api-spec.md, system-architecture.md → Outputs: frontend-spec.md
- Step 8: Inputs: backend-api-spec.md, product-requirements.md, system-architecture.md → Outputs: analytics-spec.md
- Step 9: Inputs: all artifacts from steps 1-8 → Outputs: orchestration-analysis-report/project-summary.md, orchestration-analysis-report/status-dashboard.md
- Step 10: Inputs: all artifacts from steps 1-9 → Outputs: orchestration-analysis-report/gap-analysis.md, orchestration-analysis-report/risk-assessment.md, orchestration-analysis-report/quality-metrics.md
- Step 11: Inputs: all artifacts from steps 1-10 → Outputs: final-product/README.md, final-product/executive-summary.md, final-product/complete-technical-specification.md

## Final Product Preferences

- Target Audience: Technical (developers who will build the application)
- Tone: Professional
- Language Level: Technical Deep-Dive
- Structure: Multi-Document
