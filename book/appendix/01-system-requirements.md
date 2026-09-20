# System Requirements

## Scope

Design constraints for this build. Heater is Hydronic D5S diesel heater, order **25 2526 05 00 00** (DEC-000). Specs from **SRC-009** only.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-009 | p. 12–13, 15, 24–25, 31–32 | D5S heat/fuel/flow/voltage; install; exhaust; altitude; staging |
| SRC-002 | Whole | Altitude kit 22 1000 33 22 00 |
| SRC-003 | Whole | EasyStart Timer (DEC-002) |
| SRC-004 / SRC-005 | Design intent / field notes | Independent loop goals; not current BOM |
| SRC-021 / SRC-022 | Product + I&O | Isotemp Slim Square 4.2 gal heat battery (DEC-001 / DEC-007) |
| SRC-023 | Order | Heater + kit + EasyStart Timer purchase |
| SRC-024 / SRC-026 | Photos | Duda B3-12DW-20 plate heat exchanger + AM100; intended freshwater path |
| DEC-009 … DEC-013 | Decision log | No engine; loop order; master switch; no electric-assist path |

## Content

### Functional intent

Diesel hydronic space heat plus on-demand DHW on an **independent living-space propylene glycol loop** (DEC-009) — **no engine connection**.

| Role | Part |
|---|---|
| Heat in (diesel) | Hydronic D5S diesel heater underbody |
| Space heat out | Sure Marine cabin heater |
| DHW out | Duda B3-12DW-20 plate heat exchanger + AM100-1LF thermostatic mixing valve (DEC-003 / DEC-008) |
| Thermal mass | coil in the Isotemp Slim Square 4.2 gal heat battery (circulating) + ~4.2 gal static chamber (DEC-007) |
| Expansion / bleed | WFT 5 L expansion/header tank (DEC-005) |
| Control | EasyStart Timer + SC1600B thermostat + master Off/On (DEC-002 / DEC-012 / DEC-014) |
| Hot water | Diesel-heated glycol through the Duda B3-12DW-20 plate heat exchanger; Isotemp static chamber can also be heated by its 750 W / 115 VAC element from the Paneltronics AC panel |
| Electric element | 750 W / 115 VAC Isotemp element; Paneltronics AC-panel load, not a 12 V load. Breaker, GFCI/grounding, cable route, and operating control remain to be verified |

**Loop flow path (DEC-010):** Hydronic D5S diesel heater's own circulating pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger → coil in the Isotemp Slim Square 4.2 gal heat battery → return to pump. WFT 5 L expansion/header tank tees at the return high point. Coil always in series — no summer bypass valve.

### Heater performance — Hydronic D5S diesel heater (SRC-009 p. 13)

| Order no. | Heat flow (Power / High / Low) | Fuel use | Min flow | Voltage |
|---|---|---|---|---|
| 25 2526 05 00 00 | 5200 / 5000 / 2100 W | 0.64 / 0.61 / 0.26 l/h | 250 l/h | 10.5–16 V |

Tolerances ±10% at rated voltage / Esslingen reference altitude. Staging ~65 / 80 / 85 / 75 °C; overheat restart <70 °C (SRC-009 p. 31–32).

### Hard constraints

- Coolant: water + propylene glycol, **≤50%** coolant; ≤ 2.5 bar (SRC-009). Header cap ~1.2 bar.
- Heater and pumps below the WFT 5 L expansion/header tank fluid level (SRC-009 p. 15).
- Exhaust and combustion air outside the cabin (SRC-009 p. 24–25).
- Sustained use above ~1500 m needs Altitude kit 22 1000 33 22 00 (DEC-006).
- Underbody mount allowed if install rules are met (SRC-009 p. 15) — this van: driver-side / fuel-fill area.

### Out of scope / ruled out

- Hydronic II C and D5WS heaters (DEC-000)
- Engine-coolant splice / combination valve (DEC-009)
- Bosch buffer; plumbing summer valve (DEC-001 / DEC-010)
- OEM Sprinter factory hydronic (SRC-014); Vito tandem (SRC-015)
- Webasto/TSL boilers as the heater (SRC-018 / SRC-019 — loop practice only)
- Airtronic D2 (SRC-007); floor stack (SRC-020)

## Verification

- [ ] Requirements traced to SRC-009 / DECs
- [ ] Layout checked on the vehicle
- [ ] Open items below still marked honestly

## Open items (blockers)

- [ ] **OPEN:** Q-010 fuel-line routing inspection before first fire
- [ ] **OPEN:** Q-013 EasyStart Timer wiring finish
- [ ] **OPEN:** Q-015 Altitude kit 22 1000 33 22 00 find / wire (high camps)
- [ ] **OPEN:** Q-009 / Q-016 element AC path (required for complete build; diesel-only first fire may precede final energization)
- [ ] **OPEN:** Q-019 / Q-021 brand pick and Sure Marine cabin heater switch model
