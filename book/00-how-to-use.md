# How to use this book

One path. Three stages. Do not cut hose until 1 and 2 are clear.

| Stage | Go here | You leave knowing… |
|---|---|---|
| **1. Architecture** | [System Design](#system-design) | What it is, how heat moves, what is forbidden |
| **2. Use** | [User’s guide](#users-guide) | How you live with it day to day |
| **3. Make it** | [Builder’s guide](#builders-guide) | Numbered steps + HOLD checklists |

Also: [Safety](#safety) first · [Current status](#current-status-report) between Use and Make it · after [Acceptance](#acceptance), live from the [User’s guide](#users-guide).

Lookups: [The numbers](#the-numbers-that-matter) · [Sources](#source-register) · [Decisions](#decision-log) · [Questions for you](#questions-for-you-in-order) · [Open Questions](#open-questions) · [Hazards](#hazard-register)

Part two is citations — not the work order. Codes like [SRC-009](#src-009) jump to their row. DANGER / CAUTION / MUST boxes win over surrounding text.

## The install in four buckets {#four-buckets-overview}

Think of it as **four buckets**, not twenty tasks. Finish a bucket before opening the next. Inside a bucket, finish each HOLD before the next. Phase detail lives in the [Builder’s guide](#four-buckets).

| Bucket | What it is | Phases | You now |
|---|---|---|---|
| **A. Safe under the van** | Fuel + exhaust won’t hurt you | 1–2 | Mostly **inspect** (hardware already on) |
| **B. Hardware in place** | Tanks mounted; wires landed dry | 3–4 | **← next real build work** |
| **C. Loops closed dry** | Glycol + drinking water plumbed, empty | 5–6 | Later |
| **D. Fill, fire, live** | Water test → glycol → first fire → AC optional | 7–8 (+9) | Last |

**Already on the van:** heater, fuel tap, exhaust, Duda/mixer, cabin heater, EasyStart, Paneltronics.

**Still in the garage:** WFT, Isotemp, altitude kit, master switch, hose/clamps, glycol, fans/SC1600.

::: {.tip}
**Current bucket B status:** WFT + Isotemp remain the next hardware tasks, with 12 V dry work and the Isotemp cable routed to **WATER HEATER** left dead until the panel branch is final. The loop, fill, and first-fire work follow after that. AC (phase 9) remains optional and separate.
:::

### What does *not* block diesel heat

- Altitude kit ([Q-015](#q-015)) — high camps only  
- SC1600 auto ([Q-022](#q-022)) — EasyStart Timer works without it  
- Isotemp AC / GFCI ([Q-009](#q-009)) — phase 9 only  

## Who wins when sources conflict

1. [SRC-009](#src-009) — Hydronic D5S: fuel, exhaust, wiring, first fire  
2. [SRC-019](#src-019) — hose, header height, bleed, water-first leak check  
3. This book — locked van layout ([DEC-009](#dec-009) · [DEC-010](#dec-010) · [DEC-004](#dec-004) / [DEC-013](#dec-013) / [DEC-020](#dec-020))  
4. OPEN items → stop inventing. Prefer [Questions for you](#questions-for-you-in-order)

Diagrams are not to scale. [Controls](#controls) now carries fuse sizes, wire mm², and connector pin tables from the manuals — still land every terminal from [SRC-009](#src-009) / [SRC-003](#src-003) / [SRC-002](#src-002) on the bench.

Official part names live in one place: [The parts](#the-parts) in System Design. Use those names everywhere.
