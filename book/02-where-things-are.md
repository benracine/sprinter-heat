# Current Status {#current-status-report}

Read this after the [User’s Guide](#users-guide) and before the [Builder’s Guide](#builders-guide). Honest inventory as of September 2026. Part names match [The Parts](#the-parts). The HOLD checklists still govern the work.

Jump: [Project Phases](#project-phases) · [Builder’s Guide](#builders-guide) · [Questions for You](#questions-for-you-in-order) · [Isotemp value study](#isotemp-value-study)

## Next action

::: {.next}
**Next — Phase A.** Fuel pickup and exhaust are already on the van. Finish HOLD 1 and HOLD 2 against [SRC-009](#src-009) before you open Phase B. **Future work before first fire:** get under the van and confirm the **fuel pump** (owner not yet confident); then prime at HOLD 8.
:::

| Phase | Status |
|---|---|
| A. Fuel and exhaust | **Do next** — HOLD 1–2 open |
| B. Mount and wire | After A — includes altitude kit at HOLD 4 |
| C. Dry plumbing | Later |
| D. Fill and first fire | Last — HOLD 9 for complete system only |

Ask once per part: if it is already on the van, inspect and finish the remaining work; if it is still in the garage, bring it in for Phase B after Phase A passes. After diesel Acceptance, live from the [User’s Guide](#users-guide). Keep-or-sell numbers for the Isotemp are in the [Isotemp value study](#isotemp-value-study).

## Effort estimate (remaining) {#effort-estimate}

**ASSUMPTION** — one person, DIY pace, parts already on hand. Not a quote. Heater underbody mount, fuel tap, exhaust rough-in, Duda/Sure Marine placement, EasyStart mount, and house AC/DC backbone are treated as **already spent** and are not in these totals.

| Block | Low | Typical | High | Notes |
| --- | --- | --- | --- | --- |
| Phase A — fuel + exhaust walk (HOLD 1–2) | 2 h | 3 h | 6 h | Mostly inspect/fix vs [SRC-009](#src-009) |
| Sofa/bed rip + hybrid rebuild (HOLD S) | 40 h | **55 h** | 80 h | Largest block: frame, cradle, backrest Water Flow Tank, lift-out, hatches |
| Phase B — mounts + 12 V / altitude / cable (HOLD 3–4) | 10 h | 16 h | 24 h | Overlaps sofa if done in the same build days |
| Phase C — glycol + freshwater hose (HOLD 5–6) | 10 h | 16 h | 28 h | Clamps, bleeders, labels; rework if a run fights furniture |
| Phase D — fill, bleed, first fire (HOLD 7–8) | 6 h | 10 h | 16 h | Water-first then glycol; watchful first fire |
| HOLD 9 — Isotemp AC first energize | 2 h | 3 h | 6 h | After chamber full; ground-fault story still open |
| Q-022 later — thermostat relay + wake | 2 h | 4 h | 8 h | After diesel heat works |
| Contingency / fetch / rework (~20%) | 14 h | 20 h | 30 h | |

| Finish line | Typical remaining | Calendar (weekends / evenings) |
| --- | --- | --- |
| **Diesel cabin heat + diesel hot water** (through HOLD 8) | **~110–120 h** | ~4–8 weeks part-time |
| **Complete system** (+ HOLD 9 + light Q-022) | **~120–130 h** | add a few sessions |

If two people share furniture and hose work, wall-clock time drops faster than man-hours (often ~0.7× calendar for the sofa and hose phases).

## Already on the van

| Item | Now | Finish at |
|---|---|---|
| Hydronic D5S diesel heater | Mounted; **25 2526** / **H-Kit** | Confirm tilt ([SRC-009](#src-009)) |
| Exhaust / combustion air | Owner thinks OK | Quick [HOLD 2](#hold-2-exhaust) look before fire |
| Fuel pickup + pump | Tap OK; hose likely run; **pump check = future work** under van | [HOLD 1](#hold-1-fuel); prime at [HOLD 8](#hold-8-first-fire) |
| Duda B3-12DW-20 + AM100-1LF mixer | Mixer on; one hose on; intended near jump seat / sink-fridge zone | Glycol port; mixed and cold to taps; set ~120°F; confirm fit with cabin heater |
| Sure Marine cabin heater | REAL **16401**; **IN bottom / OUT top**; fans taped; intended near jump seat / sink-fridge | Level, bleeder, fan power — [HOLD 3](#hold-3-mounts) / 4 |
| EasyStart Timer | On wood panel (with LinkPRO / PROwatt SW) | Land per [SRC-003](#src-003) / [SRC-009](#src-009) — [HOLD 4](#hold-4-electrical) |
| Xantrex LinkPRO + PROwatt SW | On wood panel with EasyStart; PROwatt face has dual GFCI outlets | House monitor + inverter; Paneltronics **WATER HEATER** path still HOLD 9 |
| Blue Sea 12 V distribution block | On van (owner) | Confirm fuse positions feeding master / EasyStart / fans at HOLD 4 |
| Paneltronics AC panel | **72313** / **9972313B**: MAIN 30 A · BATTERY CHARGER · **WATER HEATER** (empty, reserved) · OUTLETS | Element cable + document protection at [HOLD 9](#hold-9) |

Diesel-only Acceptance can finish without HOLD 9. Complete system Acceptance needs HOLD 9. After diesel first fire, only [Q-022](#q-022) and [Q-009](#q-009) may still wait; land the altitude kit at HOLD 4.

## Still in the garage

| Item | Do this |
|---|---|
| Water Flow Tank (WFT) 5 L expansion/header | **Sofa-bed backrest (high)**; Isotemp under bench (low); tee on return; free path from tee to pump |
| Isotemp Slim Square 4.2 gal heat battery | Mount empty **driver side under new sofa/bed**; mixer capped; element → **WATER HEATER** (dead) |
| Altitude kit 22 1000 33 22 00 | Install and wire at HOLD 4 while the EasyStart harness is open ([SRC-002](#src-002)) |
| Master switch | Mount next to EasyStart; Off cuts three 12 V branches (upstream of EasyStart) |
| Hose, clamps, Prestone LowTox AF555 glycol | Reinforced hose; stainless clamps; ≤50% PG ([DEC-017](#dec-017)) |
| SC1600B thermostat, Noctua fans, speed dial | Mount and wire; auto call waits on [Q-022](#q-022) |

**Sofa/bed (discovery):** current bed **coming out**. Rebuild hybrid per [DEC-021](#dec-021): wood side boxes, aluminum Isotemp cradle, **2–3 light panels** flat at night / hinge or slide by day. Water Flow Tank in **backrest**; Isotemp under bench. Sure Marine under fridge; Duda under sink. Details: [Working design understanding](#working-design-understanding). Effort: [Effort estimate](#effort-estimate).

## Do not change the design into these

| | |
|---|---|
| Second glycol pump | [DEC-013](#dec-013) |
| Engine coolant splice | [DEC-009](#dec-009) |
| Summer cabin-heater bypass | [DEC-010](#dec-010) |
| 12 V feeding the 750 W element | [DEC-004](#dec-004) |
| Hot taps without the diesel pump | Heat in the Isotemp chamber is not heat at the Duda |

## Still open (check the manuals first)

**May wait after a low-elevation diesel first fire**

- [Q-022](#q-022) — SC1600 relay and approved wake landing; use EasyStart only until then  
- [Q-009](#q-009) — upstream GFCI/ELCI and element route before HOLD 9  

**Do at HOLD 4 (not on the wait list)**

- [Q-015](#q-015) — altitude kit install and wire (identity confirmed); required before high camps  

**Owner placement / electrical answers**

- [Working design understanding](#working-design-understanding) — live discovery (sofa, layout, 12 V story)  
- [Questions for You](#questions-for-you-in-order) — remaining placement / GFCI / house snapshot ([Q-025](#q-025))  

→ [Builder’s Guide](#builders-guide).
