# Technical appendix

This is the controlled reference record for the build: specifications, sources, hazards, decisions, open questions, and verification. It is not a second installation sequence. The practical order is in the [Builder’s Guide](#builders-guide). Day-to-day operation is in the [User’s Guide](#users-guide). Architecture for Tyrah is in [System Design](#system-design).

## How this appendix maps to part one

| If you need… | Start here | Then |
|---|---|---|
| Locked loop, forbidden designs, part glossary | [System Design](#system-design) / [The glycol loop](#locked-architecture) / [The Parts](#the-parts) | [System Architecture](#system-architecture) · [Decision Log](#decision-log) |
| Staging, fuel, altitude, mixer numbers | [The Numbers](#the-numbers-that-matter) | [Verified Requirements](#verified-requirements) · [Source Register](#source-register) |
| Living with cabin heat, dishes, AC | [User’s Guide](#users-guide) | [Isotemp value study](#isotemp-value-study) |
| What is on the van vs garage | [Current Status](#current-status-report) | [Parts Inventory](#parts-inventory) · [BOM](#bom-and-missing-parts) |
| Serial install HOLDs | [Builder’s Guide](#builders-guide) | [Installation](#installation-procedure) · [Commissioning](#commissioning-procedure) |
| Dual finish lines (diesel vs complete) | [How to Use](#how-to-use-this-book) · [Acceptance](#acceptance) | [HOLD 9](#hold-9) · [Q-009](#q-009) |
| Keep-or-sell Isotemp numbers | [Isotemp value study](#isotemp-value-study) | [Coolant Loop](#coolant-loop) · [DEC-007](#dec-007) |
| Locked facts (contradiction hunt) | [Locked facts checklist](#locked-facts-checklist) | Fix Design → Status → Build → appendix in one pass |
| Photo knowledge extracts | [electrical](#photo-extract-electrical) · [heater](#photo-extract-heater) · [insulation](#photo-extract-insulation) | Cross-check [Q-025](#q-025) · HOLD 4 fuse breakout · HOLD S hatches |
| House / sofa working draft | [Working design understanding](#working-design-understanding) | Promote into [Controls](#controls) · HOLD S · [Q-009](#q-009) |
| Owner answers still open | [Questions for You](#questions-for-you-in-order) | full [Open Questions](#open-questions) table |
| Stop rules | [Safety](#safety) | [Hazard Register](#hazard-register) |

## Finish lines (same as part one)

- **Diesel cabin heat and diesel hot water at the Duda** can pass after first fire without [HOLD 9](#hold-9).
- **Complete system** (including Isotemp AC) requires HOLD 9.
- After a low-elevation diesel first fire, only [Q-022](#q-022) and [Q-009](#q-009) / HOLD 9 may still wait. The altitude kit is **not** on that wait list—land it at HOLD 4 ([Q-015](#q-015) / [DEC-006](#dec-006)).

The [Isotemp value study](#isotemp-value-study) is the keep-or-sell and cycling analysis for the Slim Square. Read it when you need the numbers behind the User’s Guide.

Working drafts that are not yet locked live under `book/research/` (for example [Working design understanding](#working-design-understanding)). Promote VERIFIED rows into part one and the controlled appendix; do not invent a second report.
