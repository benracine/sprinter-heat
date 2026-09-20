# User's Guide {#users-guide}

**Stage 2 — Use.** Read this after [System Design](#system-design) and [The Numbers](#the-numbers-that-matter). After [Acceptance](#acceptance), use this chapter as the day-to-day manual. Until Acceptance, treat the tables below as the operating target—not as permission to light the heater.

Diesel cabin heat and diesel hot water can pass before [HOLD 9](#hold-9). The complete system, including Isotemp AC, needs HOLD 9. Keep-or-sell numbers stay in the [Isotemp value study](#isotemp-value-study).

Jump: [System Design](#system-design) · [The Numbers](#the-numbers-that-matter) · [Current Status](#current-status-report) · [Builder’s Guide](#builders-guide) · [Acceptance](#acceptance)

## After Acceptance

| You want… | Do this |
|---|---|
| Parked / unattended | Master **Off**. Leave **WATER HEATER** off unless you deliberately want a shore or solar chamber top-off ([AC chamber](#ac-chamber-and-dishes)) |
| Cabin heat | Master **On** → EasyStart start → fan dial → wait a few minutes |
| Mild night, Low oversized | Burner may pause and restart; the chamber softens some short cycles |
| Shower / lots of hot water | EasyStart running; draw only through the AM100-1LF; expect the diesel to work |
| Charge chamber (after HOLD 9) | Set the Paneltronics **9009** to shore or inverter → turn **WATER HEATER** on (chamber must be full). Taps stay cold until EasyStart runs |
| Dish rinse after charge | Short EasyStart start so the **pump** runs — [AC chamber and dishes](#ac-chamber-and-dishes) |
| Pre-heat later | Master **On** → set an EasyStart schedule |
| Mountains overnight | Altitude kit already landed at HOLD 4; do not overnight above ~5,000 ft without it |
| Emergency stop | EasyStart off → master Off → Isotemp AC off → fuse or battery if needed. No more than two off/on cycles into a fault |

Until [Q-022](#q-022) closes, start heat from the EasyStart Timer only—not from the SC1600B.

A heat call starts the Hydronic D5S **pump**. The **burner** fires only if coolant is cool enough. Cool cabin air for the first minute or two is normal. When the loop is warm enough, the flame may pause near **85°C** and restart near **75°C** while the pump keeps circulating ([The Numbers](#the-numbers-that-matter)). That is when leftover heat can move into or out of the Isotemp chamber.

## Hard rules

The boxes in [Safety](#safety) still govern. For day-to-day use:

1. Turn the master Off when the van is parked or unattended.  
2. Draw taps only through the AM100-1LF (about 120°F, labeled). To set the valve: loosen the handwheel screw, lift, turn, lock, and check at the faucet ([SRC-036](#src-036)).  
3. Do not run overnight heat above about 5,000 ft without the altitude kit ([DEC-006](#dec-006)).  
4. Do not cycle the EasyStart off and on more than twice into a fault. Clear locks with diagnostics ([SRC-009](#src-009)).  
5. Check the Water Flow Tank level only when the system is cool.  
6. Hot water at the taps needs circulating glycol from the diesel **pump** through the Duda. Isotemp AC heats the static chamber only.  
7. The Isotemp element lands on Paneltronics **WATER HEATER** only—never on 12 V, and never into an empty chamber ([DEC-020](#dec-020)).  
8. The factory Isotemp mixer stays capped forever ([DEC-008](#dec-008)).  
9. Label the Paneltronics **9009** face **SHORE** / **INVERTER** before you rely on it.

## What the Isotemp does day to day

The Isotemp is not a faucet tank. Planning numbers live in the [Isotemp value study](#isotemp-value-study).

**Cabin heat.** The D5S Low stage is about **2.1 kW**. On mild nights Low is often oversized. The static chamber can soak up some of that surplus through the coil and give it back while the burner pauses. Expect the clearest cycling help around **40°F**, some help around **20°F**, and little help at **0°F** and colder. Holdover is **tens of minutes**, not hours.

**Hot water.** Heat at the sink or shower always means EasyStart → pump → Duda → AM100-1LF. The chamber can shorten a diesel run or feed a short dish rinse after an AC charge. It cannot replace the pump.

## AC chamber and dishes {#ac-chamber-and-dishes}

Use this only after [HOLD 9](#hold-9) (chamber full; GFCI path verified).

The 750 W element is **120 V** only. The hydronic master does not cut it. Energy arrives from shore or the PROwatt SW through the Paneltronics-path **Blue Sea 9009** ([`photos/ac-electrical.jpg`](../photos/ac-electrical.jpg)). Mark that face **SHORE** / **INVERTER**. Mark the other 9009 **SHORE** / **J1772** for Mean Well charge only.

**Charge.** Connect shore power, or run the inverter with enough headroom for about 750 W plus inverter idle. Turn Paneltronics **WATER HEATER** on. The element heats the static chamber only. From a cool chamber, plan about **40–60 minutes** to reach the working band near **75°C**. Taps stay cold during the charge because the pump is not running.

**Leave WATER HEATER on?** Leave it on when you are on shore power, or when solar clearly covers about 750 W plus inverter idle, and you want the chamber ready. Leave it off when you are saving the house battery, parking unattended for a long stretch, or HOLD 9 is still unfinished. Kill **WATER HEATER** (and the inverter if you are done) separately from the hydronic master.

**Dish rinse after a charge.** Turn the master On and make a short EasyStart start so the **pump** runs. If the glycol loop is still warm, the flame often stays off. Hot water at the sink usually arrives in about **30–60 seconds**, and you get about **2–5 minutes** of rinse. If the loop is cold, the flame usually lights, and useful hot water takes about **2–5 minutes**. This is a dish rinse, not a shower.

## If something is wrong

1. Turn EasyStart off, then master Off, then Isotemp AC off.  
2. Pull the fuse or disconnect the battery if needed (that counts toward the two off/on limit).  
3. Before you restart, check for fuel wetness or smell, exhaust into the cabin, a glycol leak, a low cool Water Flow Tank, battery outside 10.5–16 V, or a lukewarm Sure Marine cabin heater while the burner runs. → [Hazards](#hazard-register)  
4. After an overheat, wait until coolant is below about 70°C.

Normal Power / High / Low staging is not a fault. See [The Numbers](#the-numbers-that-matter).

## Occasional checks {#occasional-checks}

| When | Check |
|---|---|
| After loop work | Cool Water Flow Tank level; Prestone LowTox AF555 ≤50% |
| Before high camps | Altitude kit installed (landed at HOLD 4) |
| Early fires | Fuel and exhaust for wetness, rub, or smell |
| Before a heat call | Battery 10.5–16 V |
| Before Isotemp AC | Chamber full; **WATER HEATER** plus upstream GFCI/ELCI |
| Long storage | Master Off; Isotemp AC off |
| After first fire / after HOLD 9 | Log starts/hour, pause length, dish rinse, AC charge minutes — [Isotemp commissioning log](#isotemp-commissioning-log) |

→ [Status](#current-status-report), then [Make it](#builders-guide).
