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

Official part names live in one place: [The parts](#the-parts) in System Design. Learn them there first. What is already on the van vs still in the garage is in [Current status](#current-status-report).

## The install in four buckets {#four-buckets-overview}

Think of it as **four buckets**, not twenty tasks. Finish a bucket before opening the next. Inside a bucket, finish each HOLD before the next. Phase detail lives in the [Builder’s guide](#four-buckets).

| Bucket | What it is | Phases | You now |
|---|---|---|---|
| **A. Safe under the van** | Fuel + exhaust won’t hurt you | 1–2 | Mostly **inspect** (hardware already on) |
| **B. Hardware in place** | Tanks mounted; wires landed dry | 3–4 | **← next real build work** |
| **C. Loops closed dry** | Glycol + drinking water plumbed, empty | 5–6 | Later |
| **D. Fill, fire, live** | Water test → glycol → first fire → AC optional | 7–8 (+9) | Last |

::: {.tip}
**Current bucket B:** mount the expansion/header tank and the heat battery, land dry 12 V, and route the heat-battery element cable to the Paneltronics **WATER HEATER** breaker — leave that cable dead. Loop, fill, and first fire come after. AC (phase 9) stays optional.
:::

### What does *not* block diesel heat

These wait without blocking a low-elevation first fire — full names in [The parts](#the-parts); detail in [Current status](#current-status-report):

- Altitude kit ([Q-015](#q-015)) — high camps only  
- Cabin thermostat auto-call ([Q-022](#q-022)) — the mounted timer still starts heat without it  
- Heat-battery AC / upstream GFCI ([Q-009](#q-009)) — phase 9 only  

## Who wins when sources conflict

1. [SRC-009](#src-009) — Hydronic D5S: fuel, exhaust, wiring, first fire  
2. [SRC-019](#src-019) — hose, header height, bleed, water-first leak check  
3. This book — locked van layout ([DEC-009](#dec-009) · [DEC-010](#dec-010) · [DEC-004](#dec-004) / [DEC-013](#dec-013) / [DEC-020](#dec-020))  
4. OPEN items → stop inventing. Prefer [Questions for you](#questions-for-you-in-order)

Diagrams are not to scale. [Controls](#controls) is the plain-English wiring story. Pin tables and AWG sizes live in [Electrical and Controls](#electrical-and-controls) — still land every terminal from [SRC-009](#src-009) / [SRC-003](#src-003) / [SRC-002](#src-002) on the bench.
