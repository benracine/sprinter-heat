# System Design

**Stage 1 — Architecture.** Finish this chapter before the [User’s Guide](#users-guide) or the [Builder’s Guide](#builders-guide). Read the glycol loop first, then the two jobs off that loop, then the part names. Next: skim [The Numbers](#the-numbers-that-matter), then the User’s Guide.

Jump: [Safety](#safety) · [Locked architecture](#locked-architecture) · [The Parts](#the-parts) · [Controls](#controls) · [The Numbers](#the-numbers-that-matter) · [User’s Guide](#users-guide) · [Current Status](#current-status-report) · [Builder’s Guide](#builders-guide)

## Purpose

One diesel hydronic loop under the van does two jobs: warm cabin air, and heat tap water. Both jobs share one closed propylene glycol loop. That loop never mixes with drinking water, never connects to the engine ([DEC-009](#dec-009)), and has no second pump ([DEC-013](#dec-013)).

Leftover loop heat can sit in a static chamber for later. The planned 750 W / 115 VAC element warms that chamber from the Paneltronics AC panel—it does not pump the loop, and it alone does not put hot water at the taps.

**How heat moves on a working day.** EasyStart calls the Hydronic D5S. The heater’s own pump moves glycol through the Sure Marine cabin heater (cabin air), then the Duda (tap water across the double wall), then the Isotemp coil (leftover heat into or out of the static chamber), then back. When the loop is warm enough, the burner may pause while the pump keeps circulating—that is when the chamber can smooth short cycles. Living with that pattern is in the [User’s Guide](#users-guide); predicted starts and keep-or-sell numbers are in the [Isotemp value study](#isotemp-value-study).

**Stop and reject** any proposal that would splice into the engine, tee glycol into drinking water, bypass cabin heat, add a second glycol pump, or land the 750 W element on the 12 V panel.

## Locked architecture {#locked-architecture}

This is the spine of the system. Everything else hangs off this loop.

| | Locked rule |
|---|---|
| Loop order | Return → heater pump → Hydronic D5S → Sure Marine cabin heater → Duda (glycol) → Isotemp coil → return ([DEC-010](#dec-010)) |
| Header | Water Flow Tank (WFT) tees into the **return** at the highest circulating point — not in series, not off the Isotemp coil |
| Why that order | Cabin heat first (daily priority); Duda next (hottest fluid for sinks / occasional showers); Isotemp last (stores leftovers — see [Isotemp value study](#isotemp-value-study)) |
| Drinking water | Duda only; AM100-1LF on hot out; set ~120°F; taps from mixed outlet only ([DEC-003](#dec-003) / [DEC-008](#dec-008)) |
| Isotemp | Coil circulating; chamber static same mix; **750 W** on Paneltronics **WATER HEATER** only. Factory mixer stays capped — never for taps ([DEC-008](#dec-008)) |
| Heights | Water Flow Tank highest; everything else below it; cabin heater level, bottom-in/top-out, outlet bleeder; fill/drain at lowest point; unrestricted path from Water Flow Tank tee back to the pump |
| Isotemp mount (owner) | **Driver side under bench/bed (low)**; Water Flow Tank in **sofa-bed backrest (high)**; day: **outboard → seat back**, **inboard → seat butt** ([Working design understanding](#working-design-understanding)) |
| Cabin air | Living-space air across the Sure Marine cabin heater (**under the fridge**, SN 16401); Duda **under the sink**; combustion stays outside |
| Build priority (owner) | **Ease of access** and **ease of construction** rank high for sofa/Isotemp packaging |
| Sofa/bed materials ([DEC-021](#dec-021)) | **Hybrid:** wood side boxes + aluminum Isotemp cradle + light plywood day/night panels (seat-back / seat-butt geometry) — not all-extrusion furniture |
| Hot water use (owner) | ~**80% sinks**; showers minority — mention showers, do not center the narrative on them |

::: {.media-pair}
![Glycol loop](diagrams/glycol-loop.svg)

![Glycol loop layout](assets/parts/glycol-loop.webp)
:::

## The two jobs

The same glycol loop does cabin heat and tap heat. Those jobs never share fluid with each other or with combustion.

### Cabin air

Living-space air crosses the Sure Marine cabin heater under the fridge. Two Noctua fans and one dial move that air. Combustion air and exhaust stay outside.

::: {.media-pair}
![Cabin air](diagrams/cabin-air.svg)

![Sure Marine cabin heater](assets/parts/sure-marine-cabin.jpg)
:::

### Tap water

Freshwater runs tank → pump → Duda (cold in bottom, hot out top) → AM100-1LF → sink / shower. Heat crosses the Duda double wall only. The Isotemp chamber is not on this path. The factory Isotemp mixer stays capped forever.

::: {.media-pair}
![Fresh water system](diagrams/freshwater.svg)

![Freshwater layout](assets/parts/freshwater.png)
:::

## The Parts {#the-parts}

Meet each part once here. After this table, use only these official names—or the short forms listed under each name. Do not invent aliases (buffer, Bosch, Espar, “the tank,” “the core,” “the plate”).

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

**Fuel.** Fuel runs from the factory aux pickup through the metering pump to the heater. Owner is confident of the tap; believes the hose was run; **needs priming** before first fire. **Fuel pump** under van is **future work** before fire (look with the manual open). Prefer a metering-pump angle of 15°–35°. Keep the fuel line rising continuously, and never rest it on the exhaust ([SRC-009](#src-009)). Prime with the hand bulb immediately before first fire ([HOLD 8](#hold-8-first-fire)), then remove it.

**Exhaust and combustion air.** Owner thinks exhaust is OK; still a quick [HOLD 2](#hold-2-exhaust) look before fire. These are two separate paths to outside air; neither enters the cabin. Kit limits are in [The Numbers](#the-numbers-that-matter) and [Builder §2](#hold-2-exhaust).

![Fuel system](diagrams/fuel-system.svg)

![Combustion air and exhaust](diagrams/combustion-air.svg)

**Circulating loop and Isotemp chamber.** Fill with water plus propylene glycol at **most 50%** glycol ([SRC-009](#src-009)), **one brand only** (both on-hand jugs are concentrates — [SRC-029](#src-029) / [SRC-030](#src-030)). Prefer a water-first leak check before you commit glycol. Never run the pump dry.

**Fresh water.** Same path as [Tap water](#tap-water) above: tank → pump → Duda → AM100-1LF → taps. The Isotemp chamber is not on this path.

## Controls {#controls}

Hydronic wiring is two separate worlds. They never share a fuse panel.

| World | Power | What it does | Parked lockout |
|---|---|---|---|
| **12 V** | House battery | Diesel heat call, heater pump, cabin fans | **Master Off** |
| **120 V** | Shore or PROwatt SW → Paneltronics | Isotemp chamber element only | **WATER HEATER** breaker Off |

Master Off stops diesel heat and fans. Master Off does **not** cut Isotemp AC. Isotemp AC never lands on the 12 V panel.

![Day-one electrical](diagrams/electrical.svg)

**Day-one diesel heat** (enough for first fire): Master **On** → EasyStart start → fan dial. Living with the chamber and AC dish rinses is in the [User’s Guide](#users-guide). Pin tables and fuse sizes: [Electrical and Controls](#electrical-and-controls).

**Still open.** Thermostat auto ([Q-022](#q-022)). Isotemp GFCI path ([Q-009](#q-009)). Land the altitude kit at HOLD 4 ([Q-015](#q-015)).

### 12 V — how diesel heat is wired

Think of three layers. Only the middle layer goes through the master switch.

![Power](diagrams/electrical-power.svg)

**Layer 1 — heater always powered.** A heavy pair from the house battery: **12 AWG** if the round trip is **20 ft / 6 m** or less, through a **20 A** fuse, into heater pins **1** (red +) and **2** (brown −). This feed does **not** go through the master. The heater brain stays awake so it can finish an after-run and remember faults.

**Layer 2 — master unlocks the cabin controls.** Mount one Off/On switch next to the EasyStart. The master switches **positive only** to three small branches (land them on the Blue Sea ST Blade, or a **second breakout** if that block is full):

| Branch | Fuse | Feeds |
|---|---|---|
| A | **5 A** (insert **last**) | EasyStart Timer |
| B | size still OPEN | Later: thermostat → relay |
| C | size still OPEN | Fan dial → both Noctua fans |

Master On does **not** start the heater. Master On only unlocks those branches so EasyStart (and later the thermostat) can call for heat. When you park or leave, turn the master **Off**.

Emergency stop: EasyStart off → master Off → pull the 20 A if you must → battery last. Do not cycle off and on more than twice into a fault ([SRC-009](#src-009)).

**Layer 3 — EasyStart wakes the heater.**

![Wake](diagrams/electrical-wake.svg)

1. Branch A powers EasyStart pin **1** (+) and pin **3** (−).  
2. On start (or a schedule), EasyStart puts positive on pin **6** (yellow). That yellow wire becomes heater pin **7** (S+ — “switch on”).

No extra relay sits in a normal timer start. Once the heater sees S+, it decides whether to pump, glow, and fire.

**Altitude kit** (garage). Required above roughly 5,000 ft. It plugs into the control harness as a whole adapter—do not snip only the yellow wire. Land it at HOLD 4 while the EasyStart harness is open ([Q-015](#q-015) / [DEC-006](#dec-006)).

![Heater](diagrams/electrical-heater.svg)

With battery on pins 1–2 and yellow wake on pin 7, the heater runs its own water pump (pins **8–9**), the fuel metering pump (pins **4** and **10**), and glow / flame sensing. Do **not** add a second glycol pump. Tape off kit vehicle-blower wiring (pin **3**, blower relay, 25 A blower fuse)—that path is for a car heater matrix, not the Sure Marine cabin heater.

**Cabin fans** ride Branch C only.

![Fans](diagrams/electrical-fans.svg)

Book pick: Sure Marine [**W002-912**](https://www.suremarineservice.com/Heat/System-Switches/W002-912.html) Hi/Low **without** Off ([DEC-018](#dec-018)). **Do not** use a Noctua NA-FC1. Both Noctua fans share red/black after the dial; leave PWM and tach unused. The dial sets **speed only**—it never starts the diesel. Until thermostat auto closes ([Q-022](#q-022)), fans run whenever master is On and the dial is up.

**Thermostat auto — not ready.** The SC1600B’s **R** / **W** terminals are a dry contact (≤1 A). They need a **relay** for fan current ([SRC-019](#src-019)). **Do not** land them on EasyStart pins **9–10** (those are for Eberspächer’s optional temperature *sensor*). Until [Q-022](#q-022) names an approved wake path, start heat only from the EasyStart Timer. Fan-path relay reference: TE Connectivity **V23134-A3052-X540** (or any ISO mini 12 V coil / ≥10 A contacts).

### 120 V — Isotemp chamber only

![AC](diagrams/electrical-ac.svg)

The 750 W element is a **Paneltronics** load. Path:

**SmartPlug shore** *or* **PROwatt SW 2000** → one **Blue Sea 9009** hand rotary (**SHORE** / **INVERTER**) → Paneltronics MAIN → breaker **WATER HEATER** → element.

Master Off does **not** cut this path. Label that 9009 face—it is poorly labelled today ([`photos/ac-electrical.jpg`](../photos/ac-electrical.jpg)). Upstream hardwire GFCI/ELCI is still OPEN ([Q-009](#q-009)). Inverter face GFCI outlets protect only loads plugged into them.

The element warms the Isotemp **static** chamber only. Circulating glycol still needs the diesel pump through the **coil**. Element alone does not make a hot shower.

Route the element cable at HOLD 4. Leave **WATER HEATER** **off** until [HOLD 9](#hold-9).

**Second 9009 (not heat).** A separate rotary selects SmartPlug shore vs **DUOSIDA** J1772 into the **Mean Well RPB-1600-12** charger. That path charges the house battery. It does not feed **WATER HEATER**. Do not confuse the two rotaries.

### House boxes you will see (context only)

This book does not rebuild the whole van electrical system. Full inventory and photo extracts: [Working design understanding](#working-design-understanding) · [Electrical and Controls](#electrical-and-controls).

| Box | Role for hydronic |
|---|---|
| House battery **200 Ah** | Feeds all 12 V hydronic loads |
| Blue Sea ST Blade (+ ML-RBS) | Where master / EasyStart / fan fuses land (or a second breakout) |
| Wood panel: LinkPRO + **PROwatt SW 2000** + EasyStart | Monitor, inverter, heat call |
| Paneltronics face **72313** | **WATER HEATER** reserved for Isotemp; MAIN · BATTERY CHARGER · OUTLETS also on that face |
| Two **Blue Sea 9009** rotaries | (1) Paneltronics shore/inverter · (2) Mean Well shore/J1772 |
| SmartPlug + DUOSIDA J1772 | 120 V shore and 32 A / 240 V Level-2 inlets |

Wire sizes in this chapter are **AWG**; manuals print mm² for the same conductors ([SRC-009](#src-009) / [SRC-003](#src-003)).

## Architecture check

- [ ] Locked loop order, with the WFT on the return high point  
- [ ] Cabin air and drinking water stay separated from glycol (heat crosses the Duda only)  
- [ ] Isotemp chamber holds static glycol; the element is Paneltronics chamber heat only  
- [ ] Tap hot water needs the diesel pump through the Duda plate  
- [ ] Forbidden list is clear: no engine splice, no summer bypass, no second pump, no 12 V to the element  

→ [The Numbers](#the-numbers-that-matter), then the [User’s Guide](#users-guide).
