# Mechanical Layout

## Scope

Heater, pump, and Isotemp Slim Square 4.2 gal heat battery mounting rules. Vehicle floor insulation is out of hydronic scope.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-009 | p. 15–16 | Hydronic II location and positions (**this heater**) |
| SRC-005 | Mount notes | Underbody behind fuel fill / driver wall — as-built location |
| SRC-022 | §2–3 locating / mounting | coil in the Isotemp Slim Square 4.2 gal heat battery below header; safety valve lowest; ~30 cm front service |
| SRC-018 | Component positioning | Marine boiler location practice — reference only |
| SRC-019 | Fan heaters / expansion p. 5–7, 24–27 | Cabin heater level, bottom-in/top-out; WFT as highest “burp” point — workmanship only |

## Content

### Heater and water pump `[manufacturer]`

- Install below the minimum coolant level (WFT 5 L expansion/header tank / radiator / heat exchanger) so the heater exchanger and pump self-vent (SRC-009 p. 15).
- Do not put the water pump at the lowest point in the circuit; particles settle there. Use a water filter if coolant is dirty (SRC-009 p. 15).
- Keep adequate clearance from hot vehicle parts (SRC-009 p. 15).
- Hydronic II: suggested location is the engine compartment; other locations allowed if they meet the same install requirements (SRC-009 p. 15).
- **This van (as-built / SRC-005):** heater underbody, driver side, behind the fuel-tank fill / outside wall behind the driver seat — common Sprinter living-loop mount. Nameplate must remain readable or duplicated.

Permissible tilt angles: SRC-009 p. 16. Heater horizontal→vertical range per diagram; do not use the “lying on its side” forbidden zone.

### Sure Marine cabin heater `[SRC-019 craft]`

- Mount **level** on a flat surface. Angled mounts trap air away from the bleeder (SRC-019 p. 25).
- Propylene glycol **in bottom, out top** unless the unit’s plate says otherwise. Plan an outlet-side bleeder.
- Keep the core below the WFT 5 L expansion/header tank fluid level.
- Cabin air only — draw living-space (or outside) air across the core; do not pull from a fume-laden bay.

### Isotemp Slim Square 4.2 gal heat battery `[DEC-001, SRC-022]`

- Coil connections should sit below the WFT 5 L expansion/header tank level so the coil self-vents. If the tank is above that level, add a bleeder at the high point (SRC-022 §2).
- Horizontal, vertical, or other Slim Square positions in the manual are allowed; **drain / safety valve must be the lowest point**.
- Keep hydronic hoses to the coil short. Leave ~30 cm (1 ft) in front for element/thermostat service.
- Tank full of water is extra mass (~16 L potable plus the unit; empty weight ~35 lb per SRC-022 §8.3). Mount to a shelf or bulkhead rated for that.
- Envelope about 22-1/4 × 7-3/16 × 15-3/4 in (SRC-022 / National Luna Slim Square 16 L table). `[MEASURE]` against the actual bay.

### WFT 5 L expansion/header tank `[DEC-005, SRC-019]`

- Highest circulating-loop point. Acts as expansion volume and air “burp” tank (SRC-019 p. 26–27).
- Teed on the return in this build (DEC-010) — not in series, not off the Isotemp coil.
- Unrestricted return path from that tee back to the Hydronic D5S diesel heater’s own pump.

### Factory Sprinter sketch `[NOT THIS BUILD]`

SRC-014 shows a factory engine-bay heater with MB pump and controls. That is Candidate B / OEM — not this independent living-space loop (DEC-009).

### Out of scope

SRC-020 floor reconstruction / insulation. Not used for heater or DHW layout.

## Verification

- [ ] Requirements traced to authoritative sources
- [ ] Dimensions and routing checked against the actual vehicle
- [ ] Conflicts and assumptions recorded
- [ ] Relevant inspection hold points completed

## Open items

- [ ] **MEASURE:** Pump height vs coolant level; Isotemp Slim Square 4.2 gal heat battery mount and ~30 cm service clearance; confirm heater tilt within SRC-009 diagram
