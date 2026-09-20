# System Design

**Stage 1 — Architecture.** Finish before [Use](#users-guide) or [Make it](#builders-guide). Point at each part: what it does, what it must not do, which way glycol flows.

Jump: [Safety](#safety) · [Use](#users-guide) · [Status](#current-status-report) · [Four buckets](#four-buckets-overview) · [Make it](#builders-guide) · [Numbers](#the-numbers-that-matter)

## Purpose

One Hydronic D5S diesel heater under the van does two jobs:

1. Warm cabin air (Sure Marine cabin heater).
2. Heat tap water (Duda B3-12DW-20 plate heat exchanger → AM100-1LF thermostatic mixing valve).

Both jobs share one closed propylene glycol loop. That loop never mixes with drinking water, never connects to the engine ([DEC-009](#dec-009)), and has no second pump ([DEC-013](#dec-013)).

The Isotemp Slim Square 4.2 gal heat battery stores leftover loop heat in a **static** chamber. Circulating glycol always runs through its **coil** ([DEC-007](#dec-007) / [DEC-010](#dec-010)). The 750 W / 115 VAC element is a Paneltronics AC load that heats the **static chamber only** ([DEC-004](#dec-004)) — the element does not pump the loop and does not put hot water at the Duda plate by itself. Tap heat still needs the Hydronic D5S diesel heater’s pump.

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

Three separate stories. Do not mix them.

1. **12 V diesel heat** — battery → heater + EasyStart Timer  
2. **Cabin fans** — how hard air blows across the Sure Marine core  
3. **120 V Isotemp element** — Paneltronics only; dead until [HOLD 9](#hold-9)

Land every pin from the printed manuals ([SRC-009](#src-009) / [SRC-003](#src-003)). Wire sizes here are **AWG** (manuals print mm² — same wires). Full pin tables: [Electrical and Controls](#electrical-and-controls).

![Day-one electrical](diagrams/electrical.svg)

**What works for first fire:** turn the master On, start heat on the EasyStart Timer, set the fan dial. That is enough.

**What can wait:** altitude kit ([Q-015](#q-015)), SC1600 auto ([Q-022](#q-022)), Isotemp AC / GFCI ([Q-009](#q-009)).

### The heater’s own power (always fused)

![Power](diagrams/electrical-power.svg)

Run a heavy pair from the house battery to the heater: **12 AWG** if the round trip (plus + minus) is **20 ft / 6 m** or less → **20 A** fuse on the positive → heater connector pins **1** (red +) and **2** (brown −).

This feed does **not** go through the master switch. The heater brain stays powered so it can finish an after-run and remember faults. Master Off still stops heat, because it kills the EasyStart Timer — and without the timer there is no wake signal.

### The master switch (cabin lockout)

One Off/On next to the EasyStart. It switches **positive only** to three small circuits:

| When master is On | What gets power |
|---|---|
| Branch A · **5 A** fuse (put this fuse in **last**) | EasyStart Timer |
| Branch B · small fuse (size still OPEN) | Later: thermostat → relay path |
| Branch C · fan fuse (size still OPEN) | Fan speed dial → both cabin fans |

Master On does **not** start the heater. It only unlocks those circuits so the EasyStart (and later the thermostat) *can* call for heat.

Parked or leaving the van: master **Off**.

Emergency stop: EasyStart off → master Off → pull the 20 A if you must → battery last. Do not thrash off/on more than twice into a fault ([SRC-009](#src-009)).

### How the EasyStart starts the heater

![Wake](diagrams/electrical-wake.svg)

Think of two jobs on the timer:

1. **Feed the timer.** Branch A lights up EasyStart pin **1** (red +) and pin **3** (brown −).
2. **Wake the heater.** When you press start (or a schedule hits), the timer puts + on pin **6** (yellow). That yellow wire runs through the control harness into the heater at pin **7**. Eberspächer calls that signal **S+** — “switch on.”

No extra relay in that path for a normal timer start. The heater decides whether to pump, glow, and fire once it sees S+.

**Altitude kit** (still in the garage): needed for overnight camps above roughly 5,000 ft. It plugs into the control harness as a whole adapter — you do not snip only the yellow wire. Skip it for a low-elevation first fire ([Q-015](#q-015)).

### What the heater does after it wakes

![Heater](diagrams/electrical-heater.svg)

With battery on pins 1–2 and the yellow wake on pin 7, the heater runs:

- its water pump (pins **8** and **9**) — this moves glycol around the van  
- its fuel metering pump (pins **4** and **10**)  
- glow plug / flame sensing inside  

You do **not** add a second glycol pump.

Ignore the kit’s vehicle-blower wiring (pin **3**, blower relay leads, 25 A blower fuse). That is for a car heater core, not this cabin heater. Tape it off and plug unused chambers.

### Cabin fans

![Fans](diagrams/electrical-fans.svg)

Branch C feeds one Low/Med/High dial (SKU not chosen yet — must have **no hard Off**, and **not** a Noctua NA-FC1). After the dial, both Noctua fans share that power on their red/black leads only. PWM and tach wires stay unused.

The dial only sets **how hard** the fans blow. It never starts the diesel heater.

Until the thermostat auto path is finished ([Q-022](#q-022)): with master On, the fans run whenever the dial is up — even if the heater is idle. Turn the dial down or flip the master Off to stop them.

### Thermostat auto — not ready yet

The SC1600B uses **AA batteries** of its own. Its **R** and **W** terminals are a small switch that closes when the cabin is cold. That switch cannot power the fans by itself — Sure Marine expects a **relay** for fan current ([SRC-019](#src-019) / [SRC-033](#src-033)).

**Do not** land that switch on EasyStart pins **9–10**. Those pins are for Eberspächer’s optional temperature *sensor*, not a dry-contact thermostat ([SRC-003](#src-003)).

Until [Q-022](#q-022) names an approved way to wake the heater from that switch: start heat only from the EasyStart Timer.

### Isotemp element — different world (AC)

![AC](diagrams/electrical-ac.svg)

This is **not** on the 12 V panel.

Shore power or inverter → GFCI/ELCI upstream (still OPEN — [Q-009](#q-009)) → Paneltronics main breaker → the breaker labeled **WATER HEATER** → the Isotemp’s 750 W element.

That element only warms the tank’s **static** chamber. Circulating glycol still goes through the tank’s **coil** whenever the diesel pump runs. AC alone does not give you a hot shower.

Route the cable at HOLD 4. Leave the breaker **off** until [HOLD 9](#hold-9).

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
