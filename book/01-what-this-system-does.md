# System Design

**Stage 1 — Architecture.** Read the glycol loop first, then the two jobs off that loop, then the part names, then how you call for heat. Next, skim [The Numbers](#the-numbers-that-matter) and continue to the [User’s Guide](#users-guide).

Jump: [Safety](#safety) · [The glycol loop](#locked-architecture) · [The Parts](#the-parts) · [Controls](#controls) · [The Numbers](#the-numbers-that-matter) · [User’s Guide](#users-guide) · [Current Status](#current-status-report) · [Builder’s Guide](#builders-guide)

## Purpose

One closed propylene glycol loop heats cabin air and tap water. The Hydronic D5S sits under the van. The Sure Marine cabin heater, Duda, Isotemp, and Water Flow Tank sit in the cabin. Glycol never mixes with drinking water, never connects to the engine ([DEC-009](#dec-009)), and has no second pump ([DEC-013](#dec-013)).

Leftover heat can sit in the Isotemp static chamber. A planned 750 W / 115 VAC element on Paneltronics **WATER HEATER** can warm that chamber. The element does not pump the loop, and it does not put hot water at the taps by itself.

**Stop and reject** any proposal that would splice into the engine, tee glycol into drinking water, bypass cabin heat, add a second glycol pump, or land the 750 W element on the 12 V panel.

Day-to-day use is in the [User’s Guide](#users-guide). Keep-or-sell numbers are in the [Isotemp value study](#isotemp-value-study).

## The glycol loop {#locked-architecture}

::: {.media-pair}
![Glycol loop](diagrams/glycol-loop.svg)

![Glycol loop layout](assets/parts/glycol-loop.webp)
:::

Glycol circulates in this order only ([DEC-010](#dec-010)):

1. Heater’s own pump → Hydronic D5S  
2. Sure Marine cabin heater — cabin heat first  
3. Duda (glycol side) — hottest fluid for sinks (~**80%** of hot-water use is sinks)  
4. Isotemp coil — stores leftovers  
5. Return to the pump  

The Water Flow Tank tees into the **return** at the highest circulating point. It is not in series, and it is not teed off the Isotemp coil. Keep the Water Flow Tank highest and everything else below it. Leave an unrestricted path from that tee back to the pump. Put fill and drain at the low point. Mount the cabin heater level, bottom-in / top-out, with a bleeder on the outlet.

**Where those parts sit.** The Sure Marine cabin heater is under the fridge (SN 16401). The Duda is under the sink. The Isotemp sits driver-side under the bench (low). The Water Flow Tank sits in the sofa-bed backrest (high). Day panels map outboard to seat back and inboard to seat butt. The sofa/bed is hybrid: wood side boxes, an aluminum Isotemp cradle, and light plywood panels ([DEC-021](#dec-021)).

## The two jobs

### Cabin air

Living-space air crosses the Sure Marine cabin heater. Two Noctua fans and one dial move that air. Combustion air and exhaust stay outside.

::: {.media-pair}
![Cabin air](diagrams/cabin-air.svg)

![Sure Marine cabin heater](assets/parts/sure-marine-cabin.jpg)
:::

### Tap water

Freshwater runs from the tank through the pump, into the Duda (cold in bottom, hot out top), through the AM100-1LF (~120°F), and out to the taps ([DEC-003](#dec-003) / [DEC-008](#dec-008)). Heat crosses the double wall only. The Isotemp chamber is not on this path. The factory Isotemp mixer stays capped forever.

::: {.media-pair}
![Fresh water system](diagrams/freshwater.svg)

![Freshwater layout](assets/parts/freshwater.png)
:::

## The Parts {#the-parts}

Meet each part once here. After this table, use only these official names or the short forms listed under each name. Do not invent aliases (buffer, Bosch, Espar, “the tank,” “the core,” “the plate”).

| Part (official name) | Photo | Does | Does not |
|---|---|---|---|
| **Hydronic D5S diesel heater**<br>*Short: Hydronic D5S; “the heater” only when unambiguous* | ![Hydronic D5S heater](assets/parts/hydronic-d5s.jpg){.part-photo} | Burns diesel; own pump moves the loop; stages on coolant temperature ([The Numbers](#the-numbers-that-matter); [SRC-009](#src-009)) | Connect to the engine |
| **Sure Marine cabin heater**<br>*Short: cabin heater* | ![Sure Marine cabin heater](assets/parts/sure-marine-cabin.jpg){.part-photo} | Glycol → cabin air; two fans + one Low/Med/High dial ([DEC-015](#dec-015)); target both Noctua NF-F12 | Pull combustion air into the cabin |
| **Duda B3-12DW-20 plate heat exchanger**<br>*Short: Duda; Duda plate* | ![Duda plate heat exchanger](assets/parts/duda-plate.jpg){.part-photo} | Glycol → freshwater across a double wall | Mix the two fluids |
| **AM100-1LF thermostatic mixing valve**<br>*Short: AM100-1LF; the mixer* | ![AM100-1LF mixing valve on Duda](assets/parts/am100-1lf.jpg){.part-photo} | Limits shower/sink temperature (~120°F) | Connect to a glycol fitting |
| **Isotemp Slim Square 4.2 gal heat battery**<br>*Short: Isotemp; Isotemp coil; Isotemp chamber* | ![Isotemp heat battery](assets/parts/isotemp-slim-square.jpg){.part-photo} | Softens cycling via coil ↔ static chamber; planned AC on **WATER HEATER**; factory mixer capped forever | Hold drinking water; replace the Duda; circulate glycol with the element; mix taps |
| **Water Flow Tank (WFT) 5 L expansion/header tank**<br>*Short: Water Flow Tank; WFT (brand name, not a cryptic code)* | ![WFT expansion tank](assets/parts/wft-tank.jpg){.part-photo} | Expansion + air bleed at the high point (~1.2 bar cap) | Use the Isotemp potable PRV as a glycol setting |
| **EasyStart Timer**<br>*Short: EasyStart* | ![EasyStart Timer on wood panel](../photos/van-stuff/20260919_165557.jpg){.part-photo} | Schedule / target / start-stop ([SRC-003](#src-003)); bottom unit on the wood panel (under LinkPRO / PROwatt) | Replace the master lockout |
| **Master switch**<br>*Representative Sure Marine W005-378K* | ![Sure Marine System Heat Switch W005-378K](assets/parts/sure-marine-master-switch.jpg){.part-photo} | Off cuts 12 V to EasyStart, SC1600B, and cabin fans ([DEC-012](#dec-012)); garage unit not photographed yet | Control Isotemp AC |
| **SC1600B thermostat**<br>*Short: SC1600B* | ![SC1600B thermostat](assets/parts/sc1600b.jpg){.part-photo} | Heat **signal** only (R–W; no fan output — [SRC-033](#src-033)); needs relay ([Q-022](#q-022)) | Fan power; hot water; trusted auto until landing verified |
| **Noctua NF-F12 PWM fans**<br>*Short: Noctua fans; cabin fans* | ![Noctua NF-F12 box](assets/parts/noctua-nf-f12.jpg){.part-photo} | Move cabin air; power leads only ([DEC-015](#dec-015)) | Heat call |
| **Fan speed controller**<br>*Short: fan dial; book pick Sure Marine W002-912* | ![Sure Marine W002-912 fan heater switch](assets/parts/sure-marine-fan-dial.jpg){.part-photo} | Low/Med/High **without** hard Off ([DEC-018](#dec-018)) | Off / start the heater |
| **Altitude kit 22 1000 33 22 00**<br>*Short: altitude kit* | ![Altitude kit](assets/parts/altitude-kit.jpg){.part-photo} | Cuts fuel delivery at altitude ([SRC-002](#src-002); [DEC-006](#dec-006)) | Replace EasyStart; needed only for high camps |
| **Paneltronics AC panel**<br>*Branch label always **WATER HEATER*** | ![Paneltronics panel](assets/parts/paneltronics.jpg){.part-photo} | **WATER HEATER** branch feeds Isotemp 750 W ([DEC-020](#dec-020)) | 12 V heater control |

## Fuel, air, exhaust, and fluids

**Fuel.** Fuel runs from the factory aux pickup through the metering pump to the Hydronic D5S. Prefer a metering-pump angle of 15°–35°. Keep the fuel line rising continuously, and never rest it on the exhaust ([SRC-009](#src-009)). Prime with the hand bulb at [HOLD 8](#hold-8-first-fire), then remove it. Confirm the fuel pump under the van before first fire ([Current Status](#current-status-report)).

**Exhaust and combustion air.** These are two separate paths to outside air. Neither path enters the cabin. Kit limits are in [The Numbers](#the-numbers-that-matter). Confirm the install at [HOLD 2](#hold-2-exhaust).

![Fuel system](diagrams/fuel-system.svg)

![Combustion air and exhaust](diagrams/combustion-air.svg)

**Glycol.** Fill the circulating loop and the Isotemp chamber with water plus propylene glycol at **most 50%** glycol, **one brand only** ([SRC-009](#src-009); [SRC-029](#src-029) / [SRC-030](#src-030)). Prefer a water-first leak check before you commit glycol. Never run the pump dry. The freshwater path is under [Tap water](#tap-water).

## Controls {#controls}

Hydronic wiring is two separate worlds. They never share a fuse panel.

| World | Power | What it does | Parked lockout |
|---|---|---|---|
| **12 V** | House battery | Diesel heat call, heater pump, cabin fans | **Master Off** |
| **120 V** | Shore or PROwatt SW → Paneltronics | Isotemp chamber element only | **WATER HEATER** breaker Off |

Master Off stops diesel heat and fans. Master Off does **not** cut Isotemp AC. Isotemp AC never lands on the 12 V panel.

![Day-one electrical](diagrams/electrical.svg)

**Day-one diesel heat** (enough for first fire): turn the master **On**, start heat on the EasyStart Timer, and set the fan dial. Pin tables and fuse sizes live in [Electrical and Controls](#electrical-and-controls). Still open: thermostat auto ([Q-022](#q-022)), Isotemp GFCI ([Q-009](#q-009)), and the altitude kit at HOLD 4 ([Q-015](#q-015)).

### 12 V — three layers

Only the middle layer goes through the master switch.

![Power](diagrams/electrical-power.svg)

**Layer 1 — heater always powered.** Run a heavy pair from the house battery through a **20 A** fuse on the positive. Use **12 AWG** if the round trip is **20 ft / 6 m** or less. Land heater pins **1** (red +) and **2** (brown −). This feed does **not** go through the master. The heater brain stays powered so it can finish an after-run and remember faults.

**Layer 2 — master unlocks the cabin controls.** Mount one Off/On switch next to the EasyStart. The master switches **positive only** to three small branches. Land them on the Blue Sea ST Blade, or on a **second breakout** if that block is full:

| Branch | Fuse | Feeds |
|---|---|---|
| A | **5 A** (insert **last**) | EasyStart Timer |
| B | size still OPEN | Later: thermostat → relay |
| C | size still OPEN | Fan dial → both Noctua fans |

Master On does **not** start the heater. Master On only unlocks those branches so EasyStart (and later the thermostat) can call for heat. When you park or leave, turn the master **Off**.

For an emergency stop, turn EasyStart off, then master Off, then pull the 20 A if you must, and disconnect the battery last. Do not cycle off and on more than twice into a fault ([SRC-009](#src-009)).

**Layer 3 — EasyStart wakes the heater.**

![Wake](diagrams/electrical-wake.svg)

Branch A powers EasyStart pin **1** (+) and pin **3** (−). On start (or a schedule), EasyStart puts positive on pin **6** (yellow). That yellow wire becomes heater pin **7** (S+ — “switch on”). Once the heater sees S+, it decides whether to pump, glow, and fire. With wake present, the heater runs its water pump (pins **8–9**), the fuel metering pump (pins **4** and **10**), and glow / flame sensing. Tape off kit vehicle-blower wiring (pin **3**, blower relay, and the 25 A blower fuse). That path is for a car heater matrix, not the Sure Marine cabin heater.

![Heater](diagrams/electrical-heater.svg)

**Altitude kit.** The kit plugs into the control harness as a whole adapter. Do not snip only the yellow wire. Land it at HOLD 4 while the EasyStart harness is open ([DEC-006](#dec-006) / [Q-015](#q-015)). It is required for overnight camps above roughly 5,000 ft.

**Cabin fans** ride Branch C only. Book pick: Sure Marine [**W002-912**](https://www.suremarineservice.com/Heat/System-Switches/W002-912.html). Do **not** use a Noctua NA-FC1. Both Noctua fans share red and black after the dial; leave PWM and tach unused. The dial sets **speed only**. It never starts the diesel. Until [Q-022](#q-022) closes, the fans run whenever the master is On and the dial is up.

![Fans](diagrams/electrical-fans.svg)

**Thermostat auto is not ready.** The SC1600B **R** / **W** terminals are a dry contact. They need a **relay** for fan current ([SRC-019](#src-019)). Do **not** land them on EasyStart pins **9–10** (those pins are for Eberspächer’s optional temperature sensor). Until [Q-022](#q-022) names an approved wake path, start heat only from the EasyStart Timer. Relay notes live in [Electrical and Controls](#electrical-and-controls).

### 120 V — Isotemp chamber only

![AC](diagrams/electrical-ac.svg)

The 750 W element is a Paneltronics load. Power runs from **SmartPlug** shore or the **PROwatt SW 2000** through one **Blue Sea 9009** rotary (**SHORE** / **INVERTER**) into Paneltronics MAIN, then the **WATER HEATER** breaker, then the element. Label that 9009 face—it is poorly labelled today ([`photos/ac-electrical.jpg`](../photos/ac-electrical.jpg)). Upstream hardwire GFCI/ELCI is still OPEN ([Q-009](#q-009)). Inverter face GFCI outlets protect only loads plugged into them.

The element warms the Isotemp **static** chamber only. Circulating glycol still needs the diesel pump through the **coil**. The element alone does not make a hot shower. Route the element cable at HOLD 4. Leave **WATER HEATER** off until [HOLD 9](#hold-9).

**Second 9009 (not heat).** A separate rotary selects SmartPlug shore versus **DUOSIDA** J1772 into the **Mean Well RPB-1600-12** charger. That path charges the house battery. It does not feed **WATER HEATER**.

This book does not rebuild the whole van electrical system. House inventory and photo extracts live in [Working design understanding](#working-design-understanding) and [Electrical and Controls](#electrical-and-controls). Wire sizes in this chapter are **AWG**; the manuals print mm² for the same conductors ([SRC-009](#src-009) / [SRC-003](#src-003)).

→ [The Numbers](#the-numbers-that-matter), then the [User’s Guide](#users-guide).
