# Spec and sources

This section is part of the technical appendix. Use it for the build snapshot, architecture, sources, and hold points. It is not the order of work.

Hand this file with the PDFs in `sources/hydronic-install/` and `sources/coolant/`. This book cites those documents. It does not replace them.

**Authority order:** manufacturer manuals ([SRC-009](#src-009), [SRC-002](#src-002), [SRC-003](#src-003), …) win over blogs and memory. On-van photos and owner answers close *location* questions. Unresolved items stay OPEN — do not invent pinouts or hose routes.

| Label | Meaning |
| --- | --- |
| **VERIFIED** | Confirmed by an authoritative source or inspection |
| **ASSUMPTION** | Provisional, waiting on confirmation |
| **MEASURE** | Must be taken on the actual vehicle or part |
| **OPEN** | Unresolved, and it may block design or commissioning |

## Snapshot

**One loop.** Hydronic D5S → Sure Marine cabin heater → Duda → Isotemp coil → return. No engine. No second pump. Isotemp chamber = static glycol; factory mixer unused. Drinking water only through the Duda + AM100-1LF.

**House electrical (context only).** Hydronic 12 V from the house battery; Isotemp 750 W from Paneltronics **WATER HEATER**, fed by shore and/or PROwatt SW. Intent: owner electrical post ([SRC-040](#src-040)); FarOutRide-class reference ([SRC-041](#src-041)). Confirm snapshot ([Q-025](#q-025)).

**Two finish lines.** Diesel cabin heat / diesel hot water can pass before HOLD 9. Complete system (Isotemp AC) needs HOLD 9. After a low-elevation diesel first fire, only Q-022 and Q-009 may still wait; land the altitude kit at HOLD 4.

**Where to read.** Part one: [System Design](#system-design) → [Numbers](#the-numbers-that-matter) → [User’s Guide](#users-guide) → [Status](#current-status-report) → [Builder](#builders-guide). Part two: this appendix, starting at the [Technical appendix](#technical-appendix) map.

## Vehicle and heater

| | |
| --- | --- |
| Vehicle | 2017 Mercedes-Benz Sprinter 4×4, 170" wheelbase |
| Heater | Eberspächer Hydronic D5S diesel heater, 12 V, order no. **25 2526 05 00 00** |
| Heat output | 5.2 / 5.0 / 2.1 kW (Power / High / Low), SRC-009 |
| Nameplate | Hydronic II · D5S · **25 2526** · **H-Kit** confirmed |
| Purchase | Installation kit for Hydronic II D4S/D5S · EasyStart Timer · £902.98 GBP on the heater line |
| Not this heater | Hydronic II C (25 2506 / 4.8 kW) · Hydronic D5WS |

Use **SRC-009** for heater specs, wiring, fuel, exhaust, and coolant rules.

## Architecture (locked)

**Independent living-space glycol loop (DEC-009).** No engine connection. Design intent from the owner’s 2018 notes (SRC-004): diesel reliability for cabin heat and hot water; double-wall plate so freshwater stays drinkable; thermal mass to soften cycling; heater under the van so combustion stays outside the cabin. There is no second glycol pump (DEC-013). The Isotemp 750 W element is a Paneltronics **WATER HEATER** AC load for the static chamber only (DEC-004 / DEC-020).

**Glycol flow path (DEC-010)**, not the 2018 blog order:

Return line → Hydronic D5S diesel heater's own circulating pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger (glycol) → coil in the Isotemp Slim Square 4.2 gal heat battery → return line

WFT 5 L expansion/header tank tees at the return high point of the circulating loop (not off the coil). The coil always stays in the loop. No summer bypass valve.

| Piece | Job | Where |
| --- | --- | --- |
| **Isotemp Slim Square 4.2 gal heat battery** | Circulating glycol in the coil. Static glycol in the chamber. Not DHW. Factory mixer unused. | Garage → under sofa |
| **[Duda B3-12DW-20 plate heat exchanger](https://www.dudadiesel.com/choose_item.php?id=HX3220DW)** | Freshwater heat exchanger. | On van |
| **AM100-1LF thermostatic mixing valve** | On Duda hot outlet. Scald control. Tap hoses not run. | On van |
| **[Sure Marine cabin heater](http://www.suremarineservice.com/RL643X.aspx)** | Only cabin heat. REAL SN **16401**; IN bottom / OUT top. | On van |
| **[WFT 5 L expansion/header tank](https://www.butlertechnik.com/installation-accessories-c63/marine-accessories-c115/eberspacher-or-webasto-expansion-header-tank-5l-2-outlet-292100017742-17742-p1723)** | Expansion / bleed high point. | Garage → rear bench |
| **[Altitude kit 22 1000 33 22 00](https://www.melloronline.co.uk/Heater_Installation_Accessories_/5147/EBERSPACHER_AIR/WATER_HEATER_HIGH_ALTITUDE_KIT_%7C_221000332200.html)** | Required for high camps. P/N + H-Kit confirmed. | Garage → wire per SRC-002 |
| **EasyStart Timer** | Schedule / start-stop. | Mounted on wood panel; not fully wired |
| **Paneltronics AC (72313 / 9972313B)** | MAIN 30 A · BATTERY CHARGER · **WATER HEATER** (empty, for Isotemp) · OUTLETS | On van |

The heater itself holds only ~0.18 L. The Isotemp mass damps cycling.

**Vendor pages and manuals:** [Hydronic D5S](http://www.heatso.com/eberspacher-hydronic-ii-d5s-12v-heater/) · [D5S manual (PDF)](https://www.butlertechnik.com/downloads/Hydronic_II_Technical,_installation_%26_operating_manual.pdf) · [EasyStart Timer (PDF)](https://www.butlertechnik.com/downloads/Eberspacher_Easy_Start_7_day_Timer_Installation_instructions_221000341500.pdf) · [Altitude kit (PDF)](https://www.butlertechnik.com/downloads/High_Altitude_Kit_221000332200_-_Installation_Instruction_Manual.pdf).

## What is already on the van

| Item | Status |
| --- | --- |
| Hydronic D5S diesel heater (underbody) | Done; 25 2526 / H-Kit |
| Fuel pickup (factory aux) | Inspect at HOLD 1 |
| Exhaust / combustion air | On van; re-check at HOLD 2 |
| Duda B3-12DW-20 + AM100-1LF | On van; taps + one glycol barb still open |
| Sure Marine cabin heater | On van; SN 16401; fans unfinished |
| EasyStart Timer | Mounted; landing unfinished |
| Paneltronics AC (72313 / 9972313B) | Face known; **WATER HEATER** empty for Isotemp |

## Still in the garage

| Item | Status |
| --- | --- |
| WFT 5 L expansion/header tank | → rear bench (highest circulating point) |
| Isotemp Slim Square 4.2 gal heat battery | → under sofa |
| Altitude kit 22 1000 33 22 00 | Wire per SRC-002 before high camps |
| Master switch | Mount next to EasyStart at HOLD 4 |
| Hose / clamps / Prestone LowTox AF555 | ≤50% PG for this loop (DEC-017) |
| SC1600B / Noctua fans / speed dial | Auto call waits on Q-022 |

Part-one inventory with finish-at HOLDs: [Current Status](#current-status-report).

## Hold points before first fire

1. Fuel walk at HOLD 1 (HAZ-001).
2. EasyStart / heater 12 V landed enough to start and stop (HOLD 4 / Q-013). Land the altitude kit at HOLD 4 while the harness is open (Q-015 / DEC-006) — required before high camps; prefer not to defer it past HOLD 4.
3. Fill and bleed circulating glycol including the Isotemp coil; fill chamber separately (static). Heater and coil below WFT.
4. Route Isotemp element to Paneltronics **WATER HEATER**; upstream GFCI/ELCI before energize (HOLD 9).
5. AM100-1LF set ~120°F and tap hoses landed before anyone showers.

Where leftover comparison material mentions Hydronic II C or D5WS, treat it as **ruled out** (DEC-000). Blog SRC-004/005 is design history, not current BOM or loop order.
