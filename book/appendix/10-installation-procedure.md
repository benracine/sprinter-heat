# Installation Procedure

## Scope

Hydronic D5S diesel heater install sequence (DEC-000 / SRC-009). Isotemp Slim Square 4.2 gal heat-battery rules from SRC-022 (DEC-001 / DEC-007). Floor insulation is out of scope. The serial install path for the vehicle is `../install-in-this-order.md`.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-022 | §2–6 | Isotemp Slim Square 4.2 gal heat battery locate, mount, plumb, fill; element full-chamber and AC safety rules |
| SRC-021 | Product notes | USA BSP-to-NPT / PEX swivel fittings |
| SRC-009 | p. 31 | Eberspächer first-fire bleed |
| SRC-019 | p. 22–25, 27–30 | Hose/clamp craft; cabin heater bleed; water-first leak check before glycol fill |
| DEC-010 | Decision log | Loop flow path: Hydronic D5S diesel heater's own pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger → coil in the Isotemp Slim Square 4.2 gal heat battery → return |
| DEC-013 | Decision log | No auxiliary glycol-pump path; Isotemp element remains a Paneltronics AC load |

## Content

### Isotemp Slim Square 4.2 gal heat battery (do in this order)

1. Mount so the drain/safety valve is the lowest point; leave service access in front (SRC-022).
2. Plumb the hydronic **coil** into the circulating glycol loop, below the WFT 5 L expansion/header tank or with a high-point bleeder. Do not tee the 4.2 gal chamber into that loop.
3. Fill the **chamber** with the same glycol mix as the loop. Leave it static. Do not pipe those ports to taps. Leave the PRV drain unblocked (SRC-022 §5). Factory mixer on this tank is unused.
4. Fill/bleed circulating glycol including coil volume. Prefer water-first leak check, then ≤50% propylene glycol; bleed Sure Marine cabin heater outlet until a steady stream (SRC-019; see `../install-in-this-order.md`).
5. Route the 115 VAC element to the Paneltronics AC panel. Do not energize until the chamber is full and the AC protection/grounding checks are complete. Chamber still gets filled with static glycol for thermal mass.
6. The AM100-1LF thermostatic mixing valve is already on the Duda B3-12DW-20 plate heat exchanger freshwater outlet (DEC-008 / SRC-024). Run tap hoses from the mixed outlet only. Set and label it before anyone showers. Do not use the Isotemp Slim Square 4.2 gal heat battery factory mixer as the tap mixer.

Eberspächer mounting, fuel, exhaust, EasyStart Timer wiring, Altitude kit 22 1000 33 22 00, and first fire: follow SRC-009 and `../install-in-this-order.md` (DEC-010 loop order).


## Verification

- [ ] Requirements traced to authoritative sources
- [ ] Dimensions and routing checked against the actual vehicle
- [ ] Conflicts and assumptions recorded
- [ ] Relevant inspection hold points completed

## Open items

- [ ] **OPEN:** Owner fuel-priming tool procedure (07-fuel-system.md)
- [ ] **OPEN:** Q-009 — Paneltronics breaker, GFCI/grounding, cable route, and control/enable details (HOLD 9). Q-016 architecture closed (AC-only panel).
