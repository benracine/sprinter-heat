# User's Guide {#users-guide}

**Stage 2 — Use.** Read this after [System Design](#system-design) and [The Numbers](#the-numbers-that-matter), and before [Current Status](#current-status-report) and the [Builder’s Guide](#builders-guide). After [Acceptance](#acceptance), use this chapter as the day-to-day manual. Until Acceptance, treat the tables below as the operating target—not as permission to light the heater.

Jump: [System Design](#system-design) · [The Numbers](#the-numbers-that-matter) · [Current Status](#current-status-report) · [Builder’s Guide](#builders-guide) · [Isotemp value study](#isotemp-value-study)

## Quick start (after Acceptance)

| You want… | Do this |
|---|---|
| Parked / unattended | Master **Off**. Leave Isotemp AC (**WATER HEATER**) **off** unless you deliberately want a chamber top-off on shore or abundant solar (see [AC chamber](#ac-chamber-and-dishes)) |
| Cabin heat | Master **On** → EasyStart Timer start → fan dial Low/Med/High → wait a few minutes |
| Shower / lots of hot water | Master **On** → EasyStart start → draw only through the AM100-1LF. Expect the diesel to run |
| Dish rinse with chamber already hot | Master **On** → short EasyStart → wait per [timing table](#ac-chamber-and-dishes) → tap through AM100-1LF |
| Charge chamber from shore/solar | After [HOLD 9](#hold-9) → **WATER HEATER** on (chamber must be full). Taps stay cold until you run EasyStart |
| Pre-heat later | Master **On** → set an EasyStart schedule |
| Mountains overnight | Install the altitude kit first ([DEC-006](#dec-006)) |
| Emergency stop | EasyStart off → master Off → Isotemp AC off → fuse or battery if needed. No more than two off/on cycles into a fault |

Until [Q-022](#q-022) closes, always start heat from the EasyStart Timer, not from the SC1600B.

A heat call wakes the Hydronic D5S and starts its **pump**. The **burner** fires only if coolant is cool enough. Cool cabin air for the first minute or two is normal.

## Hard rules

1. Turn the master Off when the van is parked or unattended.
2. Take showers only through the AM100-1LF (about 120°F, labeled). Unmixed plate water can run about 150–185°F. To set the valve: loosen the handwheel screw, lift, turn, lock, and check at the faucet ([SRC-036](#src-036)).
3. Do not run overnight heat above about 5,000 ft without Altitude kit 22 1000 33 22 00 ([DEC-006](#dec-006)).
4. Do not cycle the EasyStart off and on more than twice into a fault ([SRC-009](#src-009)). Clear locks with diagnostics, not by power cycling.
5. Check the WFT level only when the system is cool.
6. Hot water at the taps needs circulating glycol from the diesel **pump** through the Duda. Isotemp AC only heats the static chamber. Running the element alone will not give you a shower or dish water.
7. The Isotemp 750 W element lands on Paneltronics **WATER HEATER** only—never on 12 V ([DEC-004](#dec-004) / [DEC-020](#dec-020)). Never energize an empty chamber.

## What the Isotemp does for you day to day

The Isotemp Slim Square is a **buffer**, not a faucet tank. Planning numbers and keep/sell analysis live in the [Isotemp value study](#isotemp-value-study).

**Cabin heat.** The D5S Low stage is about **2.1 kW**. On mild or moderate nights a well-insulated van often needs less than that, so Low has surplus heat. The static chamber can soak up some of that surplus through the coil and give it back while the burner pauses. Expect **fewer short cycles** in shoulder weather—not a promise of zero starts, and little help when it is so cold that the van already wants more than 2.1 kW.

**Rough scale (planning only):**

| Outside air (cabin ~70°F) | What to expect from the buffer |
|---|---|
| Around **40°F**, decent insulation | Clearest cycling benefit; Low often oversized |
| Around **20°F** | Some benefit; diesel does more of the work |
| Around **0°F** and colder | Little cycling help; treat the diesel as the heat source |

Stored energy in the chamber is **tens of minutes** of buffer at Low output, not hours.

**Hot water.** Heat at the sink or shower always means: EasyStart → pump → Duda → AM100-1LF. The chamber can shorten a diesel run or feed a short dish rinse after an AC charge. It cannot replace the pump.

## AC chamber and dishes {#ac-chamber-and-dishes}

Use this after [HOLD 9](#hold-9) (chamber full, GFCI/ELCI and Paneltronics path verified).

### Charge

1. Shore or abundant solar ready; inverter on if you are not on shore.
2. Turn Paneltronics **WATER HEATER** **on**.
3. The 750 W element heats the **static chamber** only. The working thermostat cuts near **75°C / 167°F**, then tops off as the chamber cools. From a cool chamber, plan about **40–60 minutes** to reach that band.
4. Taps stay **cold** during the charge. No pump → no heat at the Duda.

### Leave WATER HEATER on or not?

The thermostat will top off by itself. That does **not** mean leave inverter + **WATER HEATER** on forever.

| Leave **WATER HEATER** on when… | Leave it **off** when… |
|---|---|
| Shore power, or solar clearly covering ~750 W plus inverter idle | Saving the house battery; long unattended park; HOLD 9 / GFCI path not finished |
| You want the chamber ready for a later dish rinse | You only need cabin heat from diesel |

Master **Off** does not cut Isotemp AC. Kill **WATER HEATER** (and the inverter if you are done) separately.

### Dish rinse after a charge

Master **On**, short EasyStart start, then wait for the **pump**. Heat moves chamber → coil → Duda → AM100-1LF → sink.

The pump and the burner are different. EasyStart always starts the pump. The burner lights only if glycol at the D5S is cool enough.

**If the glycol loop is still warm** (you ran heat recently):

- Flame often stays **off**.
- Wait about **half a minute to a minute**, then open the tap.
- You get about **two to five minutes** of dish-rinse water (a few liters). After that the water softens or the burner lights.

**If the glycol loop is cold:**

- Flame almost always comes **on**. The D5S feels cold coolant, not the hot chamber.
- Wait about **two to five minutes** for useful hot water at the sink.
- The chamber helps the diesel finish the job faster. It does not skip the flame.

This is a **dish rinse**, not a shower. For a shower, run EasyStart and expect the diesel to work.

## Controls at a glance

| Control | Does | Does not |
|---|---|---|
| Master switch | Cuts 12 V to EasyStart, the SC1600B path, and cabin fans | Set temperatures; run Isotemp AC |
| EasyStart Timer | Start, stop, schedule, and target ([SRC-003](#src-003)); starts the D5S pump on a heat call | Replace master Off |
| SC1600B | Low-current heat **signal** only ([SRC-033](#src-033)); needs a relay for fans | Fan power; trusted auto until [Q-022](#q-022) |
| Fan dial | Low/Med/High — no hard Off ([DEC-018](#dec-018)) | Call for heat |
| AM100-1LF | Safe tap temperature | Act as a glycol valve or the Isotemp factory mixer |
| Paneltronics **WATER HEATER** | Chamber charge after [HOLD 9](#hold-9); tops off near 75°C | Circulate glycol; heat the taps alone |

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

- [ ] Parked means master Off; Isotemp AC off unless you chose a deliberate shore/solar top-off  
- [ ] Heat and hot water come from EasyStart until the thermostat is verified  
- [ ] Showers only through AM100-1LF at about 120°F  
- [ ] Isotemp AC charges the chamber only; taps still need the pump  
- [ ] Dish rinse timing (warm loop vs cold loop) is clear  
- [ ] Emergency stop and the two off/on rule are clear  

→ [Status](#current-status-report), then [Make it](#builders-guide).
