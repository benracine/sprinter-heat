# BOM and Missing Parts

## Scope

Build a working BOM for the independent loop (DEC-009). DHW tank is selected (DEC-001).

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-001 / SRC-009 / SRC-010 | Scope of supply | What a heater kit is supposed to include |
| SRC-002 / SRC-003 | Whole | Altitude kit 22 1000 33 22 00 and timer |
| SRC-004 | Architecture list | Candidate living-loop parts; Bosch withdrawn |
| SRC-021 / SRC-022 | Product + I&O | Isotemp Slim Square 4.2 gal heat battery |
| `03-parts-inventory.md` | Whole | Selected vs unconfirmed list |

## Content

No approved heater-side BOM. Do not purchase from mixed Eberspächer manuals.

### Selected DHW / buffer line

| Item | Qty | Spec | Source |
|---|---|---|---|
| Isotemp Slim Square 4.2 gal heat battery | 1 | 4.2 gal static glycol mass + coil in circulating loop; **not** the DHW heat exchanger | SRC-021 / DEC-001 / DEC-007 |
| Duda B3-12DW-20 plate heat exchanger | 1 | Double-wall glycol-to-fresh-water exchanger, mounted | DEC-003; SRC-024 |
| AM100-1LF thermostatic mixing valve | 1 | On the Duda B3-12DW-20 plate heat exchanger hot outlet. Tap runs not landed | DEC-008; SRC-024 |
| Hydronic coil hoses (Isotemp Slim Square 4.2 gal heat battery) | on hand | Owner has hose; remaining stock ID / material `[OPEN]` | Owner 2026-09-19 |
| Duda B3-12DW-20 plate heat exchanger potable + glycol hoses | partial | Mixer on the Duda B3-12DW-20 plate heat exchanger; freshwater in through cabinet; one 3/4 in heater hose on a lower port; mixer-to-tap and remaining glycol barb open | SRC-024; SRC-026 |
| Glycol | on hand | Prestone LowTox AF555 + Star brite Bio-Safe year-round — both concentrates (SRC-029 / SRC-030). Dilute ≤50%. Do not mix brands (Q-019) | Owner; SRC-027–031 |
| Clamps | on hand | Confirm type on the joints that matter | Owner 2026-09-19 |
| SC1600B Digital Thermostat | 1 | Sure Marine cabin heater / cabin heat control — not hot water (DEC-014; earlier DEC-013 assist-circuit pump withdrawn) | DEC-014 |
| Master Off/On 12 V switch | 1 | Gates EasyStart Timer + Sure Marine cabin heater circuit | DEC-012 |
| Altitude kit 22 1000 33 22 00 | 1 | Required; garage — find box | DEC-006 / Q-015 |

### Known documentation gaps

| Gap | Why it blocks a BOM | Source |
|---|---|---|
| Loop architecture | Combination valve vs independent loop | **Resolved DEC-009:** independent loop only; no engine connection |
| Duda B3-12DW-20 plate heat exchanger keep/drop | Extra exchanger vs coil in the Isotemp Slim Square 4.2 gal heat battery only | **Resolved DEC-003:** Duda B3-12DW-20 plate heat exchanger is the DHW heat exchanger |
| DHW mixing valve unidentified | Scald control on the Duda B3-12DW-20 plate heat exchanger outlet | **Resolved DEC-008 / SRC-024:** AM100-1LF thermostatic mixing valve is on the Duda B3-12DW-20 plate heat exchanger |
| Control stack unknown | EasyStart Timer vs Heatmiser vs both | **Resolved DEC-002:** EasyStart Timer only |
| Loop flow path / summer valve | Blog order vs locked series | **Resolved DEC-010:** Hydronic D5S diesel heater's own pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger → Isotemp Slim Square 4.2 gal heat battery → return; no summer valve |
| 6-port valve P/N unconfirmed | SRC-008 vs SRC-010 historical 330 00 176 | **N/A (DEC-009):** no engine splice |
| Expansion-tank volume | WFT 5 L expansion/header tank + coil/hose circulating fill; 4.2 gal chamber separate static | DEC-005; DEC-007 |
| Remaining hose stock ID | Landed Duda B3-12DW-20 plate heat exchanger hose is 3/4 in / 16 bar (SRC-024); leftover coil hose still open | Owner 2026-09-19 |
| Glycol product / mix | Two PG concentrates on hand; mixing brands not OK; max 50% coolant (SRC-009) | Q-019; SRC-029; SRC-030 |

### Missing identification work (do this first)

1. Photograph heater nameplate, pump, metering pump, timer, altitude sensor, and any valve stamp.
2. Photograph the Isotemp Slim Square 4.2 gal heat battery nameplate/P/N and the Sure Marine cabin heater if present.
3. Duda B3-12DW-20 plate heat exchanger is on the van (SRC-024). Do not re-buy it.
4. Match each photo to an SRC ID before adding a BOM line.
5. Install Altitude kit 22 1000 33 22 00 from the garage; wire per SRC-002 before high camps (Q-015 — P/N and H-Kit already confirmed).

## Verification

- [ ] Requirements traced to authoritative sources
- [ ] Dimensions and routing checked against the actual vehicle
- [ ] Conflicts and assumptions recorded
- [ ] Relevant inspection hold points completed

## Open items

- [ ] **OPEN:** Q-009 (Isotemp Slim Square 4.2 gal heat battery AC circuit / GFCI sizing)
- [ ] **OPEN:** Q-019 (which concentrate brand for final fill)
- [ ] **OPEN:** Q-021 (Sure Marine cabin heater switch model)
- [ ] **MEASURE:** Remaining hose stock ID / material
