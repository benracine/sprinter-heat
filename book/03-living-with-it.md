# User's guide

**Stage 2 — Use.** After [Architecture](#system-design), before [Make it](#builders-guide). After [Acceptance](#acceptance), this is day-to-day. Until then, not permission to fire.

Jump: [Architecture](#system-design) · [Status](#current-status-report) · [Make it](#builders-guide) · [Numbers](#the-numbers-that-matter)

## Quick start (after Acceptance)

| You want… | Do this |
|---|---|
| Parked | Master **Off**; Isotemp AC (**WATER HEATER**) off |
| Cabin heat | Master **On** → EasyStart Timer start → fan dial Low/Med/High → wait a few minutes |
| Hot water | Master **On** → short EasyStart start → tap through AM100-1LF only |
| Pre-heat later | Master **On** → EasyStart schedule |
| Optional AC chamber charge | After [HOLD 9](#hold-9) → **WATER HEATER** on → EasyStart later if you want that heat at the taps |
| Mountains overnight | Altitude kit installed first ([DEC-006](#dec-006)) |
| Emergency stop | EasyStart off → master Off → Isotemp AC off → fuse/battery if needed. ≤2 off/on into a fault |

Until [Q-022](#q-022) closes: always start heat from the EasyStart Timer (not the SC1600B).

A heat call wakes the heater and starts its pump; the burner fires only if coolant is cool enough. Cool cabin air for the first minute or two is normal.

## Hard rules

1. Master Off when parked or unattended.
2. Showers only through the AM100-1LF (~120°F, labeled). Unmixed plate water can be ~150–185°F. Setpoint: loosen handwheel screw → lift → turn → lock; check at the faucet ([SRC-036](#src-036)).
3. No overnight heat above ~5,000 ft without Altitude kit 22 1000 33 22 00 ([DEC-006](#dec-006)).
4. ≤2 EasyStart off/on cycles into a fault ([SRC-009](#src-009)). Clear locks with diagnostics, not power thrashing.
5. Check WFT level only when cool.
6. Tap heat needs circulating glycol (diesel pump through the Duda). Isotemp AC heats the static chamber only; the coil still sees loop flow when the pump runs — AC alone is not a shower.
7. Isotemp 750 W lands on Paneltronics **WATER HEATER** only — never 12 V ([DEC-004](#dec-004) / [DEC-020](#dec-020)).

## Controls at a glance

| Control | Does | Does not |
|---|---|---|
| Master switch | Cuts 12 V to EasyStart, SC1600B, and cabin fans | Set temperatures; run Isotemp AC |
| EasyStart Timer | Start/stop, schedule, target ([SRC-003](#src-003)) | Replace master Off |
| SC1600B | Low-current heat **signal** only ([SRC-033](#src-033)); needs relay for fans | Fan power; trusted auto until [Q-022](#q-022) |
| Fan dial | Low/Med/High — no hard Off ([DEC-018](#dec-018)) | Heat call |
| AM100-1LF | Safe tap temperature | Glycol valve; Isotemp factory mixer |
| Paneltronics **WATER HEATER** | Optional chamber charge after [HOLD 9](#hold-9) | Circulate glycol alone |

## If something is wrong

1. EasyStart off → master Off → Isotemp AC off.  
2. Fuse or battery if needed (counts toward ≤2 off/on).  
3. Before restart: fuel wetness/smell, exhaust into cabin, glycol leak, cool WFT low, battery outside 10.5–16 V, lukewarm core while burner runs (air/kink). → [Hazards](#hazard-register)  
4. After overheat: wait until coolant is below ~70°C (158°F).  

Normal Power/High/Low staging is not a fault — see [The numbers](#the-numbers-that-matter).

## Occasional checks

| When | Check |
|---|---|
| After loop work | Cool WFT level; same mix (Prestone LowTox AF555 ≤50%) |
| Before high camps | Altitude kit installed and checked |
| Early fires | Fuel/exhaust: wetness, rub, smell |
| Before a heat call | Battery 10.5–16 V |
| Before Isotemp AC | Chamber full; **WATER HEATER** + upstream GFCI/ELCI |
| Long storage | Master Off; Isotemp AC off |

## Use check

- [ ] Parked = master Off  
- [ ] Heat/hot water from EasyStart until thermostat verified  
- [ ] Showers only through AM100-1LF ~120°F  
- [ ] Isotemp AC ≠ shower  
- [ ] Emergency stop + ≤2 off/on rule  

→ [Status](#current-status-report), then [Make it](#builders-guide).
