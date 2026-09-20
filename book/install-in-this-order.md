::: {.install-guide}

# Builder's guide

**Stage 3 — Make it.** Only after [System Design](#system-design) and [User’s guide](#users-guide), and a skim of [Current status](#current-status-report).

Jump: [Four buckets](#four-buckets) · [HOLD 0](#hold-0) · [1 Fuel](#hold-1-fuel) · [2 Exhaust](#hold-2-exhaust) · [3 Mounts](#hold-3-mounts) · [4 Wiring](#hold-4-electrical) · [5 Glycol](#hold-5-glycol) · [6 Fresh](#hold-6-freshwater) · [7 Fill](#hold-7-fill) · [8 First fire](#hold-8-first-fire) · [9 AC](#hold-9) · [Acceptance](#acceptance)

**Rhythm:** assemble → inspect → HOLD → continue. Do not cross a HOLD. Unclear part/port/wire → stop. After Acceptance, live from the [User’s guide](#users-guide).

Who wins: [SRC-009](#src-009) on the heater · [SRC-002](#src-002) / [SRC-003](#src-003) on altitude / EasyStart · [SRC-019](#src-019) on hose/header/bleed · [System Design](#system-design) on this van’s layout.

::: {.must}
Use reinforced heater hose, stainless clamps, and brass/copper/stainless barbs (section 5). Garden hose and ordinary radiator hose fail under hydronic heat.
:::

## Done looks like

Cabin heat and diesel hot water pass [Acceptance](#acceptance). [HOLD 9](#hold-9) (Isotemp AC) can wait.

## Four buckets {#four-buckets}

Same map as [How to use](#four-buckets-overview). You are in **B**.

::: {.next}
**Start here:** Phase 3 mounts (WFT + Isotemp), then Phase 4 dry wiring. Do not fill or fire yet.
:::

| Bucket | Phases | Now |
|---|---|---|
| **A.** Safe under the van | 1–2 | Inspect |
| **B.** Hardware in place | 3–4 | **Do this next** |
| **C.** Loops closed dry | 5–6 | After B |
| **D.** Fill, fire, live | 7–8 (+9) | Last |

| Phase | Work on | Do not do yet | Done when |
|---|---|---|---|
| 0. Prepare | Design, status, manuals, parts | Cut hose / power “to see” | [HOLD 0](#hold-0) |
| 1. Fuel | Inspect pickup, pump angle, clamps, rise | Dry start | [HOLD 1](#hold-1-fuel) |
| 2. Exhaust / intake | Outlet, drain, supports, separation | Run heater | [HOLD 2](#hold-2-exhaust) |
| 3. Mount | WFT highest; Isotemp empty; cabin heater level; label ports | Fill | [HOLD 3](#hold-3-mounts) |
| 4. Electrical | EasyStart / heater 12 V; master; fans; cable to **WATER HEATER** dead; altitude if mountains soon | Heat call; energize element | [HOLD 4](#hold-4-electrical) |
| 5. Glycol hose | Locked loop order; bleeders; lowest drain | Add glycol | [HOLD 5](#hold-5-glycol) |
| 6. Freshwater | Tank → pump → Duda → mixer → taps | Trust hot temp yet | [HOLD 6](#hold-6-freshwater) |
| 7. Fill / bleed | Water-first → drain → ≤50% PG → bleed → static Isotemp fill | Fire; AC | [HOLD 7](#hold-7-fill) |
| 8. First fire | Prime; watch; hot inspect; shutdown; cool check | Call done with open required HOLD | [Acceptance](#acceptance) |
| 9. AC later | Upstream GFCI/ELCI; **WATER HEATER** on | Skip if diesel heat is enough | [HOLD 9](#hold-9) |

## Before you start

1. Engine off. Heater off. No smoking. No open flame.  
2. [SRC-009](#src-009), [SRC-003](#src-003), and [SRC-002](#src-002) within reach.  
3. Read every DANGER / CAUTION / MUST before the work it governs.  
4. Flashlight walk under the van.  
5. No glycol fill, Isotemp AC, or fire except at their HOLDs.  
6. **Label before you connect.** Tape every open port.

### HOLD 0 — ready {#hold-0}

- [ ] [System Design](#system-design) check done  
- [ ] [User’s guide](#users-guide) read  
- [ ] [Current status](#current-status-report) skimmed — next action is bucket B  
- [ ] Engine off, heater off, no flame/smoking  
- [ ] Manuals on hand  
- [ ] Underside walk done  
- [ ] Masking tape + marker ready  

### Bring to the bay

| Must have | Why |
|---|---|
| Reinforced heater hose, stainless (prefer double-band) clamps, brass/copper/stainless barbs | [SRC-019](#src-019) |
| Fill/drain with garden-hose thread | Lowest-point fill |
| WFT + Isotemp from garage | Mount (cabin heater already on van) |
| Master switch from garage | Next to EasyStart |
| Prestone LowTox AF555 + water + marked bucket | ≤50% ([DEC-017](#dec-017)); water-first |
| Priming bulb + adapters | [HOLD 8](#hold-8-first-fire) only |
| EasyStart / Hydronic diagrams; Eberspächer-style crimper | No generic-crimp kit pins |
| SC1600B; two Noctua NF-F12; 12 V fan dial | Cabin air |
| Multimeter | Prove master Off |
| Altitude kit 22 1000 33 22 00 | Before high camps |

## Sofa/bed platform decision

The sofa/bed spans both sides of the van and has a removable center. Treat it as part of the hydronic installation: it must carry the Isotemp Slim Square 4.2 gal heat battery, preserve service access, and leave the WFT 5 L expansion/header tank as the highest point of the loop.

### Requirements before choosing a building method

- Support the Isotemp empty and full. The tank is about 35 lb empty and adds about 16 L of static glycol when full.
- Leave about 30 cm of service space in front of the Isotemp element/thermostat side.
- Keep the Isotemp coil fittings and hoses below the WFT, or provide a bleeder at the hose high point.
- Make the center section removable without draining the loop or disconnecting the tank.
- Protect the tank, hoses, element cable, and Paneltronics route from luggage, screws, sharp edges, and movement.
- Leave access to the Isotemp fill/vent ports, safety valve, coil fittings, and electrical connection.
- Provide positive mechanical restraint. The tank must not rely on hose connections or furniture weight alone.

### Construction methods

| Method | Strength and stiffness | Advantages | Risks / work | Fit for this build |
|---|---|---|---|---|
| 80/20 aluminum extrusion | High and predictable when properly bracketed | Adjustable, removable, clean service access, easy to revise | Cost, many brackets/fasteners, must isolate edges and prevent rattles | Strong candidate for a structural base and removable center |
| EZTube or similar slot extrusion | High and adjustable | Similar serviceability to 80/20; may use simpler connectors | Confirm actual load ratings, connector strength, and available accessories | Candidate if the exact system and hardware are already on hand |
| Wood | High when properly framed and fastened | Lowest cost, easy to cut, quiet, familiar | Can trap access, absorb moisture, hide leaks, and make future changes harder | Good for the furniture shell; needs a deliberate removable service panel |
| Hybrid: wood furniture plus aluminum tank cradle | High where it matters | Keeps wood simplicity while giving the tank a defined restraint and service bay | Requires one interface between cradle and furniture | Recommended starting point for this van |
| Other | Unknown until specified | May use existing materials or a ready-made bed system | Cannot approve without load, restraint, service, and fire/heat review | Do not choose until those facts are documented |

### Decision procedure

1. Measure the sofa/bed opening, both side bays, the removable center, and the Isotemp envelope.
2. Mark the tank envelope on the floor with tape. Test both possible side bays.
3. Choose the side that gives the shortest practical coil-hose route, keeps the coil below the WFT, leaves element/thermostat service access, and protects the Paneltronics cable route.
4. Build the tank restraint first. Do not finalize cushions, drawer fronts, or the removable center until the tank can be removed without disturbing plumbing.
5. Choose the construction method using the table above. Record the choice and fastening method before cutting material.

**HOLD S — sofa/bed platform**

- [ ] Side bay selected using measured hose route and service access
- [ ] Isotemp full-load weight and restraint method documented
- [ ] Removable center clears the tank, hoses, element cable, and service access
- [ ] WFT location remains the highest circulating point
- [ ] Selected construction method and fastening details recorded

---

## Position the parts {#hold-a-positions}

Before you cut hose, lock relative heights. Wrong heights trap air and starve flow.

| Part | Positioning rule |
|---|---|
| WFT 5 L expansion/header tank | **Highest** circulating-loop point. Top of tank above every hose high point, the Sure Marine cabin heater, the Duda B3-12DW-20 plate heat exchanger, and the coil. Expansion volume and air “burp” tank. |
| Hydronic D5S diesel heater + its pump | Below WFT fluid level so exchanger and pump self-vent. Pump not at the absolute lowest point (dirt settles there). |
| Sure Marine cabin heater | Below WFT. Mounted **level**. Propylene glycol **in bottom, out top**. Outlet-side bleeder. |
| Duda B3-12DW-20 plate heat exchanger | Below WFT. Glycol ports on the circulating loop; freshwater ports never shared with glycol. |
| Coil in the Isotemp Slim Square 4.2 gal heat battery | Below WFT, or with a high-point bleeder on those hoses. Chamber is static — not teed into loop flow. |
| Return path WFT tee → pump | Unrestricted. No Sure Marine cabin heater, plate, or coil between the WFT tee and the Hydronic D5S diesel heater’s own pump. |
| Fill / drain | Lowest point of the circulating loop. |

**Locked circulating flow path:**

Return → Hydronic D5S diesel heater’s own pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger (glycol side) → coil in the Isotemp Slim Square 4.2 gal heat battery → return. WFT 5 L expansion/header tank tees into the return at the high point; it is not in series.

Forbidden while installing:

- Engine coolant splice
- Summer bypass around the Sure Marine cabin heater
- Second glycol pump / solar-shore glycol-assist circuit
- Landing the Isotemp 750 W element on the 12 V panel
- Teeing the Isotemp chamber into circulating flow
- Using the Isotemp factory mixer as the tap mixer

![Glycol loop](diagrams/glycol-loop.svg)

**HOLD A — positions locked**

- [ ] Planned mounts meet the height table
- [ ] Return path from WFT tee to pump is unrestricted on paper and in the bay
- [ ] No forbidden path is planned
- [ ] Tape labels planned for every open port

---

## 1. Fuel system {#hold-1-fuel}

The tank’s factory extra fuel connection is already in use. That is better than drilling the tank. It is not finished work.

**Fuel this heater accepts ([SRC-009](#src-009)):** ordinary diesel EN 590. Up to 20% FAME blend allowed. Pure biodiesel as the only fuel is not. Switch the engine and the Hydronic D5S diesel heater off before any fuel work. No naked flame, no smoking.

Walk the existing install against every rule below. Fix failures before you leave this section.

1. Find the pickup at the tank, the metering pump, and the line to the heater. Every fuel part is mounted on its own — the hose does not carry the weight of a filter, valve, or pump.
2. Metering pump sits about **15°–35°** from flat (preferred). Allowed **15°–90°**. Flat **0°–15°** is forbidden.
3. Heads ([SRC-009](#src-009)): pressure head tank → pump max **3000 mm**; suction head pressureless tank max **1000 mm** diesel; suction head with 0.03 bar tank-cap valve max **400 mm** diesel. Measure if anything looks marginal.
4. From pump to heater, the line rises the whole way. No dips that trap air.
5. Fuel line never rests on the exhaust. Crossings have air space and a heat shield. Drips and vapour cannot collect on hot parts or electrical gear.
6. Clamp lines about every **50 cm**. Cut hose with a sharp knife — no crushed or burred ends. Where two pipes join, butt the metal inside the hose so the joint does not make bubbles.
7. Stainless clamps on hose barbs. Do not overtighten and crush the line. Do not use ordinary Teflon tape on fuel fittings — shreds can foul the burner. Use fuel-rated thread sealant only where a threaded joint needs it.
8. No wetness, smell, rub marks, or drip paths onto hot parts or wires.

::: {.danger}
If anything in the fuel path looks wrong, fix fuel before you plumb propylene glycol. Do not light the Hydronic D5S diesel heater to “test” a bad fuel line.
:::

Before first fire (section 8), the whole fuel line must be filled and vented. Do **not** prime yet in this section — only inspect and fix. Priming is a numbered step immediately before first fire so you do not burn start attempts on a dry line. On diesel, the control may restart after about a **70-second** miss and then lock after **two further** failed attempts. Do not click off and on more than twice into a fault.

**Priming tool (use in section 8 only):** temporary hand-bulb siphon with hose-barb adapters. Confirm joint and adapter sizes now so you are ready later. Do not leave the bulb in the permanent circuit.

![Fuel system](diagrams/fuel-system.svg)

**HOLD 1 — fuel**

- [ ] Pickup, pump angle, rise, clamps, and exhaust clearance all pass
- [ ] No wetness or smell
- [ ] Priming adapters confirmed for section 8; tool not left in the line
- [ ] Lockout rule understood (≤2 off/on into a fault)

---

## 2. Exhaust and combustion air {#hold-2-exhaust}

Already installed. You are verifying, not redesigning. Numbers are from [SRC-009](#src-009) p. 24–25.

**Exhaust — every item must be true:**

1. Ends in open air outside the van: not under a door, not into a wheel well, not near a vent that can feed cabin air, and not at the combustion-air intake. Does not stick out past the vehicle side.
2. Whole run about **0.2 m minimum and about 2 m maximum**. Flexible exhaust inner diameter about **24 mm**. Silencer fixed to the vehicle on its bracket (bracket torque about 6+0.5 Nm; pipe clips about 7+0.5 Nm per [SRC-009](#src-009)), not hanging on the pipe alone.
3. Pipe slopes slightly down; a small drain (~**5 mm**) at the lowest point for condensate.
4. Supports about every **50 cm** against vibration. Clearance from fuel lines, electrical cables, brake hoses, and anything else heat can damage.
5. Mouth not aimed into the airstream, not clogged with dirt or snow, and not recirculating into the intake (silencer clearances on the order of **150–200 mm** from the intake opening — confirm on the [SRC-009](#src-009) figure).
6. Tail after the silencer is shorter than the heater-to-silencer run.

**Combustion air — every item must be true:**

1. Drawn from outside the cabin, from a place that stays cool (kit intent ≤ about **25°C**), not spray- or dust-laden, and not downstream of the exhaust.
2. Kit hose inner diameter about **20 mm**, **maximum about 0.76 m**. May be shortened; cut clean so chips cannot jam the combustion fan. Hose clip about 3+0.5 Nm per [SRC-009](#src-009).
3. Opening always free; not into a wind blast; slope down with a small drain if condensate can collect.

::: {.danger}
If exhaust can reach cabin air, stop. Carbon monoxide is the failure mode. Do not run the Hydronic D5S diesel heater in a closed garage. Do not work on exhaust while the heater is running — wait until it is cold.
:::

::: {.caution}
A stainless 90° elbow at the heater (field note) can reduce hanging height and give condensate a low point. If one is fitted, it still must obey slope, drain, clearance, and max-length rules in [SRC-009](#src-009). Confirm what is actually on this van before redesigning.
:::

![Combustion air and exhaust](diagrams/combustion-air.svg)

**HOLD 2 — exhaust / intake**

- [ ] Exhaust open-air, sloped, drained, supported, clear of fuel/electrical/brake lines
- [ ] Intake outside, length and diameter within kit limits, opening free
- [ ] No recirculation path into cabin or intake

---

## 3. Mount the tanks and cabin heater {#hold-3-mounts}

Work inside the van. Re-check the positioning table before you drill.

### WFT 5 L expansion/header tank

Not mounted yet. Planned for the rear bench.

1. Mount so the **top** of the tank is the highest propylene glycol point in the whole loop. Plan was about 20–30 inches above the floor. Verify nothing else will sit higher once hose is run.
2. Later you bleed air here. You fill from the lowest drain until this tank takes fluid.
3. Cap is the ~1.2 bar relief. Do not substitute a different cap without confirming relief pressure stays below the heater’s 2.5 bar limit.
4. Arrange relief discharge into a **catch bottle**, drip pan, or hose to a safe path — never onto bedding or wiring ([DEC-019](#dec-019)).

### Isotemp Slim Square 4.2 gal heat battery

Still in the garage. Planned under the sofa/bed. Envelope about 22-1/4 × 7-3/16 × 15-3/4 in; empty weight about 35 lb; full chamber adds about 16 L of fluid mass — mount to structure rated for that.

1. Mount so its drain / safety valve is the lowest point on that tank.
2. Leave service access in front (~**30 cm**).
3. Coil fittings below the WFT 5 L expansion/header tank. If not, add a bleeder at the high point of those hoses.
4. Keep coil hoses short (heater minimum flow is 250 l/h — every restriction counts).
5. Bench-fit and label the chamber connections outside the van if that makes the port identities clear. Mount the tank empty under the sofa/bed. Do not fill the main chamber until the tank is secured, the coil is connected, and the water-only circulating-loop leak check in section 7 is complete.
6. During chamber fill (section 7B), use the tank’s main-chamber fill and vent ports from the Isotemp installation diagram, **not** the hydronic coil fittings. Add the **same** propylene glycol mix as the loop until the chamber is full and air is expelled, then cap. Leave this volume sitting still. It is never drinking water.
7. Do not pipe this tank’s “fresh water” ports to the shower. Cap the little mixer on the tank. It has nothing to do here.
8. Route the tank’s electric-element cable to the Paneltronics **WATER HEATER** breaker. Do not connect it to the 12 V panel or energize it before the chamber and AC safety checks pass ([HOLD 9](#hold-9)).

### Duda B3-12DW-20 plate heat exchanger (already in the van)

AM100-1LF thermostatic mixing valve already on the hot-water outlet (top). Cold water in through the cabinet (bottom). One lower port already has a hose. Mixed-hot to the taps still open. One upper fitting still open for propylene glycol.

**Before any new hose:** put tape labels on every open fitting:

| Label | Meaning |
|---|---|
| FRESH IN | Cold freshwater into the plate (already through cabinet) |
| HOT TO MIXER | Plate hot out into the AM100-1LF thermostatic mixing valve (already) |
| MIXED HOT | From mixer to sink/shower (still to run) |
| COLD TO MIXER | Cold into the mixer’s cold inlet (still to run) |
| GLYCOL A / GLYCOL B | The two propylene glycol ports only — never the mixer, never the freshwater inlet |

1. Do not move the AM100-1LF thermostatic mixing valve onto a propylene glycol fitting.
2. Keep remaining hoses short.
3. Finish propylene glycol only on the ports labeled GLYCOL A and GLYCOL B.
4. Later (section 6): MIXED HOT to sink and shower; COLD TO MIXER to the mixer cold inlet.

### Sure Marine cabin heater (already on the van)

REAL core, SN **16401**. Label: **IN — bottom fitting · OUT — top fitting**. Fan power leads are taped, not finished. Final cosmetic spot may still move — plumbing rules below do not.

1. Confirm it sits **level**. An angled mount traps air away from the bleeder.
2. Glycol **bottom in, top out** (matches the plate). Keep that orientation if you reverse the core for fit ([SRC-032](#src-032)).
3. Use the outlet bleeder (or add one on the outlet / high side). Bleed later until a steady stream ([SRC-019](#src-019)).
4. Keep the core below the WFT once the WFT is mounted.
5. Cabin air only across the core — not from a fume-laden bay. Not ignition-protected for gasoline engine bays (ABYC note on the plate) — fine in this living-space install.
6. Finish **two** fans on the outlets ([DEC-015](#dec-015)). Target: both Noctua NF-F12 PWM (a mixed pair is on the unit today — replace or confirm intent). Wire fans **in parallel** to **one** inline **12 V** Low/Med/High dial on the shared positive ([DEC-018](#dec-018)). Power leads only; PWM/tach unused. No NA-FC1.
7. Dial is Low/Med/High **without** hard Off. Heat on/off is master + EasyStart (SC1600 only after [Q-022](#q-022)).

![Cabin air](diagrams/cabin-air.svg)

**HOLD 3 — mounts**

- [ ] WFT is the highest circulating point; relief has a catch path ([DEC-019](#dec-019))
- [ ] Isotemp mounted empty; coil below WFT or bled; mixer capped; element cable toward **WATER HEATER** (dead)
- [ ] Duda plate ports identified; mixer still on freshwater hot only
- [ ] Sure Marine cabin heater level, bottom-in/top-out, outlet bleeder fitted or planned
- [ ] Two fans + one speed dial installed (confirm both Noctua NF-F12); PWM/tach unused

---

## 4. Wiring and controls {#hold-4-electrical}

Pin colours, mm², and fuse values live in [Controls](#controls). Land each connector from [SRC-009](#src-009) / [SRC-003](#src-003) / [SRC-002](#src-002) on the bench — kit pins need the Eberspächer-style crimper.

### Battery feed, main fuse, master, three branches

1. Disconnect house-battery positive before cutting heater power leads.
2. Heater battery **+** (red) and **−** (brown) at **4 mm²** if plus+minus ≤ **6 m** total ([SRC-009](#src-009) p. 33). Longer → upsize so drop ≤ 0.5 V.
3. Land **main fuse 20 A** (kit item 2.7) on that positive.
4. After the main fuse, mount the **master Off/On** (garage → next to EasyStart). Everything below hangs off the switched side.
5. Fuse three branches **after** the master:

| Branch | Fuse | Lands on |
|---|---|---|
| A — EasyStart / wake | **5 A** activation (item 2.7.1) — insert **last** | EasyStart pin 1 red (Terminal 30) |
| B — SC1600B | Small (size OPEN) | Thermostat power / R–W signal path |
| C — Cabin fans | Sized for two Noctua NF-F12 (OPEN) | Fan dial → both fans’ power leads |

Meter-prove master **Off** kills A, B, and C. **On** restores them without a hot wire or surprise draw. Emergency: EasyStart off → master Off → pull fuse → battery. ≤ two off/on cycles into a fault.

### EasyStart Timer and heater S1 harness

EasyStart Timer is **already mounted** on the wood panel (with LinkPRO / PROwatt SW). Under-van cable toward the rear exists. Landing is unfinished.

1. Mate EasyStart **−XS10 / −XB10** per the [10-pin table](#controls) ([SRC-003](#src-003) pp. 8–9, circuit p. 17). Diagnosis pin 4 (blue/white) cabin-reachable.
2. Land heater connector **S1** per the [S1 table](#controls) ([SRC-009](#src-009) p. 33): water pump chambers **8** violet + / **9** brown −; metering pump **4** / **10**.
3. **S+ wake:** EasyStart pin **6** yellow → (optional altitude kit) → S1 chamber **7** yellow.
4. Insulate: S1 chamber **3** (vehicle fan), blower-relay leads **B / C / 22 / 23**, unused EasyStart pins. Seal empty chambers with filler plugs.
5. Shorten long kit leads carefully. Battery in heater window (~10.5–16 V).

### SC1600B and fans (auto heat waits on Q-022)

1. Mount SC1600B out of sun, vents, footwells. No mercury thermostat ([SRC-032](#src-032)).
2. **R–W** heat **signal** only ([SRC-033](#src-033)) — no fan output. Fans need a **relay** on branch C; heater wake needs an approved EasyStart/Hydronic input.
3. Until [Q-022](#q-022): heat from EasyStart Timer only. Fan dial Low/Med/High **without** hard Off ([DEC-018](#dec-018)); meter that Low still spins.

### Altitude kit 22 1000 33 22 00

**When you need it:** sustained camps above ~1,500 m / 5,000 ft ([SRC-009](#src-009)). Below that it is optional. You may do a **low-elevation** first fire without it. You may not overnight in the mountains without it.

**What it does:** indoor air-pressure sensor. From ~**1400 m** the heater cuts fuel (~**9% capacity per 1000 m**). Max on the kit manual ~**6000 m** ([SRC-002](#src-002)).

Manual: [SRC-002](#src-002) (pp. 3–5; Hydronic diagrams pp. 8–10 — including the path via On signal **S+ / yellow**).

**Find the kit**

1. Heater sticker: Hydronic II · D5S · 12 V · **25 2526** · **H-Kit** (already confirmed).
2. Box is in the garage — P/N **22 1000 33 22 00** (22.1000.33.2200). Not 33 23 00.
3. In the box: sensor, adapter cable, housings, screws, fuse ([SRC-002](#src-002) p. 3). Photo labels before you cut.

**Mount and wire**

1. Inside the cabin: clean and dry; plug facing **down**; not next to a vent or fan motor; space **not** airtight ([SRC-002](#src-002) p. 4).
2. Assemble the adapter exactly as that page shows (12-pin into cover → sensor until lever locks → 4-pin housings → fuse).
3. Land the control-unit end on the **Hydronic** diagram that matches this harness (direct or via **S+ / YE**). Insulate unused leads.
4. The SC1600B does **not** replace this sensor. Do not splice it into the altitude harness unless EasyStart docs say so ([Q-022](#q-022)).

**Check**

1. One controlled start with the sensor connected: metering pump starts → heater off → wait for after-run ([SRC-002](#src-002) p. 5).
2. Full factory check needs EDiTH / ISO adapter. Without that, mark the kit **installed, not service-verified** — do not claim high-camp ready from a lit screen alone.

**HOLD 4A — altitude kit**

- [ ] Correct P/N and H-Kit note recorded
- [ ] Sensor mounted (down plug, not airtight, away from vents)
- [ ] Adapter + fuse + control landing per [SRC-002](#src-002) (S+ path into S1 chamber 7)
- [ ] Unused leads insulated
- [ ] Check done, or high camps explicitly deferred

### Paneltronics AC panel and Isotemp element (route now; live only at [HOLD 9](#hold-9))

Separate from 12 V. End of this step: cable **routed, labeled, dead**.

**This van’s panel** (face photo): Paneltronics **120 V AC**, mark **72313** / sheet **9972313B**. Breakers: **MAIN 30 A** · **BATTERY CHARGER** · **WATER HEATER** · **OUTLETS** · reverse-polarity LED. **No GFCI on the panel** — need shore/inverter ELCI or GFCI upstream ([DEC-020](#dec-020)).

1. Bench-label the Isotemp 750 W element cable.
2. Route it to **WATER HEATER** only — never the 12 V panel ([Q-016](#q-016)).
3. Cap / lock out until [HOLD 9](#hold-9).
4. Element heats the **static** chamber only. It does not circulate glycol.

### Dry electrical check before plumbing

With the heater disabled and pump/fan loads disconnected where practical:

1. Master switch **Off** removes 12 V from EasyStart Timer, SC1600B, and fan-power branch (meter each).
2. Master switch **On** restores those three branches without a blown fuse, hot wire, or unexpected current draw.
3. Fuse polarity, grounds, connector locks, strain relief, and accessible diagnosis wiring are correct.
4. Fan speed controller: with master On and a temporary enable on the fan branch if needed, confirm Low/Med/High change fan speed and that the lowest setting still spins ([Q-021](#q-021)). Do not rely on this as a heat call.
5. Do not issue a heat call or run the Hydronic D5S diesel heater until fuel and coolant are filled, bled, and ready for first fire (section 8).
6. Do not energize the Isotemp AC element yet.

::: {.must}
The Isotemp Slim Square 4.2 gal heat battery’s 750 W / 115 VAC element is a Paneltronics AC-panel load. It heats the static chamber only. It does not circulate glycol and does not put hot water at the Duda B3-12DW-20 plate heat exchanger by itself. Do not land it on the 12 V panel. Do not energize until [HOLD 9](#hold-9): chamber full; Paneltronics breaker, GFCI/grounding, cable route, strain relief, and tank controls verified.
:::

![Controls map](diagrams/electrical.svg)

![Power feed](diagrams/electrical-power.svg)

![Wake path](diagrams/electrical-wake.svg)

![Heater loads](diagrams/electrical-heater.svg)

![Fans and relay](diagrams/electrical-fans.svg)

![Isotemp AC](diagrams/electrical-ac.svg)

**HOLD 4 — 12 V electrical (AC element stays dead)**

- [ ] Battery feed 4 mm² (≤6 m) and main fuse 20 A landed
- [ ] Master switch meter-proves three Off cuts (EasyStart / SC1600 / fans)
- [ ] EasyStart −XS10/−XB10 landed; 5 A activation fuse inserted last
- [ ] Heater S1 landed; chamber 3 and blower leads insulated
- [ ] S+ path EasyStart pin 6 → S1 chamber 7 (via altitude kit or deferred)
- [ ] Fan dial Low/Med/High confirmed (Low still spins)
- [ ] Isotemp element cable routed to Paneltronics **WATER HEATER**, labeled, locked out
- [ ] Altitude kit wired, or high camps explicitly deferred ([HOLD 4A](#hold-4-electrical))
- [ ] [Q-022](#q-022) still OPEN unless closed against [SRC-003](#src-003) / [SRC-009](#src-009) and documented

---

## 5. Propylene glycol plumbing {#hold-5-glycol}

### Hose and fittings

Use **reinforced heater hose** sized for the ports (this build already has 3/4 in on a landed Duda B3-12DW-20 plate heat exchanger barb). Maximum recommended single-loop hose run in marine practice is about 100 ft — keep this van’s runs far shorter.

::: {.caution}
Do not use garden hose or ordinary car radiator hose for long runs. They kink and fail under sustained hydronic heat.
:::

- Brass, copper, or stainless barbs and unions.
- **Stainless** hose clamps; double-banded clamps preferred so band holes do not cut the hose.
- Hose fully over the barb; clamp on the barb, not past it.
- On beaded (smooth) fittings: thin hose adhesive on the inside of the hose and the outside of the fitting; let it tack a few minutes; assemble; still use a clamp. Do not put hose adhesive on fuel hose.
- Support long runs with stainless or nylon clamps. About **1/8 in** clearance through bulkhead holes so the hose cannot chafe (hole about 1/4 in larger than the hose).
- Metal elbow for a tight 90°; do not force a kink into the hose.
- In-line bleeder at any hose high point that can trap air.
- Fill/drain at the **lowest** circulating-loop point (garden-hose thread is fine).
- Brass or stainless on the coil in the Isotemp Slim Square 4.2 gal heat battery — not ordinary plastic. Coil connections are 1/2 in BSPP class — use heat-rated hose and metal fittings.

### Connect in locked order

**Dry-fit first.** Cut hose long, trial-fit every run without clamping, check for kinks and height mistakes, then shorten and clamp.

0. Install a fill/drain valve with garden-hose thread at the **lowest** circulating-loop point. Label it FILL/DRAIN.
1. Return line to the Hydronic D5S diesel heater’s own circulating pump.
2. Pump discharge to the Hydronic D5S diesel heater’s water inlet. Keep this short and free of the Sure Marine cabin heater, plate, and coil. Avoid tight elbows immediately at the pump.
3. Hydronic D5S diesel heater water outlet to the Sure Marine cabin heater (bottom in, top out).
4. Through the propylene glycol ports on the Duda B3-12DW-20 plate heat exchanger (GLYCOL A / GLYCOL B only).
5. Through the coil in the Isotemp Slim Square 4.2 gal heat battery.
6. Back to the return line. Tee the WFT 5 L expansion/header tank into that return at its highest point; not a branch off the Isotemp coil.

The coil stays in the loop always. No bypass around it. Do not open the four-gallon chamber into the flowing loop.

**Bleed order (later, in section 7):** (1) WFT 5 L expansion/header tank, (2) Sure Marine cabin heater outlet, (3) any other high-point bleeder you installed.

::: {.must}
Never run the Hydronic D5S diesel heater’s pump with the loop dry. Never connect any propylene glycol hose to a drinking-water fitting.
:::

**HOLD 5 — glycol plumbing dry**

- [ ] Hose, clamps, supports, and elbows match the rules above
- [ ] Flow path matches the locked order
- [ ] WFT tee on return high point; path from tee to pump unrestricted
- [ ] No glycol hose on a freshwater fitting
- [ ] Bleeders present at WFT and Sure Marine cabin heater outlet

---

## 6. Fresh water plumbing {#hold-6-freshwater}

Intended path: water tank → strainer → pump → check valves → Duda B3-12DW-20 plate heat exchanger (in bottom, out top). City water can tee in. Hot sink and hot shower from the AM100-1LF thermostatic mixing valve. Cold sink, cold shower, and the AM100-1LF thermostatic mixing valve’s cold inlet share the cold side.

::: {.danger}
A diesel boiler can produce very hot domestic water. An anti-scald valve is mandatory. In this build that valve is the AM100-1LF thermostatic mixing valve. Tap hoses must come from the mixed outlet only. Unmixed plate outlet water can track about 150–185°F.
:::

1. Fresh water in is already through the cabinet. Do not add a second inlet on a propylene glycol port.
2. Hot out is already into the AM100-1LF thermostatic mixing valve. Run hose from the **mixed** outlet to the taps.
3. Cold also feeds the AM100-1LF thermostatic mixing valve’s cold inlet.
4. Set the AM100-1LF before anyone showers (~**120°F**; standard range 70–145°F per [SRC-036](#src-036)):
   - Apply thermostrip (or thermometer) on the **Mix** outlet pipe.
   - Loosen the handwheel screw → lift the handwheel → turn to the desired temperature → reseat and retighten to **lock**.
   - Confirm with a thermometer at a faucet. Water above 120°F can scald — write the setting on the CAUTION label and stick it on the valve ([SRC-036](#src-036)).
5. Do not use the little mixer on the Isotemp Slim Square 4.2 gal heat battery for the shower.
6. Cap anything you are not holding. Keep propylene glycol fittings and water fittings obviously different while you work.

![Fresh water system](diagrams/freshwater.svg)

**HOLD 6 — freshwater**

- [ ] Tap hoses from mixed outlet only
- [ ] Cold feed to mixing valve present
- [ ] Mixer set ~120°F per [SRC-036](#src-036) handwheel procedure and labeled
- [ ] Isotemp factory mixer still capped / unused
- [ ] No glycol/fresh cross at any open fitting

---

## 7. Fill and bleed {#hold-7-fill}

Two separate fills. Do not confuse them.

### A. Circulating loop — estimate, water-check, then propylene glycol

Order-of-magnitude capacities (measure your actual hose lengths; do not buy concentrate from a guess alone):

| Piece | Approx. volume |
|---|---|
| Hydronic D5S diesel heater | ~0.18 L |
| Sure Marine cabin heater (REAL-class) | ~0.2 L |
| 3/4 in heater hose | Measure actual inside diameter and installed length |
| WFT 5 L expansion/header tank | up to ~5 L when full (not all of that is circulating) |
| Coil in the Isotemp Slim Square 4.2 gal heat battery | Measure / add on fill |
| Isotemp chamber | ~4.2 gal **static** — separate fill in 7B |

**Water-first leak check (mandatory before committing glycol):**

1. Cap off the WFT 5 L expansion/header tank so air can leave. Fill from the lowest drain with **plain water** until the WFT shows fluid (about a quarter up is enough for a leak hunt).
2. Do **not** energize the pump yet if hose cuttings or sawdust may still be in the loop.
3. Walk every joint for drips and every hose for kinks. Fix now, while you are only wasting water. If you find a leak or kink, drain, repair, and repeat this water fill.
4. Drain that water completely.

**Propylene glycol fill:**

5. Mix **Prestone LowTox AF555** in a clean marked bucket ([DEC-017](#dec-017)). **Simple recipe:** equal parts concentrate and water by volume (50% max). Example: 1 gal concentrate + 1 gal water. Prefer slightly under 50%. Do not pour undiluted. Cap the Star brite jug — do not use it in this loop.
6. Fill with mixed propylene glycol from the FILL/DRAIN valve until the WFT takes fluid.
7. With the system **cool** and the WFT cap off, open bleeders in this order: WFT, then Sure Marine cabin heater outlet, then any other high-point bleeder. Leave each open until a **steady stream** comes out. Sputtering means air is still present.
8. Run the Hydronic D5S diesel heater’s pump briefly (loop must already be wet — never dry). Bleed again in the same order.
9. Confirm heater, pump, and coil sit below WFT fluid level. Recheck WFT level when cool. Aim for a stable cool level with head on the pump (about half full is a common target after bleed — top up as needed).

::: {.caution}
Never check the WFT level when the system is hot. Escaping fluid or steam can scald.
:::

::: {.must}
Never run the pump dry. Water alone is not the permanent coolant — after the leak check, operate on ≤50% propylene glycol mix.
:::

The WFT cap relieves at about 1.2 bar (below the heater’s 2.5 bar limit). Do not treat the Isotemp potable safety valve as a propylene glycol setting.

### B. Isotemp Slim Square 4.2 gal heat battery chamber (static)

Do this after the tank is mounted, coil connections are complete, and the water-only circulating-loop leak check above has passed, and before first fire.

1. Use the tank’s main-chamber fill and vent ports from the Isotemp installation diagram, not the hydronic coil fittings.
2. Add the **same** propylene glycol mix as the circulating loop until the chamber is full and air is expelled.
3. Cap the ports. Leave the volume sitting still.
4. Keep the safety-valve drain aimed somewhere a spill is acceptable.
5. Route the element cable to the Paneltronics AC panel; do not energize it yet.
6. Optional: exercise the PRV lever once with the drain aimed safely (glycol, not potable, will come out).

**HOLD 7 — filled and bled**

- [ ] Water leak check passed and drained
- [ ] Circulating loop filled with ≤50% Prestone LowTox ([DEC-017](#dec-017))
- [ ] Bleeders yielded steady stream; pump brief run; re-bleed done
- [ ] Cool WFT level confirmed; heater/pump/coil below WFT fluid
- [ ] Isotemp chamber filled static with same mix; element routed to Paneltronics and still de-energized

---

## 8. Commissioning (first fire) {#hold-8-first-fire}

Do this only after HOLDs 1–7 are true and you can see no wet joints.

### Prime fuel now (not earlier)

1. Confirm adapters fit the chosen joint.
2. Open the joint, pull diesel with the hand bulb past the metering pump to the heater inlet until fuel arrives wet at the heater end.
3. Remove bulb, union, and adapters. Restore the normal line.
4. Wipe and inspect for wetness. Do not leave any priming part in the permanent circuit.

### First heat

First heat is inspection under temperature, not a casual warm-up.

1. Work outdoors or with the garage fully open. Never in a closed garage.
2. Master switch **On**. Start from the EasyStart Timer, not by poking wires.
3. Stay with the van for the whole first fire. Watch under the van and every new hose joint.
4. Check fuel, exhaust, and clamps for wetness and smell while it runs.
5. Listen for the heater’s own pump. The loop must move; air-locked heaters overheat. Minimum flow through the heater is **250 l/h**.
6. Walk every propylene glycol hose for kinks and every fitting for seepage once the loop is hot.
7. Expect normal staging: Power → High ~65°C → Low ~80°C → pause ~85°C; restart from pause ~75°C.
8. Optional flow hint: supply-to-return ΔT near ~10°F suggests healthy circulation; much larger ΔT (above ~17°F) suggests low flow. Confirm against lukewarm Sure Marine cabin heater while the burner runs.
9. If it faults, do not click off and on more than twice. Use the EasyStart Timer’s diagnostic readout.
10. After shutdown, wait until the exhaust is cold before you touch it.
11. Open a tap. Hot, not scalding. If you cannot read a setpoint on the AM100-1LF thermostatic mixing valve, do not hand someone a shower.
12. Recheck the WFT 5 L expansion/header tank level after the first **cool-down**. Top up and bleed again if it dropped.

If it will not start, work this list in order: fuel prime → air in the propylene glycol loop → battery voltage (about 10.5–16 V) → Altitude kit wiring if already installed.

::: {.danger}
Do not run the Hydronic D5S diesel heater in a closed garage. Exhaust is carbon monoxide.
:::

**[HOLD 8](#hold-8-first-fire) — first fire**

- [ ] First run watched end-to-end
- [ ] No unexplained wetness or smell
- [ ] Pump heard / flow evidenced; no overheat lockout from air
- [ ] Mixer setpoint confirmed before any shower
- [ ] Cool WFT level rechecked after shutdown

---

## 9. Optional — first energize of Isotemp AC element ([HOLD 9](#hold-9)) {#hold-9}

Do this only after HOLD 7 (chamber full) and after you have closed [Q-009](#q-009) / [Q-016](#q-016) far enough to name the actual Paneltronics breaker, GFCI/grounding, cable size, and switch. Diesel Acceptance does **not** require [HOLD 9](#hold-9).

1. Confirm the Isotemp chamber is full of the same propylene glycol mix; element never runs dry ([SRC-022](#src-022)).
2. Confirm the element cable lands only on the Paneltronics AC panel — never the 12 V panel.
3. Verify breaker rating, GFCI or equivalent ground-fault protection, grounding/bonding, polarity, strain relief, and any enable switch.
4. Read the Isotemp operating instructions for element use and overheat reset.
5. Energize briefly while present. Confirm the chamber warms; confirm no smell, trip, or hot cable.
6. Shut AC off. To move stored heat toward the taps later: EasyStart Timer call so the Hydronic D5S diesel heater’s pump runs, then open a tap through the AM100-1LF thermostatic mixing valve.

::: {.danger}
Do not energize the 750 W / 115 VAC element on an empty chamber. Do not land it on 12 V. Treat live AC as shock/fire hazard until [HOLD 9](#hold-9) checks are written down and true.
:::

**[HOLD 9](#hold-9) — Isotemp AC**

- [ ] Chamber full
- [ ] Paneltronics breaker / GFCI / grounding / cable documented ([Q-009](#q-009) / [Q-016](#q-016) closed or explicitly deferred with circuit locked out)
- [ ] First AC run watched; no fault
- [ ] Element left off when unattended unless you deliberately want an AC charge

---

## Acceptance {#acceptance}

**Safe to park and use for cabin heat / diesel hot water when all of these are true**

- [ ] Fuel line walked and dry; primed before first fire
- [ ] Exhaust ends outside, away from the intake and cabin openings; slope and drain present
- [ ] Circulating propylene glycol full and bled; heater and coil below WFT fluid level
- [ ] Coil in the Isotemp Slim Square 4.2 gal heat battery in the loop; 4.2 gal chamber full of the same mix, sitting still
- [ ] Duda B3-12DW-20 plate heat exchanger: propylene glycol one side, water the other; AM100-1LF thermostatic mixing valve on hot-water out, set and labeled ~120°F; taps from mixed outlet only
- [ ] EasyStart Timer command verified
- [ ] Master switch Off removes power from all three intended downstream branches and is meter-verified as a hard lockout
- [ ] Sure Marine cabin heater fans and speed controller installed; dial is speed only
- [ ] SC1600B automatic heater/fan behavior is either verified against the EasyStart Timer manual or remains explicitly OPEN under [Q-022](#q-022) — do not call it complete on assumption
- [ ] First commissioning run completed without unexplained wetness or smell
- [ ] Whole-system inspection after install, before day-to-day use

**Still allowed to defer (does not block a low-elevation first diesel fire)**

- Altitude kit 22 1000 33 22 00 — required before high camps, not before a low-elevation first fire
- Sure Marine cabin heater final cosmetic mount spot — but it must be plumbed, level, and bled before relying on cabin air
- [HOLD 9](#hold-9) / Isotemp AC first energize — required before using the element; not required for diesel cabin heat / diesel hot water at the Duda plate

:::
