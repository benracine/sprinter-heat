# User's Guide {#users-guide}

**Stage 2 — Use.** Read this after [System Design](#system-design) and [The Numbers](#the-numbers-that-matter), and before [Current Status](#current-status-report) and the [Builder’s Guide](#builders-guide). After [Acceptance](#acceptance), use this chapter as the day-to-day manual. Until Acceptance, treat the tables below as the operating target—not as permission to light the heater.

Jump: [System Design](#system-design) · [The Numbers](#the-numbers-that-matter) · [Current Status](#current-status-report) · [Builder’s Guide](#builders-guide)

## Quick start (after Acceptance)

| You want… | Do this |
|---|---|
| Parked | Turn the master **Off**, and leave Isotemp AC (**WATER HEATER**) off |
| Cabin heat | Master **On** → EasyStart Timer start → fan dial Low/Med/High → wait a few minutes |
| Hot water | Master **On** → short EasyStart start → draw the tap through the AM100-1LF only |
| Pre-heat later | Master **On** → set an EasyStart schedule |
| Optional AC chamber charge | After [HOLD 9](#hold-9) → turn **WATER HEATER** on → use EasyStart later if you want that stored heat at the taps |
| Mountains overnight | Install the altitude kit first ([DEC-006](#dec-006)) |
| Emergency stop | EasyStart off → master Off → Isotemp AC off → fuse or battery if needed. No more than two off/on cycles into a fault |

Until [Q-022](#q-022) closes, always start heat from the EasyStart Timer, not from the SC1600B.

A heat call wakes the heater and starts its pump. The burner fires only if coolant is cool enough. Cool cabin air for the first minute or two is normal.

## Hard rules

1. Turn the master Off when the van is parked or unattended.
2. Take showers only through the AM100-1LF (about 120°F, labeled). Unmixed plate water can run about 150–185°F. To set the valve: loosen the handwheel screw, lift, turn, lock, and check at the faucet ([SRC-036](#src-036)).
3. Do not run overnight heat above about 5,000 ft without Altitude kit 22 1000 33 22 00 ([DEC-006](#dec-006)).
4. Do not cycle the EasyStart off and on more than twice into a fault ([SRC-009](#src-009)). Clear locks with diagnostics, not by power cycling.
5. Check the WFT level only when the system is cool.
6. Hot water at the taps needs circulating glycol from the diesel pump through the Duda. Isotemp AC only heats the static chamber; the coil still sees loop flow when the pump runs. Running the element alone will not give you a shower.
7. The Isotemp 750 W element lands on Paneltronics **WATER HEATER** only—never on 12 V ([DEC-004](#dec-004) / [DEC-020](#dec-020)).

## Controls at a glance

| Control | Does | Does not |
|---|---|---|
| Master switch | Cuts 12 V to EasyStart, the SC1600B path, and cabin fans | Set temperatures; run Isotemp AC |
| EasyStart Timer | Start, stop, schedule, and target ([SRC-003](#src-003)) | Replace master Off |
| SC1600B | Low-current heat **signal** only ([SRC-033](#src-033)); needs a relay for fans | Fan power; trusted auto until [Q-022](#q-022) |
| Fan dial | Low/Med/High — no hard Off ([DEC-018](#dec-018)) | Call for heat |
| AM100-1LF | Safe tap temperature | Act as a glycol valve or the Isotemp factory mixer |
| Paneltronics **WATER HEATER** | Optional chamber charge after [HOLD 9](#hold-9) | Circulate glycol by itself |

## If something is wrong

1. Turn EasyStart off, then master Off, then Isotemp AC off.  
2. Pull the fuse or disconnect the battery if needed (that counts toward the two off/on limit).  
3. Before you restart, check for fuel wetness or smell, exhaust into the cabin, a glycol leak, a low cool WFT, battery outside 10.5–16 V, or a lukewarm core while the burner runs (air or a kink). → [Hazards](#hazard-register)  
4. After an overheat, wait until coolant is below about 70°C (158°F).  

Normal Power / High / Low staging is not a fault—see [The Numbers](#the-numbers-that-matter).

## Occasional checks

| When | Check |
|---|---|
| After loop work | Cool WFT level; same mix (Prestone LowTox AF555 ≤50%) |
| Before high camps | Altitude kit installed and checked |
| Early fires | Fuel and exhaust for wetness, rub, or smell |
| Before a heat call | Battery 10.5–16 V |
| Before Isotemp AC | Chamber full; **WATER HEATER** plus upstream GFCI/ELCI |
| Long storage | Master Off; Isotemp AC off |

## Use check

- [ ] Parked means master Off  
- [ ] Heat and hot water come from EasyStart until the thermostat is verified  
- [ ] Showers only through AM100-1LF at about 120°F  
- [ ] Isotemp AC is not a shower  
- [ ] Emergency stop and the two off/on rule are clear  

→ [Status](#current-status-report), then [Make it](#builders-guide).
