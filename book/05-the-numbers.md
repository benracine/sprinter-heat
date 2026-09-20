# The Numbers {#the-numbers-that-matter}

These figures come from the Hydronic D5S diesel heater manual ([SRC-009](#src-009)) unless noted. If you swap the heater, rewrite this page from that heater’s manual first.

Jump: [System Design](#system-design) · [User’s Guide](#users-guide) · [Builder’s Guide](#builders-guide) · [Source Register](#source-register)

| | |
|---|---|
| Heat output (Power / High / Low) | 5.2 / 5.0 / 2.1 kW |
| Fuel use at those settings | 0.64 / 0.61 / 0.26 L/h |
| Coolant staging (approx.) | Power → High ~65°C · High → Low ~80°C · pause ~85°C · restart ~75°C |
| Overheat restart | Coolant below 70°C (158°F) |
| Fluid in the heater itself | ~0.18 L (the loop and Isotemp hold the rest) |
| Minimum flow through the heater | 250 L/h |
| Heater pump (reference) | ~680 L/h @ 0.1 bar; under ~12 W |
| Max propylene glycol overpressure | 2.5 bar |
| WFT 5 L expansion/header tank relief | ~1.2 bar (below heater limit) |
| Isotemp potable PRV (not a glycol setting) | ~5.5 bar / 80 psi — do not size the loop to this |
| Mix | ≤50% Prestone LowTox AF555 only ([DEC-017](#dec-017); [SRC-029](#src-029)) |
| Voltage window | 10.5–16 V |
| Electrical start / run (without pump) | ~120 W start; ~40 / 37 / 12 W Power / High / Low |
| Fuel | Diesel EN 590; ≤20% FAME OK; pure biodiesel not |
| Metering pump angle | 15°–90°; prefer 15°–35°; flat 0°–15° forbidden |
| Metering pump heads | Pressure tank→pump max 3000 mm; suction pressureless max 1000 mm; suction with 0.03 bar cap max 400 mm |
| Exhaust | 24 mm ID; ~0.2–2 m; downslope; ~5 mm drain |
| Combustion air | 20 mm ID; kit hose max ~0.76 m; cool outside air |
| Altitude | Unlimited to ~5,000 ft without kit; kit [22 1000 33 22 00](#dec-006) for sustained 5,000–10,000 ft. Fuel delivery starts reducing ~1400 m (~9% / 1000 m) with kit ([SRC-002](#src-002)) |
| AM100-1LF thermostatic mixing valve | 70–145°F range; set ~120°F, lock handwheel, label ([DEC-008](#dec-008); [SRC-036](#src-036)) |
| Diesel start lockout | Miss may retry ~70 s; lock after two further fails; ≤2 off/on into a fault |

The Isotemp chamber holds about 4.2 gal of static glycol. The coil is charged by the heater pump. The 750 W element on Paneltronics **WATER HEATER** (face **72313** / sheet **9972313B**) heats the chamber only ([DEC-004](#dec-004) / [DEC-007](#dec-007) / [DEC-020](#dec-020)).
