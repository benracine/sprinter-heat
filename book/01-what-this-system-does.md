# System Design

**Stage 1 — Architecture.** Finish this chapter before the [User’s Guide](#users-guide) or the [Builder’s Guide](#builders-guide). For each part, know what the part does, what the part must not do, and which way glycol flows. Next: skim [The Numbers](#the-numbers-that-matter), then the User’s Guide.

Jump: [Safety](#safety) · [The Numbers](#the-numbers-that-matter) · [User’s Guide](#users-guide) · [Isotemp value study](#isotemp-value-study) · [Current Status](#current-status-report) · [Builder’s Guide](#builders-guide)

## Purpose

One diesel hydronic loop under the van does two jobs: warm cabin air, and heat tap water. Both jobs share one closed propylene glycol loop. That loop never mixes with drinking water, never connects to the engine ([DEC-009](#dec-009)), and has no second pump ([DEC-013](#dec-013)).

Leftover loop heat can sit in a static chamber for later. The planned 750 W / 115 VAC element warms that chamber from the Paneltronics AC panel—it does not pump the loop, and it alone does not put hot water at the taps.

**How heat moves on a working day.** EasyStart calls the Hydronic D5S. The heater’s own pump moves glycol through the Sure Marine cabin heater (cabin air), then the Duda (tap water across the double wall), then the Isotemp coil (leftover heat into or out of the static chamber), then back. When the loop is warm enough, the burner may pause while the pump keeps circulating—that is when the chamber can smooth short cycles. Living with that pattern is in the [User’s Guide](#users-guide); predicted starts and keep-or-sell numbers are in the [Isotemp value study](#isotemp-value-study).

**Stop and reject** any proposal that would splice into the engine, tee glycol into drinking water, bypass cabin heat, add a second glycol pump, or land the 750 W element on the 12 V panel.

## The Parts {#the-parts}

Meet each part once here. After this table, use only these official names—or the short forms listed under each name. Do not invent aliases (buffer, Bosch, Espar, “the tank,” “the core,” “the plate”).

| Part (official name) | Photo | Does | Does not |
|---|---|---|---|
| **Hydronic D5S diesel heater**<br>*Short: Hydronic D5S; “the heater” only when unambiguous* | ![Hydronic D5S heater](assets/parts/hydronic-d5s.jpg){.part-photo} | Burns diesel; own pump moves the loop; stages on coolant temperature ([The Numbers](#the-numbers-that-matter); [SRC-009](#src-009)) | Connect to the engine |
| **Sure Marine cabin heater**<br>*Short: cabin heater* | ![Sure Marine cabin heater](assets/parts/sure-marine-cabin.jpg){.part-photo} | Glycol → cabin air; two fans + one Low/Med/High dial ([DEC-015](#dec-015)); target both Noctua NF-F12 | Pull combustion air into the cabin |
| **Duda B3-12DW-20 plate heat exchanger**<br>*Short: Duda; Duda plate* | ![Duda plate heat exchanger](assets/parts/duda-plate.jpg){.part-photo} | Glycol → freshwater across a double wall | Mix the two fluids |
| **AM100-1LF thermostatic mixing valve**<br>*Short: AM100-1LF; the mixer* | ![AM100-1LF mixing valve on Duda](assets/parts/am100-1lf.jpg){.part-photo} | Limits shower/sink temperature (~120°F) | Connect to a glycol fitting |
| **Isotemp Slim Square 4.2 gal heat battery**<br>*Short: Isotemp; Isotemp coil; Isotemp chamber* | ![Isotemp heat battery](assets/parts/isotemp-slim-square.jpg){.part-photo} | Softens cycling via coil ↔ static chamber; planned AC on **WATER HEATER** | Hold drinking water; replace the Duda; circulate glycol with the element |
| **WFT 5 L expansion/header tank**<br>*Short: WFT* | ![WFT expansion tank](assets/parts/wft-tank.jpg){.part-photo} | Expansion + air bleed at the high point (~1.2 bar cap) | Use the Isotemp potable PRV as a glycol setting |
| **EasyStart Timer**<br>*Short: EasyStart* | ![EasyStart Timer on wood panel](../photos/van-stuff/20260919_165557.jpg){.part-photo} | Schedule / target / start-stop ([SRC-003](#src-003)); bottom unit on the wood panel (under LinkPRO / PROwatt) | Replace the master lockout |
| **Master switch**<br>*Representative Sure Marine W005-378K* | ![Sure Marine System Heat Switch W005-378K](assets/parts/sure-marine-master-switch.jpg){.part-photo} | Off cuts 12 V to EasyStart, SC1600B, and cabin fans ([DEC-012](#dec-012)); garage unit not photographed yet | Control Isotemp AC |
| **SC1600B thermostat**<br>*Short: SC1600B* | ![SC1600B thermostat](assets/parts/sc1600b.jpg){.part-photo} | Heat **signal** only (R–W; no fan output — [SRC-033](#src-033)); needs relay ([Q-022](#q-022)) | Fan power; hot water; trusted auto until landing verified |
| **Noctua NF-F12 PWM fans**<br>*Short: Noctua fans; cabin fans* | ![Noctua NF-F12 box](assets/parts/noctua-nf-f12.jpg){.part-photo} | Move cabin air; power leads only ([DEC-015](#dec-015)) | Heat call |
| **Fan speed controller**<br>*Short: fan dial* | — | Low/Med/High **without** hard Off ([DEC-018](#dec-018)) | Off / start the heater |
| **Altitude kit 22 1000 33 22 00**<br>*Short: altitude kit* | ![Altitude kit](assets/parts/altitude-kit.jpg){.part-photo} | Cuts fuel delivery at altitude ([SRC-002](#src-002); [DEC-006](#dec-006)) | Replace EasyStart; needed only for high camps |
| **Paneltronics AC panel**<br>*Branch label always **WATER HEATER*** | ![Paneltronics panel](assets/parts/paneltronics.jpg){.part-photo} | **WATER HEATER** branch feeds Isotemp 750 W ([DEC-020](#dec-020)) | 12 V heater control |

![Cabin air](diagrams/cabin-air.svg)

![Fresh water system](diagrams/freshwater.svg)

## Locked architecture

| | Locked rule |
|---|---|
| Loop order | Return → heater pump → Hydronic D5S → Sure Marine cabin heater → Duda (glycol) → Isotemp coil → return ([DEC-010](#dec-010)) |
| Header | WFT tees into the **return** at the highest circulating point — not in series, not off the Isotemp coil |
| Why that order | Cabin heat first (daily priority); Duda next (hottest fluid for showers); Isotemp last (stores leftovers — see [Isotemp value study](#isotemp-value-study)) |
| Drinking water | Duda only; AM100-1LF on hot out; set ~120°F; taps from mixed outlet only ([DEC-003](#dec-003) / [DEC-008](#dec-008)) |
| Isotemp | Coil circulating; chamber static same mix; factory mixer capped; 750 W on Paneltronics **WATER HEATER** only |
| Cabin air | Living-space air across the Sure Marine cabin heater (on van, SN 16401); combustion stays outside |
| Heights | WFT highest; everything else below it; cabin heater level, bottom-in/top-out, outlet bleeder; fill/drain at lowest point; unrestricted path from WFT tee back to the pump |

![Glycol loop](diagrams/glycol-loop.svg)

## Fuel, air, exhaust (architecture only)

**Fuel.** Fuel runs from the factory pickup through the metering pump to the heater. Use ordinary diesel EN 590 (up to 20% FAME is acceptable; pure biodiesel is not). Prefer a metering-pump angle of 15°–35°. Keep the fuel line rising continuously, and never rest it on the exhaust ([SRC-009](#src-009)). Prime with the hand bulb immediately before first fire ([HOLD 8](#hold-8-first-fire)), then remove it.

**Exhaust and combustion air.** These are two separate paths to outside air; neither enters the cabin. Kit limits are in [The Numbers](#the-numbers-that-matter) and [Builder §2](#hold-2-exhaust).

![Fuel system](diagrams/fuel-system.svg)

![Combustion air and exhaust](diagrams/combustion-air.svg)

## Controls

The van has three electrical jobs. Keep the jobs separate.

1. **12 V diesel heat** — the house battery feeds the heater and the EasyStart Timer.  
2. **Cabin fans** — a dial sets how hard air blows across the Sure Marine cabin heater.  
3. **120 V Isotemp element** — that load lives on Paneltronics only, and stays dead until [HOLD 9](#hold-9).

Land every pin from the printed manuals ([SRC-009](#src-009) / [SRC-003](#src-003)). Wire sizes in this chapter are **AWG**; the manuals print mm² for the same conductors. Full pin tables live in [Electrical and Controls](#electrical-and-controls).

![Day-one electrical](diagrams/electrical.svg)

**Enough for diesel first fire.** Turn the master On, start heat on the EasyStart Timer, and set the fan dial. Living with the Isotemp buffer and AC dish rinses is in the [User’s Guide](#users-guide). The numbers behind keep-or-sell are in the [Isotemp value study](#isotemp-value-study).

**Still being completed.** SC1600 auto ([Q-022](#q-022)) and the Isotemp AC circuit with upstream GFCI ([Q-009](#q-009)). Land the altitude kit at HOLD 4 while the harness is open ([Q-015](#q-015)).

### The heater’s own power (always fused)

![Power](diagrams/electrical-power.svg)

Run a heavy pair from the house battery to the heater: **12 AWG** if the round trip (plus and minus) is **20 ft / 6 m** or less, through a **20 A** fuse on the positive, into heater connector pins **1** (red +) and **2** (brown −).

This feed does **not** go through the master switch. The heater brain stays powered so the heater can finish an after-run and remember faults. Master Off still stops heat, because Master Off kills the EasyStart Timer—and without the timer there is no wake signal.

### The master switch (cabin lockout)

Mount one Off/On switch next to the EasyStart. The master switch switches **positive only** to three small circuits:

| When master is On | What gets power |
|---|---|
| Branch A · **5 A** fuse (put this fuse in **last**) | EasyStart Timer |
| Branch B · small fuse (size still OPEN) | Later: thermostat → relay path |
| Branch C · fan fuse (size still OPEN) | Fan speed dial → both cabin fans |

Master On does **not** start the heater. Master On only unlocks those circuits so the EasyStart (and later the thermostat) can call for heat.

When the van is parked or you are leaving the van, turn the master **Off**.

For an emergency stop, turn EasyStart off, then master Off, then pull the 20 A if you must, and disconnect the battery last. Do not cycle off and on more than twice into a fault ([SRC-009](#src-009)).

### How the EasyStart starts the heater

![Wake](diagrams/electrical-wake.svg)

Think of two jobs on the timer:

1. **Feed the timer.** Branch A powers EasyStart pin **1** (red +) and pin **3** (brown −).
2. **Wake the heater.** When you press start (or a schedule hits), the timer puts positive on pin **6** (yellow). That yellow wire runs through the control harness into the heater at pin **7**. Eberspächer calls that signal **S+**—“switch on.”

No extra relay sits in that path for a normal timer start. Once the heater sees S+, the heater decides whether to pump, glow, and fire.

**Altitude kit** (still in the garage). Required for overnight camps above roughly 5,000 ft. The kit plugs into the control harness as a whole adapter; do not snip only the yellow wire. Land the kit at HOLD 4 while the EasyStart harness is open ([Q-015](#q-015) / [DEC-006](#dec-006)).

### What the heater does after the heater wakes

![Heater](diagrams/electrical-heater.svg)

With battery on pins 1–2 and the yellow wake on pin 7, the heater runs:

- the heater water pump (pins **8** and **9**), which moves glycol around the van  
- the fuel metering pump (pins **4** and **10**)  
- glow plug and flame sensing inside  

Do **not** add a second glycol pump.

Ignore the kit’s vehicle-blower wiring (pin **3**, blower relay leads, and the 25 A blower fuse). That wiring is for a car heater core, not this cabin heater. Tape those leads off and plug unused chambers.

### Cabin fans

![Fans](diagrams/electrical-fans.svg)

Branch C feeds one Low/Med/High dial. The SKU is not chosen yet; the dial must have **no hard Off**, and the dial must **not** be a Noctua NA-FC1. After the dial, both Noctua fans share that power on their red and black leads only. Leave the PWM and tach wires unused.

The dial only sets **how hard** the fans blow. The dial never starts the diesel heater.

Until the thermostat auto path is finished ([Q-022](#q-022)), with master On the fans run whenever the dial is up—even if the heater is idle. Turn the dial down or flip the master Off to stop them.

### Thermostat auto — not ready yet

The SC1600B uses **AA batteries** of its own. The **R** and **W** terminals are a small switch that closes when the cabin is cold. That switch cannot power the fans by itself; Sure Marine expects a **relay** for fan current ([SRC-019](#src-019) / [SRC-033](#src-033)).

**Do not** land that switch on EasyStart pins **9–10**. Those pins are for Eberspächer’s optional temperature *sensor*, not a dry-contact thermostat ([SRC-003](#src-003)).

Until [Q-022](#q-022) names an approved way to wake the heater from that switch, start heat only from the EasyStart Timer.

### Isotemp element on AC

![AC](diagrams/electrical-ac.svg)

The Isotemp element circuit is **not** on the 12 V panel.

Power runs from shore or inverter through an upstream **GFCI/ELCI** (still OPEN — [Q-009](#q-009)), then the Paneltronics main breaker, then the breaker labeled **WATER HEATER**, then the Isotemp 750 W element.

The element only warms the Isotemp **static** chamber. Circulating glycol still goes through the Isotemp **coil** whenever the diesel pump runs. Running the element alone will not give you a hot shower.

Route the element cable at HOLD 4. Leave the **WATER HEATER** breaker **off** until [HOLD 9](#hold-9).

## Fluids

**Circulating loop and Isotemp chamber.** Fill with water plus propylene glycol at **most 50%** glycol ([SRC-009](#src-009)), **one brand only** (both on-hand jugs are concentrates — [SRC-029](#src-029) / [SRC-030](#src-030)). Prefer a water-first leak check before you commit glycol. Never run the pump dry.

**Fresh water.** Water runs from the tank through the pump, into the Duda (cold in bottom, hot out top), through the AM100-1LF thermostatic mixing valve, and out to the taps. The Isotemp chamber is not on this path.

## Architecture check

- [ ] Locked loop order, with the WFT on the return high point  
- [ ] Cabin air and drinking water stay separated from glycol (heat crosses the Duda only)  
- [ ] Isotemp chamber holds static glycol; the element is Paneltronics chamber heat only  
- [ ] Tap hot water needs the diesel pump through the Duda plate  
- [ ] Forbidden list is clear: no engine splice, no summer bypass, no second pump, no 12 V to the element  

→ [The Numbers](#the-numbers-that-matter), then the [User’s Guide](#users-guide).
