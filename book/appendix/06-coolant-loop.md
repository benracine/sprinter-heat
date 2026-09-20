# Coolant Loop

## Scope

Coolant chemistry, flow, pressure, and plumbing. Fresh water is heated in the Duda B3-12DW-20 plate heat exchanger (DEC-003). The Isotemp Slim Square 4.2 gal heat battery (DEC-007): circulating glycol in the coil, static glycol in the chamber.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-009 | p. 13, 15, 20–23, 31–32 | II D5S: 250 l/h; 2.5 bar; 50% max; staging; bleed; rejected engine-circuit options |
| SRC-021 / SRC-022 | Product + I&O §4–5, §8.3 | coil in the Isotemp Slim Square 4.2 gal heat battery in glycol; chamber static glycol (DEC-007) |
| SRC-027 / SRC-029 | Retail + SDS 506 | Prestone LowTox AF555 concentrate (PG 90–100%) |
| SRC-028 / SRC-030 / SRC-031 | Product + SDS 317XX + RTU contrast | Star brite Bio-Safe year-round concentrate (PG 80–100%); not SKU 30300 |
| SRC-018 | Water system p. 25–32 | Bleeders, fill/drain, pump orientation, fan-heater flow — marine reference only |
| SRC-019 | Water system p. 5–7, 22–30; thermostat p. 7 | Same family of loop practice as SRC-018, from the Sure Marine TSL-17 guide (this van’s SC1600B / REAL-style cabin heat lineage). Workmanship only — not Eberspächer specs |

## Content

### Chemistry and limits (this heater — Hydronic D5S diesel heater, SRC-009 p. 13)

| Parameter | Value |
|---|---|
| Medium | Water + coolant, **max 50% coolant** |
| Max overpressure | 2.5 bar |
| Water volume in heater | ~0.18 l |
| Min flow through heater | 250 l/h |
| 12 V pump delivery | 680 l/h @ 0.1 bar, <12 W |

Overheat / low-flow is a lockout condition: coolant must drop below 70 °C before restart after overheat (SRC-009 p. 32). Normal staging (SRC-009 p. 31): Power → High ~65 °C; High → Low ~80 °C; Low → Off/pause ~85 °C; restart from pause ~75 °C. **During pause the circulating pump keeps running** so the Isotemp coil can still exchange heat with the static chamber ([The Numbers](#the-numbers-that-matter); [Isotemp value study](#isotemp-value-study)).

Hydronic II C and D5WS tables are **not** this heater (DEC-000) — do not use their min-flow or wattage columns.

### On-hand fluid `[Q-019]`

| Brand | Base | Class | Concentrate? | Mix rule |
|---|---|---|---|---|
| Prestone LowTox AF555 | Propylene glycol | Automotive engine coolant | **Yes — concentrate.** SDS 506: PG **90–100%** (SRC-029). Retail UPC lists Concentrate (SRC-027). | Dilute with water. Heater cap **≤50%** coolant (SRC-009). Do not pour undiluted. |
| Star brite Bio-Safe year-round (31700 / 317XX) | Propylene glycol | Phosphate-free engine coolant | **Yes — full strength.** SDS 317XX: PG **80–100%** (SRC-030). Not Star brite’s 50/50 RTU 30300 (SRC-031). | Dilute with water to **≤50%** coolant (SRC-009). Do not pour undiluted. |

**How we know they are concentrates:** a ready-to-use 50/50 coolant SDS lists roughly 40–60% glycol plus water. Both of these SDS sheets list propylene glycol in the **80–100%** band with no water as a major ingredient. That is full-strength propylene glycol.

Same PG base is necessary, not sufficient. Inhibitor packages differ. **No manufacturer mix approval found.** Do not combine them in the loop. Prefer one product for the fill.

Hydronic operating pressure (≤ 2.5 bar / ~36 psi) is **not** the Isotemp Slim Square 4.2 gal heat battery potable safety-valve setting (5.5 bar / 80 psi). Do not size the glycol loop to the potable PRV.

### Circuit options — engine splice `[NOT SELECTED — DEC-009]`

Independent living loop does not use these. Retained only so nobody reopens Candidate B from a manual skim.

SRC-009 p. 20–23:

- Inline with non-return valve: heat to engine first; cabin blower comes in around 30 °C.
- Thermostat + T-piece: small circuit to cabin HX until ~70 °C; full large-circuit switchover ~75 °C.
- 5-port combination valve + T-piece, or 6-port combination valve when flow and return run parallel. Parking-heater small circuit to ~67 °C, then some heat to the engine.

SRC-010 p. 12: 5-port Order No. 330 00 177 + T-piece 20 1673 80 11 00; 6-port 330 00 176.

SRC-008 (vendor): likely 25 2014 80 62 00. Do not assume that equals 330 00 176 (Q-007).

Independent living loop (DEC-009) does not use these engine valves; it still must meet min flow, self-vent height, and 2.5 bar.

### Isotemp Slim Square 4.2 gal heat battery `[DEC-001, DEC-007]`

Glycol through the corrugated 316 SS coil (circulating loop). The ~4.2 gal / 16 L chamber holds the **same mix, sitting static** — not freshwater, not loop flow. That static mass is the Isotemp Slim Square 4.2 gal heat battery. Factory design was coil + potable water; this build keeps that split and puts glycol on both sides because the tank has no DHW job left. Bosch is gone.

The coil always sees circulating glycol from the Hydronic D5S diesel heater's own pump (DEC-013 removed any separate auxiliary glycol pump). The static chamber can also be heated by the tank's 750 W / 115 VAC element from the Paneltronics AC panel, but that element does not pump the loop or replace the D5S pump. Hot water through the Duda plate still depends on circulating glycol.

The WFT 5 L expansion/header tank (DEC-005) is the **circulating** glycol header. It does not replace the static 4 gal mass.

**Hydronic / coil**

- 1/2 in BSPP engine-water connections. Use heat-rated hose; brass or stainless fittings, not ordinary plastic (SRC-022 §4.1–4.3).
- Coil below the glycol header so it self-vents; bleeder if the tank is mounted high (SRC-022 §2).
- On first fill, add coolant for **coil + hose** volume on the circulating side, and fill the **chamber** separately (static).
- Keep coil hoses short to limit restriction (min Eberspächer flow 250 l/h, SRC-009 p. 13).
- Coil stays in circulating flow so the battery is charged and discharged (Q-017). Do not tee the chamber into that loop.

**Tank / element**

- Drain/safety valve at the lowest point (SRC-022). Do not energize the 750 W element on an empty chamber (SRC-022 §1). Element and thermostat were built for water; they now sit in static glycol (HAZ-006).
- factory mixer on the Isotemp Slim Square 4.2 gal heat battery is **inert** in this build: it only mixes potable hot and cold (SRC-022, 38–65 °C). The chamber is static glycol with no tap flow, so that valve has nothing to do. Cap unused ports. It is **not** the DHW mixer (DEC-008).
- Winter drain of this chamber also removes the Isotemp Slim Square 4.2 gal heat battery.

### DHW — Duda B3-12DW-20 plate heat exchanger + owner mixing valve `[DEC-003, DEC-008]`

Glycol on one side of the double-wall plate exchanger (B3-12DW-20); fresh water on the other. Mixer is already on the hot-water outlet (SRC-024). Unmixed Duda B3-12DW-20 plate heat exchanger outlet can be as hot as the glycol loop — scald hazard (HAZ-005). Tap hoses must come off the mixed outlet, not a glycol barb. Do not use the Isotemp Slim Square 4.2 gal heat battery factory valve as the tap mixer.

**Not selected:** Bosch glycol buffer (DEC-001); SureCal tank (SRC-016); coil in the Isotemp Slim Square 4.2 gal heat battery as DHW exchanger.

### Transferable loop practice from marine guides `[REFERENCE, not spec]`

SRC-018 (Webasto DBW) and **SRC-019 (Sure Marine TSL-17 with SureWire, June 2017)** document the same installer craft this build is reinventing for a van. They are **not** heater-family specs for the Hydronic D5S diesel heater. Where they conflict with SRC-009 (mix %, fuel, exhaust, pump identity), SRC-009 wins.

**Layout (SRC-019 p. 5–6, 26–27)**

- Expansion/header must be the **highest** point. It holds head on the pump and acts as a “burp” tank for air. Any component above it becomes an accidental air trap and can starve that branch.
- Unrestricted path from the expansion/header toward the circulating pump. Do not put restrictive loads (cabin heater, tank coil) between the header tee and the pump.
- Fan heaters / space heat exchangers below the header; typically **bottom-in / top-out**, mounted **level**, with a bleeder on the outlet. Angled mounts trap air away from the bleeder.
- Domestic heat exchanger on a path that is always open when you want hot water. Marine “summer valves” that bypass cabin loops are **rejected here** (DEC-010); summer hot water is a short EasyStart Timer call instead.
- Diesel boiler → domestic water requires an **anti-scald / thermostatic mixing valve** (this build: AM100-1LF thermostatic mixing valve on the Duda B3-12DW-20 plate heat exchanger).

**Hose and fittings (SRC-019 p. 22–23)**

- Reinforced heater hose (not garden hose, not ordinary radiator hose for long runs).
- Brass / copper / stainless barbs; stainless clamps; double-banded clamps preferred.
- Hose fully over the barb; adhesive on beaded fittings; metal elbow for tight 90° turns; ~1/8 in clearance through bulkhead holes; support clamps along the run.
- In-line bleeder at hose high points that can trap air. Fill/drain at the **lowest** point.

**Fill / bleed / first heat (SRC-019 p. 27–30)**

- Estimate circulating volume before buying concentrate. Example capacities in that guide (order-of-magnitude only): ~3 gal per 100 ft of 3/4 in heater hose; ~0.2 qt per REAL-style fan heater; a 5 L-class header holds on the order of a gallon when full.
- Prefer a **water-only flush and leak check** before committing propylene glycol. Cap off the header while filling. Do not run the pump dry; do not run the pump during the first flush if debris may still be in the hose.
- Bleed until a **steady** stream (sputter = air). Run the pump briefly, then bleed again.
- Check header level only when the system is **cool**. Hot open-cap checks can scald.
- Optional diagnostic after first heat (marine practice): supply-to-return ΔT around 10°F is healthy circulation; much larger ΔT suggests flow is too low. Confirm against SRC-009 min flow (250 l/h) if anything feels lukewarm while the burner runs.
- Mix chemistry: that guide discusses ~40% antifreeze and a 50% ceiling. **This heater** is capped at **≤50% propylene glycol** by SRC-009; use Prestone LowTox AF555 only (DEC-017).

**Thermostat placement (SRC-019 p. 7)**

- No mercury thermostats (vibration). Trial-mount the SC1600B on a temporary lead if needed to find a spot free of drafts and direct sun — same advice as SRC-009 room-sensor placement.

## Verification

- [ ] Requirements traced to authoritative sources
- [ ] Dimensions and routing checked against the actual vehicle
- [ ] Conflicts and assumptions recorded
- [ ] Relevant inspection hold points completed

## Open items

- [ ] **CLOSED:** Q-019 / DEC-017 — Prestone LowTox AF555 only, ≤50%
- [ ] **MEASURE:** Static height of Eberspächer and coil in the Isotemp Slim Square 4.2 gal heat battery vs the WFT 5 L expansion/header tank; circulating fill volume (coil + hoses + heater)
