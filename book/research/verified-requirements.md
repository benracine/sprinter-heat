# Verified Requirements

Heater identity is locked (DEC-000): Hydronic D5S diesel heater, **25 2526 05 00 00**. Numeric heater specs from SRC-009 unless noted.

| ID | Requirement | Subsystem | Source ID | Status | Verification |
|---|---|---|---|---|---|
| REQ-001 | Heater is Hydronic D5S diesel heater, 25 2526 05 00 00, 5.2/5.0/2.1 kW, max 2.5 bar. Use SRC-009 only — not II C or D5WS | Heater | SRC-023; nameplate; SRC-009 p. 13; DEC-000 | VERIFIED | Re-read nameplate if swapped |
| REQ-002 | Coolant mix **≤50%** coolant; on-hand Prestone LowTox + Star brite Bio-Safe are concentrates; one brand only | Coolant | SRC-009 p. 13; SRC-029; SRC-030; Q-019 | VERIFIED (spec + concentrate) | Dilute before fill; pick brand |
| REQ-003 | Allowable operating pressure ≤ 2.5 bar; WFT 5 L expansion/header tank relief ~1.2 bar | Coolant | SRC-009 p. 13; DEC-005 / heatso 65288A | VERIFIED (spec) | Cap stamp / leak test |
| REQ-004 | Minimum heater water flow 250 l/h | Coolant | SRC-009 p. 13 | VERIFIED (spec) | Flow check after plumbing |
| REQ-005 | Heater and pumps below coolant level in header; do not put a pump at the absolute lowest point | Coolant / layout | SRC-009 p. 15 | VERIFIED (rule) | Layout inspection |
| REQ-006 | Fuel: diesel EN 590; max **20% FAME** blend; not pure biodiesel | Fuel | SRC-009 p. 13, 29 | VERIFIED (spec) | Fuel type on vehicle |
| REQ-007 | Metering pump 15°–90° (prefer 15°–35°); 0°–15° forbidden; diesel suction head ≤1000 mm (pressureless) | Fuel | SRC-009 fuel chapter | OPEN | Measure mount / heads (Q-010) |
| REQ-008 | Exhaust open-air, not into interior/intake; slope + ~Ø 5 mm drain; no closed-garage run | Exhaust | SRC-009 p. 24–25; HAZ-002 | OPEN (as-built) | Routing + CO check |
| REQ-009 | Exhaust Ø 24 mm; run min ~200 mm / max ~2 m | Exhaust | SRC-009 p. 24–25 | OPEN | Measure installed length |
| REQ-010 | Combustion air ≤25 °C area, not cabin; hose Ø 20 mm, max ~760 mm; clean cut | Combustion air | SRC-009 p. 25 | OPEN | Routing inspection |
| REQ-011 | Sustained heat above ~1500 m needs kit **22 1000 33 22 00** + EasyStart Timer; H-Kit on heater | Controls | SRC-009 p. 32; SRC-002; DEC-006 | OPEN (kit in garage) | Find box; wire (Q-015) |
| REQ-012 | 12 V window 10.5–16 V | Electrical | SRC-009 p. 13 | VERIFIED (spec) | Measure at heater |
| REQ-013 | **Independent living-space loop only — no engine connection** | Architecture | DEC-009 | VERIFIED (decision) | No engine hoses cut |
| REQ-014 | Isotemp Slim Square 4.2 gal = circulating glycol in coil, **static** glycol in chamber; not DHW; Bosch gone | Buffer | SRC-021; SRC-022; DEC-001; DEC-007 | VERIFIED (role) | P/N photo; chamber not teed into loop |
| REQ-015 | Isotemp Slim Square 4.2 gal heat battery element is 115 VAC / 750 W and feeds from Paneltronics, not the 12 V panel; fill chamber first and verify AC protection/grounding before energizing | Buffer / electrical | SRC-022; DEC-004; DEC-007 | PARTIAL — Paneltronics circuit details OPEN | Q-009 / Q-016 |
| REQ-016 | DHW in Duda B3-12DW-20 plate heat exchanger; AM100-1LF thermostatic mixing valve on that hot outlet (~120°F set); not factory mixer on the Isotemp Slim Square 4.2 gal heat battery | DHW | DEC-003; DEC-008; SRC-024; SRC-026 | VERIFIED (roles); taps OPEN | Land taps; label setpoint |
| REQ-017 | coil in the Isotemp Slim Square 4.2 gal heat battery below the WFT 5 L expansion/header tank (or high-point bleeder); add coil volume on circulating fill | Coolant | SRC-022 §2, §5 | VERIFIED (rule) | Height vs WFT 5 L expansion/header tank; fill procedure |
| REQ-018 | Cabin control = EasyStart Timer only (DEC-002); in van, wiring unfinished | Controls | SRC-003; SRC-023; DEC-002 | VERIFIED (selection); wiring OPEN | Finish landing (Q-013) |
| REQ-019 | No auxiliary glycol-pump path; Isotemp element remains a separate Paneltronics AC load | Electrical | DEC-004; DEC-013 | VERIFIED (architecture); AC details OPEN | Q-009 / Q-016 |
| REQ-020 | Glycol flow path: Hydronic D5S diesel heater's own pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger → coil in the Isotemp Slim Square 4.2 gal heat battery → return; WFT tank tees at return high point; no summer bypass | Architecture | DEC-010 | VERIFIED (decision) | Hose routing inspection |
| REQ-021 | Master Off/On is intended to gate EasyStart Timer + SC1600B + Sure Marine cabin heater power; SC1600B is intended to call heat/Sure Marine cabin heater; dial is speed only | Controls | DEC-012; DEC-014 | PARTIAL (design intent; Q-022 interface and switch verification open) | Wire per DEC-012/014; Q-021; Q-022 |
| REQ-022 | No separate solar/shore auxiliary glycol pump; hot water through the Duda loop remains diesel-loop dependent; Isotemp element is a separate Paneltronics AC load | Coolant / electrical | DEC-004; DEC-013 | VERIFIED (architecture); AC details OPEN | Leave CM10P7 out; resolve Q-009 / Q-016 |
| REQ-023 | Staging ~65 / 80 / 85 / 75 °C (Power→High→Low→pause→restart); overheat restart <70 °C; ≤2 off/on into fault | Controls | SRC-009 p. 31–32; Q-020 resolved | VERIFIED (spec) | Observe first fire / diagnostics |
| REQ-024 | WFT 5 L expansion/header tank at high point (planned rear bench); not yet mounted | Coolant / layout | DEC-005 | VERIFIED (part); mount OPEN | Mount top = highest loop point |
| REQ-025 | Fuel takeoff uses factory aux connection; still inspect line before fire | Fuel | Q-010; HAZ-008 | PARTIAL | Photo routing/clamps |

## Still blocking first fire (summary)

Fuel-line inspection (REQ-007 / REQ-025), exhaust confirm (REQ-008), fill/bleed (REQ-002–005, REQ-017), EasyStart Timer landing (REQ-018). Altitude kit 22 1000 33 22 00 (REQ-011) blocks high camps, not a low-elevation first fire. Paneltronics element circuit (REQ-015 / REQ-019 / REQ-022) remains open until Q-009 / Q-016 are resolved.
