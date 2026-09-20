# Fuel System

## Scope

Eberspächer metering-pump and fuel-line rules. Do not use Webasto/TSL-17 fuel pages (SRC-018 / SRC-019) as specs.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-009 | Fuel supply p. 26–30; fuel quality p. 29 | Hydronic II diesel rules, pump orientation, heads (**this heater**) |
| SRC-005 | Priming notes | Owner hand-bulb siphon — blog; manufacturer still requires vented fuel |

## Content

### Fuel quality

- Hydronic D5S diesel heater (this build): commercial diesel EN 590; **blending with max 20% FAME** EN 14214 is permitted (SRC-009 p. 13 tech data).
- Pure biodiesel / FAME as the sole fuel is **not** approved (SRC-009 p. 29 “Operation with biodiesel”).
- Do not use Hydronic II C or D5WS fuel pages for this heater (DEC-000).

### Safety (SRC-009 fuel chapter)

- Switch off engine and heater before refuelling or fuel work.
- No naked flame, no smoking, avoid skin contact and inhalation.
- Cut hose/pipe with a sharp knife; no crushed or burred ends.
- Butt-join pipe inside hose to avoid bubbles.
- Protect fuel parts from heat; never route or fasten fuel pipes to the exhaust. Provide heat clearance at crossings; heat shields if needed.
- Dripping/evaporating fuel must not collect on hot parts or electrical gear.
- Clamp lines (~50 cm guideline) against vibration and mechanical damage.
- Fuel pipe from metering pump to heater should have a continuous rise.
- In buses/coaches: fuel pipes and tanks must not run through the passenger compartment or driver’s cab (statutory example in SRC-009 — treat occupied van living space with the same caution).

### Metering pump (Hydronic II, SRC-009)

- Allowed installation 15°–90°; preferred 15°–35°; **0°–15° not allowed**.
- Pressure head tank → pump: max 3000 mm.
- Suction head, pressureless tank: max 1000 mm diesel (500 mm petrol).
- Suction head with 0.03 bar tank-cap valve: max 400 mm diesel (150 mm petrol).

D5WS suction/pressure numbers in SRC-010 are **not** this heater (DEC-000).

### Transferable fuel-line workmanship from SRC-019 `[REFERENCE, not spec]`

The TSL-17 guide is a different heater system, so its tubing sizes, lift limits, and fuel-pump geometry do not apply here. Its workmanship advice is still useful: keep fuel components individually supported and accessible for inspection or service; protect the line from rubbing and heat; use fuel-rated sealant where a threaded fitting requires it; and do not let a hose or tube carry the weight of a filter, valve, or pump. For this Hydronic D5S diesel heater, SRC-009 remains authoritative for fuel type, pump angle, heads, routing, and all heater-specific limits.

### Commissioning

Coolant circuit and the whole fuel supply must be carefully vented before first fire (SRC-009 p. 31). SRC-005 describes a hand-siphon prime and fuse-pull reset after failed starts — blog only; manufacturer lockout rules are in SRC-009 p. 32 (diesel: restart after 70 s miss; lock after two further failed attempts in the safety time). Do not switch off/on more than twice into a fault.

### Priming the fuel line (first fill)

Manufacturer requires the fuel system vented before first fire (SRC-009 p. 31).

**HOLD — confirm the tool on the actual van before opening the fuel line:** measure the existing line outside diameter and the accessible joint where the temporary primer will connect. Select hose-barb adapters and the union to match those measured sizes and fuel compatibility. Record the sizes and photograph the assembled tool. Do not guess a 6 mm, 8 mm, 3/16 in, 1/4 in, NPT, or BSP size from a generic listing; SRC-009 and the owner notes do not establish the van's installed adapter dimensions.

**Owner priming tool (SRC-005, documented):** hand-bulb siphon (~$15 parts — O'Reilly hand siphon + Ace hose barbs + union). Procedure: open the fuel line at a convenient joint, insert the barb, squeeze the bulb to pull diesel past the metering pump toward the heater inlet, then reconnect the line before first start. Goal: avoid burning the diesel start-attempt budget on a dry line.

**Lockout (manufacturer wins over blog):** SRC-009 p. 32 — diesel: restart after ~70 s miss; lock after two further failed attempts in the safety time; do not switch off/on more than twice. Clear locks via EasyStart Timer diagnostic path (or other approved tools listed in SRC-009). SRC-005’s “pull the fuse to reset” and “three chances” are community notes — use only if the timer path is unavailable, and still obey the off/on limit.

## Verification

- [ ] Requirements traced to authoritative sources
- [ ] Dimensions and routing checked against the actual vehicle
- [ ] Conflicts and assumptions recorded
- [ ] Relevant inspection hold points completed

## Open items

- [ ] **MEASURE:** Pump angle, suction/pressure heads, fuel take-off method
- [ ] **MEASURE:** Photograph / label the priming-tool adapters for the van toolbox
