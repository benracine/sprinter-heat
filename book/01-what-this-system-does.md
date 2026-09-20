# System Design

**Stage 1 — Architecture.** Finish before [Use](#users-guide) or [Make it](#builders-guide). Point at each part: what it does, what it must not do, which way glycol flows.

Jump: [Safety](#safety) · [Use](#users-guide) · [Status](#current-status-report) · [Four buckets](#four-buckets-overview) · [Make it](#builders-guide) · [Numbers](#the-numbers-that-matter)

## Purpose

One Hydronic D5S diesel heater under the van does two jobs:

1. Warm cabin air (Sure Marine cabin heater).
2. Heat tap water (Duda B3-12DW-20 plate heat exchanger → AM100-1LF thermostatic mixing valve).

Both jobs share one closed propylene glycol loop. That loop never mixes with drinking water, never connects to the engine ([DEC-009](#dec-009)), and has no second pump ([DEC-013](#dec-013)).

The Isotemp Slim Square 4.2 gal heat battery stores leftover loop heat in a **static** chamber (coil in the loop). Its 750 W / 115 VAC element is a Paneltronics AC load that heats that chamber only ([DEC-004](#dec-004) / [DEC-007](#dec-007)) — it does not circulate glycol and does not put hot water at the Duda plate by itself. Tap heat still needs the Hydronic D5S diesel heater’s pump.

**Reject and stop** if a proposal would: splice into the engine, tee glycol into drinking water, bypass the Sure Marine cabin heater, add a second glycol pump, or land the Isotemp 750 W element on the 12 V panel.

## Locked architecture

| | Locked rule |
|---|---|
| Loop order | Return → heater pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger (glycol) → Isotemp coil → return ([DEC-010](#dec-010)) |
| Header | WFT 5 L expansion/header tank tees into the **return** at the highest circulating point — not in series, not off the Isotemp coil |
| Why that order | Cabin heat first (daily priority); Duda next (hottest fluid for showers); Isotemp last (stores leftovers) |
| Drinking water | Duda plate only; AM100-1LF thermostatic mixing valve on hot out; set ~120°F; taps from mixed outlet only ([DEC-003](#dec-003) / [DEC-008](#dec-008)) |
| Heat battery | Coil circulating; chamber static same mix; factory mixer capped; 750 W on Paneltronics **WATER HEATER** only |
| Cabin air | Living-space air across the Sure Marine cabin heater core (on van, SN 16401); combustion stays outside |
| Heights | WFT highest; everything else below it; cabin heater level, bottom-in/top-out, outlet bleeder; fill/drain at lowest point; unrestricted path from WFT tee back to the pump |

![Glycol loop](diagrams/glycol-loop.svg)

## The parts {#the-parts}

Meet each part once. Official names — use only these.

| Part | Photo | Does | Does not |
|---|---|---|---|
| Hydronic D5S diesel heater | ![Hydronic D5S heater](assets/parts/hydronic-d5s.jpg){.part-photo} | Burns diesel; own pump moves the loop; stages on coolant temperature ([The numbers](#the-numbers-that-matter); [SRC-009](#src-009)) | Connect to the engine |
| Sure Marine cabin heater | ![Sure Marine cabin heater](assets/parts/sure-marine-cabin.jpg){.part-photo} | Glycol → cabin air; two fans + one Low/Med/High dial ([DEC-015](#dec-015)); target both Noctua NF-F12 | Pull combustion air into the cabin |
| Duda B3-12DW-20 plate heat exchanger | ![Duda plate heat exchanger](assets/parts/duda-plate.jpg){.part-photo} | Glycol → freshwater across a double wall | Mix the two fluids |
| AM100-1LF thermostatic mixing valve | ![AM100-1LF mixing valve on Duda](assets/parts/am100-1lf.jpg){.part-photo} | Limits shower/sink temperature (~120°F) | Sit on a glycol fitting |
| Isotemp Slim Square 4.2 gal heat battery | ![Isotemp heat battery](assets/parts/isotemp-slim-square.jpg){.part-photo} | Softens cycling via coil ↔ static chamber; optional AC on **WATER HEATER** | Hold drinking water; replace the Duda; circulate glycol with the element |
| WFT 5 L expansion/header tank | ![WFT expansion tank](assets/parts/wft-tank.jpg){.part-photo} | Expansion + air bleed at the high point (~1.2 bar cap) | Use the Isotemp potable PRV as a glycol setting |
| EasyStart Timer | ![EasyStart Timer on wood panel](../photos/van-stuff/20260919_165557.jpg){.part-photo} | Schedule / target / start-stop ([SRC-003](#src-003)); bottom unit on the wood panel (under LinkPRO / PROwatt) | Replace the master lockout |
| Master switch | ![Sure Marine System Heat Switch W005-378K](assets/parts/sure-marine-master-switch.jpg){.part-photo} | Off cuts 12 V to EasyStart, SC1600B, and cabin fans ([DEC-012](#dec-012)); representative Sure Marine **W005-378K** System Heat / Off (garage unit not photographed yet) | Control Isotemp AC |
| SC1600B thermostat | ![SC1600B thermostat](assets/parts/sc1600b.jpg){.part-photo} | Heat **signal** only (R–W; no fan output — [SRC-033](#src-033)); needs relay ([Q-022](#q-022)) | Fan power; hot water; trusted auto until landing verified |
| Noctua NF-F12 PWM fans | ![Noctua NF-F12 box](assets/parts/noctua-nf-f12.jpg){.part-photo} | Move cabin air; power leads only ([DEC-015](#dec-015)) | Heat call |
| Fan speed controller | — | Low/Med/High **without** hard Off ([DEC-018](#dec-018)) | Off / start the heater |
| Altitude kit 22 1000 33 22 00 | ![Altitude kit](assets/parts/altitude-kit.jpg){.part-photo} | Cuts fuel delivery at altitude ([SRC-002](#src-002); [DEC-006](#dec-006)) | Replace EasyStart; needed only for high camps |
| Paneltronics AC panel | ![Paneltronics panel](assets/parts/paneltronics.jpg){.part-photo} | **WATER HEATER** branch feeds Isotemp 750 W ([DEC-020](#dec-020)) | 12 V heater control |

![Cabin air](diagrams/cabin-air.svg)

![Fresh water system](diagrams/freshwater.svg)

## Fuel, air, exhaust (architecture only)

- **Fuel:** factory pickup → metering pump → heater. Ordinary diesel EN 590 (≤20% FAME OK; pure biodiesel not). Pump 15°–35° preferred; line rises continuously; never on the exhaust ([SRC-009](#src-009)). Prime with the hand bulb immediately before first fire ([HOLD 8](#hold-8-first-fire)), then remove it.
- **Exhaust / combustion air:** two separate outside paths; neither enters the cabin. Kit limits are in [The numbers](#the-numbers-that-matter) and [Builder §2](#hold-2-exhaust).

![Fuel system](diagrams/fuel-system.svg)

![Combustion air and exhaust](diagrams/combustion-air.svg)

## Controls

How the wires actually connect: what is **in series**, what is **in parallel**, and where a **relay** sits. Fuse sizes, mm², and pin colours are from [SRC-009](#src-009) / [SRC-003](#src-003) / [SRC-002](#src-002) / [SRC-033](#src-033). Land every connector from those printed diagrams — these pages are the van map.

![Controls map](diagrams/electrical.svg)

**Locked now:** master Off/On; EasyStart commands the heater; fan dial is speed only; Isotemp on Paneltronics **WATER HEATER**; no vehicle-blower leads; no second glycol pump.

**Still open (does not block diesel heat):** SC1600 auto + fan relay landing ([Q-022](#q-022)); altitude kit ([Q-015](#q-015)); upstream GFCI ([Q-009](#q-009)).

### How to read these circuits

| Word | Means |
|---|---|
| **Series** | One path. Break any link and that whole string goes dead (battery → fuse → master; or EasyStart → S+ → altitude → heater). |
| **Parallel** | Same supply feeds more than one load. One can run while another is idle (branches A/B/C after the master; two Noctuas after the dial). |
| **Relay** | Electromagnet switch. A small **coil** circuit closes heavy **contacts** in another circuit. This build needs **one** cabin-fan relay for SC1600 auto — not the Espar vehicle-blower relay in the kit. |

### 1 · Power feed — heater battery separate from master branches

![Power feed](diagrams/electrical-power.svg)

**Two strings from the house battery (not one):**

| String | Path | Role |
|---|---|---|
| Heater battery | **4 mm²** +/− (≤6 m) → **20 A** main fuse → heater **S1 ch 1–2** | Keeps the ECU alive. Does **not** pass through the master ([DEC-012](#dec-012) only names EasyStart / SC1600 / fans). |
| Master lockout | Battery → **master Off/On** → three **parallel** branches | Off kills calls and fans. ECU may still have battery, but with EasyStart dead there is no S+ → heater stays idle. |

**Parallel after the master** (switched +; grounds common):

| Branch | Fuse | Feeds |
|---|---|---|
| **A** | **5 A** activation (insert last) | EasyStart Timer → wake path |
| **B** | Small (amp OPEN) | SC1600B signal side |
| **C** | Fan fuse (amp OPEN) | Speed dial → both Noctuas |

Master **On** only makes those three available — it does not start heat by itself.

Emergency: EasyStart off → master Off → pull fuse → battery. ≤ two off/on cycles into a fault ([SRC-009](#src-009) p. 32).

### 2 · Wake path — EasyStart to S+ (no relay for timer heat)

![Wake path](diagrams/electrical-wake.svg)

**Today’s heat call (series on Branch A):** 5 A → EasyStart (pin 1 RD +, pin 3 BN −) → control↔heater harness → **S+ yellow into S1 chamber 7** → control box.

- Altitude kit **22 1000 33 22 00** is an **in-line multi-wire adapter** on that harness ([SRC-002](#src-002)) — not a single cut of the yellow wire. Land it from the Hydronic diagram (direct or via **S+ / YE**, pp. 8–10). Without the kit: harness runs straight.
- There is **no relay** between EasyStart and the heater for a normal timer/manual call.
- Optional factory room sensor uses EasyStart pins 9–10. The SC1600B is **not** that sensor — do not splice it there until [Q-022](#q-022) names an approved input.

### 3 · Heater loads — two inputs, parallel outputs

![Heater loads](diagrams/electrical-heater.svg)

| Into ECU | Path | |
|---|---|---|
| Power | S1 **1–2** (2.5 mm² red / brown) from the 20 A feed | Always fused when the main fuse is in |
| Wake | S1 **7** yellow (S+) from EasyStart | Separate input — **not** series with the battery feed |

Once awake, the ECU switches **parallel** outputs: water pump (8–9), metering pump (4–10), burner/glow/sensors inside.

**Insulate — not in circuit:** S1 chamber **3** (vehicle fan), kit blower relay **B / C / 22 / 23**, blower fuse **25 A**, unused EasyStart pins. Seal empty chambers with filler plugs.

### 4 · Fans and the one relay that matters

![Fans and relay](diagrams/electrical-fans.svg)

**Works today (no SC1600 auto):**

- Branch C fuse → speed dial (**series** on shared +) → two Noctua NF-F12 (**parallel** after the dial).
- PWM/tach unused ([DEC-015](#dec-015)). Dial Low/Med/High **without** hard Off ([DEC-018](#dec-018)).
- With master On, fans follow the dial even if the heater is idle — use the dial (or master Off) to stop them.

**Intended after [Q-022](#q-022) — one dry contact, two jobs:**

| Part | Topology | Role |
|---|---|---|
| SC1600B **R–W** | Dry contact (≤1 A) | Closes below setpoint ([SRC-033](#src-033)) |
| Relay **coil** | **Series** with R–W on Branch B | Low-current signal loop to ground |
| Relay **contacts** | **Series** in Branch C positive (before the dial) | Fans dead when contact open, even if dial is High |
| Same closure | **Parallel** from the contact into an approved wake input | Calls heater — pin still OPEN under Q-022 |

Until that landing is documented: start heat from the **EasyStart Timer** only. Do **not** use the Espar vehicle-blower relay from the kit for cabin fans.

### 5 · Isotemp AC — separate series string (not 12 V)

![Isotemp AC](diagrams/electrical-ac.svg)

**Series:** shore/inverter → upstream **GFCI/ELCI** (not on the panel — [Q-009](#q-009)) → Paneltronics **MAIN 30 A** → **WATER HEATER** breaker → Isotemp 750 W element (~6.5 A).

**Parallel after MAIN:** WATER HEATER · BATTERY CHARGER · OUTLETS (sheet **9972313B** / face **72313**).

No shared conductor with the 12 V heater control. Element heats the **static** chamber only. Cable routed and **dead** until [HOLD 9](#hold-9).

### Pin tables (land from these + the manuals)

#### EasyStart Timer 10-pin (−XS10 / −XB10)

Seen from the cable-inlet side ([SRC-003](#src-003) p. 9).

| Pin | Signal | Colour | mm² |
|---|---|---|---|
| 1 | Terminal 30 (+) | red | 0.35 |
| 2 | Terminal 58 (lighting) | grey / black | 0.22 |
| 3 | Terminal 31 (−) | brown | 0.35 |
| 4 | Diagnosis | blue / white | 0.22 |
| 5 | DAT | violet | 0.22 |
| 6 | **S+** wake | yellow | 0.35 |
| 7 | ADR | brown / yellow | 0.22 |
| 8 | ADR | white / red | 0.22 |
| 9 | Temp (−) optional | brown / white | 0.22 |
| 10 | Temp (+) optional | grey | 0.22 |

Heater-side into this connector: **0.5 mm²** on red / brown / blue-white for Hydronic II ([SRC-003](#src-003) p. 17).

#### Heater harness S1

([SRC-009](#src-009) p. 33).

| Ch | Colour | mm² | Function | This van |
|---|---|---|---|---|
| 1 | red | 2.5 | Battery + | Land |
| 2 | brown | 2.5 | Battery − | Land |
| 3 | black / red | 0.5 | Vehicle fan | **Insulate** |
| 4 | green | 1.0 | Metering pump + | Land |
| 5 | blue / white | 0.5 | JE diagnosis | Land |
| 6 | blue | 0.5 | Aux-heat criterion | Insulate unless used |
| 7 | yellow | 0.5 | Switch-on + (S+) | From EasyStart pin 6 |
| 8 | violet | 0.5 | Water pump + | Land |
| 9 | brown | 1.0 | Water pump − | Land |
| 10 | brown / green | 1.0 | Metering pump − | Land |

### Altitude kit (series on the wake path)

Kit **22 1000 33 22 00**: 12-pin into cover → sensor until lever locks → 4-pin housings → kit fuse ([SRC-002](#src-002)). Mount indoors, connector down, not near vents. Prefer the Hydronic diagram that matches this harness (direct or via **S+ / YE**, pp. 8–10). Defer only if high camps are explicitly postponed ([Q-015](#q-015)).

## Fluids

- Circulating loop and Isotemp chamber: water + propylene glycol, **at most 50%** glycol ([SRC-009](#src-009)), **one brand only** (both on-hand jugs are concentrates — [SRC-029](#src-029) / [SRC-030](#src-030)). Prefer water-first leak check before committing glycol. Never run the pump dry.
- Fresh water: tank → pump → Duda (in bottom, hot out top) → AM100-1LF thermostatic mixing valve → taps. Isotemp chamber is not on this path.

## Architecture check

- [ ] Locked loop order + WFT on return high point
- [ ] Cabin air and drinking water stay separated from glycol (heat across Duda only)
- [ ] Isotemp chamber = static glycol; element = Paneltronics chamber heat only
- [ ] Tap hot water needs the diesel pump through the Duda plate
- [ ] Forbidden list is clear: engine, summer bypass, second pump, 12 V to element

→ [Use](#users-guide).
