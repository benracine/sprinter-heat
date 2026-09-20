# The Numbers {#the-numbers-that-matter}

Skim after [System Design](#system-design), then the [User’s Guide](#users-guide). From [SRC-009](#src-009) unless noted. Swap the heater → rewrite this page. Chamber sizing / keep-or-sell: [Isotemp value study](#isotemp-value-study).

Jump: [System Design](#system-design) · [User’s Guide](#users-guide) · [Isotemp value study](#isotemp-value-study) · [Builder’s Guide](#builders-guide)

| | |
|---|---|
| Heat output (Power / High / Low) | 5.2 / 5.0 / 2.1 kW (~17,740 / 17,060 / 7,165 Btu/h) |
| Fuel use at those settings | 0.64 / 0.61 / 0.26 L/h |
| Coolant staging (approx.) | Power → High ~65°C · High → Low ~80°C · pause ~85°C · restart ~75°C |
| During control pause | Burner off; **pump keeps running** |
| Overheat restart | Coolant below 70°C (158°F) |
| Fluid in the heater itself | ~0.18 L |
| Minimum flow through the heater | 250 L/h |
| Heater pump (reference) | ~680 L/h @ 0.1 bar; under ~12 W |
| Max propylene glycol overpressure | 2.5 bar |
| WFT relief | ~1.2 bar |
| Isotemp potable PRV (not glycol) | ~5.5 bar / 80 psi |
| Isotemp AC working thermostat | Cuts near **75°C / 167°F**; overheat ~95°C, manual reset ([SRC-022](#src-022)) |
| Mix | ≤50% Prestone LowTox AF555 only ([DEC-017](#dec-017)) |
| Voltage window | 10.5–16 V |
| Electrical start / run (without pump) | ~120 W start; ~40 / 37 / 12 W Power / High / Low |
| Fuel | Diesel EN 590; ≤20% FAME OK; pure biodiesel not |
| Metering pump angle | Prefer 15°–35°; flat 0°–15° forbidden |
| Metering pump heads | Pressure tank→pump max 3000 mm; suction pressureless max 1000 mm; suction with 0.03 bar cap max 400 mm |
| Exhaust | 24 mm ID; ~0.2–2 m; downslope; ~5 mm drain |
| Combustion air | 20 mm ID; kit hose max ~0.76 m |
| Altitude | Unlimited to ~5,000 ft without kit; kit [22 1000 33 22 00](#dec-006) for 5,000–10,000 ft |
| AM100-1LF | Set ~120°F, lock, label ([DEC-008](#dec-008)) |
| Isotemp factory mixer | **Unused forever** |
| Isotemp element | 750 W ≈ **6.5 A** @ 115 V on **WATER HEATER** only |
| Paneltronics AC feed | One **9009**: shore ↔ PROwatt → **WATER HEATER** |
| Mean Well charge | Other **9009**: shore ↔ J1772 (not heat) |
| Diesel start lockout | ≤2 off/on into a fault |

### Planning scale

| | |
|---|---|
| Chamber charge cool → ~75°C | ~**40–60 min** at 750 W; taps cold until pump runs |
| Holdover at Low (2.1 kW) | **Tens of minutes** — [Isotemp value study](#isotemp-value-study) |
| Dish rinse, warm loop | ~**30–60 s** to hot; ~**2–5 min** rinse |
| Dish rinse, cold loop | Flame usually on; useful hot in ~**2–5 min** |
