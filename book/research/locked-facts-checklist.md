# Locked facts checklist (2026-09-20) {#locked-facts-checklist}

**Purpose:** Contradiction-hunt authority for part one + appendix. When anything in the HTML/PDF disagrees with this list, **this list wins** until an owner answer revises it. Photo dumps are evidence, not alternate designs.

Promote changes here first, then Design → Numbers → Use → Status → Build → appendix in one pass.

---

## Loop and fluids

| Fact | Authority |
| --- | --- |
| Heater = Hydronic **D5S** 25 2526 / H-Kit; not II C / not D5WS | DEC-000 |
| No engine connection | DEC-009 |
| Loop: pump → D5S → Sure Marine → Duda (glycol) → Isotemp **coil** → return; WFT tees on return high point | DEC-010 |
| No summer bypass; no second glycol pump | DEC-010 / DEC-013 |
| Isotemp chamber = **static** glycol; not DHW; element does not circulate the loop | DEC-007 |
| Drinking water only via Duda + **AM100-1LF**; Isotemp **factory mixer unused forever** (cap) | DEC-003 / DEC-008 |
| Fill: Prestone LowTox AF555 ≤50% PG | DEC-017 |
| Early Star brite / Bosch / D5WS-engine diagrams = **history only** | photo-extract-heater; DEC-000/001/009 |

## Locations (owner / as-built)

| Part | Where |
| --- | --- |
| Sure Marine cabin heater SN **16401** | **Under the fridge** |
| Duda + AM100-1LF | **Under the sink** |
| Isotemp Slim Square | Garage → **driver side under bench/bed (low)** |
| Water Flow Tank 5 L | Garage → **sofa-bed backrest (high)**; confirm top wins height |
| Freshwater tank | Passenger rear wheel well (~30+ / ~35 gal intent) |
| Current bed | **Coming out entirely** |
| Day sofa geometry | **Outboard → seat back**; **inboard → seat butt**; aisle; stay attached |
| Sofa structure | Hybrid wood shell + Al Isotemp cradle ([DEC-021](#dec-021)) |
| Cabin envelope | FatMat Rattle Trap + Thinsulate-class behind grey panels / L-track |

## House electrical

| Fact | Notes |
| --- | --- |
| Two **Blue Sea 9009** rotaries (as-built); diagram “automatic” path obsolete | One → Paneltronics; one → Mean Well |
| Paneltronics 9009 | Shore ↔ PROwatt SW 2000; **poorly labelled** — mark SHORE / INVERTER |
| Mean Well 9009 | Shore ↔ J1772; mark SHORE / J1772; **not** via Paneltronics BATTERY CHARGER |
| Inlets | Exterior **SmartPlug** (120 V); underbody **DUOSIDA DSS-EV-32S-V3** 32 A / 240 V J1772 |
| Isotemp 750 W | Paneltronics **WATER HEATER** only — never 12 V |
| Master Off | Cuts EasyStart / fans / thermostat path; **does not** cut Isotemp AC |
| House bank | **200 Ah** (LiFeBlue class); **650 W** solar; Victron **MPPT 100\|50** (photos); Sterling **60 A** B2B; Mean Well **RPB-1600-12** |
| Early IOTA DLS-55 | Build photos; **confirm removed** |
| Blue Sea ST Blade (~12) + ML-RBS | On van; hydronic may need **second blade breakout** |
| Fan dial | Book pick Sure Marine **W002-912** Hi/Low no Off |
| GFCI on Isotemp hardwire | OPEN (Q-009) — face GFCI ≠ hardwire |

## Use / install emphasis

| Fact | Where it must show |
| --- | --- |
| ~80% sinks / showers minority | Design + User’s Guide |
| First high camp ASAP → altitude kit at HOLD 4 | Status + HOLD 4A |
| Fuel pump under-van check = future work before first fire | Status Next + HOLD 1/8 |
| HOLD S hatches pierce insulation to metal | Install HOLD S |

## Explicitly OPEN (do not invent)

- Exact hinge/slide hardware and panel count for seat-back / seat-butt geometry  
- Both 9009 faceplates confirmed as 9009 (owner belief)  
- Free fuse slot count vs second breakout purchase  
- Q-009 ground-fault story; Q-022 SC1600 wake  
- Hose routing details  

---

## Contradiction hunt commands

After edits, rebuild, then fail the pass if HTML still contains as **current** design:

- `automatic transfer` (unless “diagram draft said”)  
- `intended near jump seat`  
- `exact mount OPEN (rear bench`  
- `full-length lift-out` as the live plan (OK only as superseded)  
- WFT location without **backrest** in status/inventory tables  
