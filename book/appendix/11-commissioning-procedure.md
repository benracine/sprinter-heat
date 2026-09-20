# Commissioning Procedure

## Scope

Isotemp Slim Square 4.2 gal heat battery commissioning (DEC-007). Eberspächer first-fire per SRC-009 p. 31–32. Plain-English twin: `book/install-in-this-order.md` steps 8–9.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-022 | §5 Start up/test | Fill chamber, test PRV, bleed coil, then AC (fluid is glycol, not potable) |
| SRC-009 | p. 31–32 | Bleed coolant and fuel; leak check; staging; lockout rules |
| SRC-019 | Water system p. 27–30 | Water-first leak check; bleed until steady stream; cool-level check; ΔT as flow hint (reference) |
| SRC-005 | Priming | Hand-bulb fuel prime before first fire (blog; manufacturer still requires vented fuel) |

## Content

### Before first fire (hold points)

- [ ] Fuel routing/clamps inspected (HAZ-001 / Q-010) — factory aux pickup OK; line still needs a look
- [ ] Fuel line primed with hand-bulb tool; not relying on dry start attempts
- [ ] Exhaust ends open-air, away from intake and cabin openings; slope + drain (HAZ-002)
- [ ] **HOLD:** water-first circulating-loop leak test passed before glycol is committed (zero visible leaks at rest and during a brief pump run; drain water clear); then fill ≤50% propylene glycol, one brand; bleed until steady stream at WFT and Sure Marine cabin heater outlet; pump briefly; bleed again
- [ ] Heater, pumps, and coil in the Isotemp Slim Square 4.2 gal heat battery below fluid level in WFT 5 L expansion/header tank
- [ ] Mix ≤50% coolant; one brand only
- [ ] AM100-1LF thermostatic mixing valve on the Duda B3-12DW-20 plate heat exchanger set (~120°F target); tap hoses from mixed outlet only before anyone showers
- [ ] EasyStart Timer can command the heater; Altitude kit 22 1000 33 22 00 preferred at HOLD 4 while the harness is open (required before high camps; [DEC-006](#dec-006))
- [ ] Fuel-prime adapter sizes and access joint confirmed on the actual van; no dry-start experiment used
- [ ] Q-022 automatic thermostat mode either verified and documented, or explicitly deferred; manual EasyStart Timer operation available
- [ ] Sure Marine cabin heater mounted level, bottom-in / top-out, with outlet bleeder reachable (SRC-019)

### Isotemp Slim Square 4.2 gal heat battery `[DEC-001, DEC-007]`

- [ ] Chamber filled with static glycol mix (not freshwater)
- [ ] PRV lever test; drain hose open
- [ ] Circulating glycol bled through the coil; coil hoses not air-locked
- [ ] Chamber left static — not teed into loop flow, not piped to taps
- [ ] 115 VAC element routed to Paneltronics; AC protection/grounding verified; element not energized until chamber is full; no aux pump path
- [ ] No mixing of chamber glycol with Duda B3-12DW-20 plate heat exchanger freshwater at fittings

### Eberspächer first fire `[DEC-000 / SRC-009 p. 31–32]`

- [ ] Coolant and fuel systems vented
- [ ] Trial run from EasyStart Timer: watch underside and new joints
- [ ] Water and fuel connections leak-checked while hot
- [ ] If fault: do not switch off/on more than twice; use EasyStart Timer diagnostic path (not a D5WS code list)
- [ ] After overheat: cool below 70 °C before restart
- [ ] Expect Power → High ~65 °C → Low ~80 °C → pause ~85 °C; pump keeps running in pause; restart from pause ~75 °C

### After first fire / before calling it done

- [ ] First run watched end-to-end; no wetness or unexplained smell
- [ ] WFT 5 L expansion/header tank level rechecked after cool-down (cool only — never open hot)
- [ ] Optional: supply-to-return ΔT near ~10°F while running; much larger suggests low flow (SRC-019 hint; confirm vs SRC-009 250 l/h)
- [ ] AM100-1LF thermostatic mixing valve setpoint confirmed before any shower
- [ ] Master switch Off verified as lockout
- [ ] Altitude kit 22 1000 33 22 00 landed at HOLD 4 (or explicitly documented exception before a low-elevation-only first fire); required before high camps (Q-015 / DEC-006)
- [ ] Isotemp Slim Square 4.2 gal heat battery element operation tested only after Paneltronics checks and full-chamber confirmation

## Verification

- [ ] Requirements traced to authoritative sources
- [ ] Dimensions and routing checked against the actual vehicle
- [ ] Conflicts and assumptions recorded
- [ ] Relevant inspection hold points completed

## Open items

- [ ] **OPEN:** Q-009 Paneltronics AC protection, cable route, and control/enable details (HOLD 9). Q-016 is closed on architecture (AC-only panel); remaining work is Q-009.
- [ ] **MEASURE:** Confirm Altitude kit 22 1000 33 22 00 is mounted and wired at HOLD 4; required before high camps (Q-015)
