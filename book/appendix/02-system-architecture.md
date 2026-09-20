# System Architecture

## Scope

Identify candidate hydronic architectures and which sources apply to each. Heater is Hydronic D5S diesel heater (DEC-000). Isotemp Slim Square 4.2 gal heat battery is the buffer (DEC-007). Duda B3-12DW-20 plate heat exchanger is the freshwater heat exchanger (DEC-003). See the [Isotemp value study](#isotemp-value-study) for the keep-or-sell analysis, energy limits, and commissioning measurements.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-004 / SRC-005 | Whole posts | Independent van living-space loop; Bosch buffer withdrawn |
| SRC-021 / SRC-022 | Product + I&O | Isotemp Slim Square 4.2 gal: coil in circulating glycol; chamber used as static mass (DEC-007) |
| SRC-009 | p. 20–23 | Engine-coolant integration options (inline, thermostat, 5- and 6-port combination valve) |
| SRC-010 | p. 10–12 | D5WS-era combination-valve layouts; 6-port Order No. 330 00 176 |
| SRC-001 | Installation location / coolant | Hydronic II C same engine-bay integration family |
| SRC-008 | Product page | 6-port valve candidate P/N 25 2014 80 62 00 |
| SRC-014 | Whole sheet | Factory Sprinter/Crafter layout (MB pump and controls) |
| SRC-018 / SRC-019 | Water system | Marine parallel-manifold / summer-valve practice (reference only) |

## Content

### Candidate A — Independent living-space loop `[DEC-009]`

**Design intent (SRC-004, Mar 2018):** fossil-fuel reliability plus optional electric (solar / alternator / shore) for both space heat and DHW; double-wall PHE so the 35 gal freshwater tank stays drinking water; thermal mass to slow heater cycling; heater outside under the driver so combustion noise stays away from sleeping. Those goals still hold.

**Original blog circuit order (SRC-004 — superseded for plumbing):** Espar pump → D5 → Duda B3-12DW-20 plate heat exchanger → Sure Marine cabin heater → Bosch buffer → expansion, with a planned summer valve to bypass the Sure Marine cabin heater, and engine connection deferred. **Do not install that order.**

**Locked now:**

Hydronic D5S diesel heater circulating pump → Hydronic D5S diesel heater (EasyStart Timer + Altitude kit 22 1000 33 22 00) → Sure Marine cabin heater → **Duda B3-12DW-20 plate heat exchanger (glycol side)** → **coil in the Isotemp Slim Square 4.2 gal heat battery** → return; WFT 5 L expansion/header tank on the return high point. No auxiliary glycol pump. The Isotemp 750 W / 115 VAC element is a separate Paneltronics AC-panel load; it does not create a second circulating loop. During control pause the burner is off and the circulating pump keeps running ([SRC-009](#src-009); [The Numbers](#the-numbers-that-matter)).

| Goal from SRC-004 | How this build meets it |
|---|---|
| Diesel energy in | Hydronic D5S diesel heater underbody |
| Electric energy in | Paneltronics AC panel → Isotemp 750 W / 115 VAC element; exact protection/control verification remains open |
| Space heat out | Sure Marine cabin heater |
| DHW out | Duda B3-12DW-20 plate heat exchanger + AM100 mixer |
| Thermal mass / less cycling | Isotemp Slim Square 4.2 gal heat battery static glycol chamber (DEC-007), not Bosch ~8.5 gal claim |
| No engine splice | Locked DEC-009 (blog had already deferred engine) |
| Summer without blowing cabin heat | Short timer call with cabin thermostat above setpoint — **not** a plumbing summer valve (rejected DEC-010), **not** an electric-assist circuit (DEC-013 withdrawn) |

**Roles (do not mix)**

- **Isotemp Slim Square 4.2 gal heat battery:** used almost as designed. Circulating glycol through the coil. The ~4 gal chamber holds **static glycol**, not freshwater. Slows Hydronic D5S diesel heater Power/High/Low/Off swings. Bosch is gone. Do not tee that chamber into loop flow, and do not use it for tap water. Factory mixer unused.
- **Duda B3-12DW-20 plate heat exchanger:** the freshwater heat exchanger. Cold in through the cabinet, hot out through the AM100-1LF thermostatic mixing valve (SRC-024). Unmixed outlet tracks glycol temperature. Double-wall = drinking-water separation (SRC-004 intent).
- **AM100-1LF thermostatic mixing valve:** already on the Duda B3-12DW-20 plate heat exchanger potable hot outlet (DEC-008 / SRC-024). Not the Isotemp Slim Square 4.2 gal heat battery factory mixer. Mixed-out not yet run to taps.
- **750 W element on the Isotemp Slim Square 4.2 gal heat battery:** separate Paneltronics AC load. It heats the static chamber only; circulating glycol still runs through the coil via the D5S pump. The element is not the DHW exchanger and does not replace that pump.

**Loop flow path locked (DEC-010):** Hydronic D5S diesel heater's own circulating pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger (glycol) → coil in the Isotemp Slim Square 4.2 gal heat battery → return to pump. WFT 5 L expansion/header tank tees at the return high point. Coil always stays in the loop (no summer bypass). Intended DHW path is the **35 gal freshwater tank** → pump → Duda B3-12DW-20 plate heat exchanger → AM100-1LF thermostatic mixing valve → taps (SRC-026). The Isotemp Slim Square 4.2 gal heat battery chamber is not on that path.

**Planned locations (updated from SRC-004 “all under sink”):** heater + metering pump underbody (driver side / fuel-fill area — SRC-005). Duda B3-12DW-20 plate heat exchanger already in the van. Sure Marine cabin heater near jump seat (final spot OPEN). Isotemp Slim Square 4.2 gal heat battery under the sofa/bed. WFT 5 L expansion/header tank at rear bench.

### Candidate B — Engine-coolant integration `[NOT SELECTED — DEC-009]`

Not used. Owner locked **no engine connection**. The SRC-009 / SRC-010 combination-valve material below is retained only as rejected reference.

1. Inline + non-return valve (heat to engine first).
2. Thermostat + T-piece (small circuit to cabin HX until ~70–75 °C, then large circuit including engine).
3. Combination valve, 5-port + T-piece, or 6-port without T-piece when flow and return run in parallel (SRC-009 p. 23). SRC-010 6-port Order No. 330 00 176. SRC-008 lists a later 6-port P/N 25 2014 80 62 00.

SRC-014 is the factory Sprinter NCV3 / Crafter version of this idea. Not this van’s plan.

### Candidate C — Marine-style parallel heating loops `[REFERENCE ONLY]`

SRC-018 / SRC-019 (Webasto / TSL-17, not this heater): supply/return manifolds, summer valve to bypass space-heat loops for DHW-only, bleeders at high points. Useful plumbing practice; not a spec source for the Eberspächer.

### Shared heater-side interfaces

Regardless of architecture family, the Eberspächer has ports: exhaust (A), fuel (B), combustion air (V), water inlet (WE), water outlet (WA) (SRC-009 p. 14).

The Isotemp Slim Square 4.2 gal heat battery has a 316 SS hydronic coil on the circulating glycol loop and a ~4 gal chamber of **static glycol** (DEC-007). Factory design was coil + potable water. This build keeps the coil/static split and puts glycol in both. Those two volumes must not mix except through the coil wall. Do not use the chamber as freshwater.

### What is not this system

- SRC-007 Airtronic D2 (air heater).
- SRC-015 Vito tandem D5WS + D5WZ (wrong platform — this van is 2017 Sprinter 170, Q-005).
- SRC-018 / SRC-019 as the boiler.
- SRC-016 SureCal tank (not selected).
- SRC-020 floor insulation (out of hydronic scope).
- Bosch electric glycol buffer (withdrawn, DEC-001).
- Plumbing summer valve / blog loop order Duda B3-12DW-20 plate heat exchanger→Sure Marine cabin heater→Bosch (SRC-004 superseded by DEC-010 / DEC-001).

## Verification

- [ ] Requirements traced to authoritative sources
- [ ] Dimensions and routing checked against the actual vehicle
- [ ] Conflicts and assumptions recorded
- [ ] Relevant inspection hold points completed

## Open items

- [ ] **OPEN:** (loop order locked DEC-010; remaining electrical Q-009 / Q-016)
