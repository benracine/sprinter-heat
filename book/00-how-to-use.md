# How to Use This Book

| Stage | Go here | You leave knowing… |
| --- | --- | --- |
| **1. Architecture** | [System Design](#system-design) | What the system is, how heat moves, and what is forbidden |
| **2. Use** | [User’s Guide](#users-guide) | How to operate the system day to day |
| **3. Make it** | [Builder’s Guide](#builders-guide) | Numbered steps and HOLD checklists |

### Start here

Read in order: [Safety](#safety), [System Design](#system-design), [User’s Guide](#users-guide), [Current Status](#current-status-report), [Builder’s Guide](#builders-guide). While you build, jump back to Safety and System Design (especially [Controls](#controls) and [The Parts](#the-parts)) when a HOLD says so. The User’s Guide is how the finished system should work—do not light the heater from that chapter until Acceptance; after Acceptance, use the User’s Guide day to day.

### Lookups

Numbers and citations: [The Numbers](#the-numbers-that-matter) · [Sources](#source-register) · [Decisions](#decision-log) · [Questions for You](#questions-for-you-in-order) · [Open Questions](#open-questions) · [Hazards](#hazard-register). Part two is reference, not the work order. Codes such as [SRC-009](#src-009) jump to the source register. DANGER, CAUTION, and MUST boxes override the surrounding text.

Part names are defined once in [The Parts](#the-parts). On-van vs garage inventory is in [Current Status](#current-status-report).

## Four Project Phases {#project-phases-overview}

Four phases, not twenty tasks. Finish one phase before the next. Inside a phase, finish each HOLD before you move on. Steps live in the [Builder’s Guide](#project-phases).

| Phase | What you finish | Steps | Now |
| --- | --- | --- | --- |
| **A. Fuel and exhaust** | Underbody fuel and exhaust checked safe | 1–2 | **← do this next** (on van; HOLD 1–2 still open) |
| **B. Mount and wire** | WFT and Isotemp mounted; EasyStart / heater 12 V and altitude kit landed; Isotemp AC cable routed but dead | 3–4 | After A |
| **C. Dry plumbing** | Glycol and freshwater hoses connected, still empty | 5–6 | Later |
| **D. Fill and first fire** | Water-first loop check → glycol loop + Isotemp chamber → first fire | 7–8 (+9) | Last |

::: {.tip}
**Next — Phase A.** Fuel pickup and exhaust are already on the van. Finish HOLD 1 and HOLD 2 against [SRC-009](#src-009) before you open Phase B.
:::

### What can wait until after first fire

Only these stay open after a low-elevation diesel first fire that gives cabin heat and hot water at the Duda:

- Cabin thermostat auto-call ([Q-022](#q-022)) — start heat from the EasyStart Timer  
- Isotemp AC and upstream GFCI ([Q-009](#q-009)) — [HOLD 9](#hold-9) only  

Everything else on the HOLD path through step 8 is required for that first fire — including a filled glycol loop, a filled static Isotemp chamber, EasyStart / heater 12 V, the master switch, and cabin fans.

The altitude kit does **not** block a low camp first fire, but it is **not** on this wait list. Land it at HOLD 4 while the EasyStart harness is open ([Q-015](#q-015) / [DEC-006](#dec-006)); you need it before high camps anyway.

## When sources disagree

1. [SRC-009](#src-009) — Hydronic D5S: fuel, exhaust, wiring, and first fire  
2. [SRC-019](#src-019) — hose practice, header height, bleed, and water-first leak check  
3. This book — locked van layout ([DEC-009](#dec-009) · [DEC-010](#dec-010) · [DEC-004](#dec-004) / [DEC-013](#dec-013) / [DEC-020](#dec-020))  
4. OPEN items — do not invent; prefer [Questions for You](#questions-for-you-in-order)

Diagrams are not to scale. Land every terminal from [SRC-009](#src-009), [SRC-003](#src-003), and [SRC-002](#src-002) on the bench.
