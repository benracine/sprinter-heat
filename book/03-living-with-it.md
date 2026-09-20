# User's Guide {#users-guide}

**Stage 2 — Use.** After [System Design](#system-design) and [The Numbers](#the-numbers-that-matter). After [Acceptance](#acceptance), this is the day-to-day manual. Until then, these tables are the operating target—not permission to light the heater.

Diesel cabin heat / diesel hot water can pass before [HOLD 9](#hold-9). Complete system (Isotemp AC) needs HOLD 9. Keep-or-sell: [Isotemp value study](#isotemp-value-study).

Jump: [System Design](#system-design) · [The Numbers](#the-numbers-that-matter) · [Current Status](#current-status-report) · [Builder’s Guide](#builders-guide) · [Acceptance](#acceptance)

## After Acceptance

| You want… | Do this |
|---|---|
| Parked / unattended | Master **Off**. **WATER HEATER** off unless a deliberate shore/solar chamber top-off ([AC chamber](#ac-chamber-and-dishes)) |
| Cabin heat | Master **On** → EasyStart start → fan dial → wait a few minutes |
| Mild night, Low oversized | Burner may pause/restart; chamber softens some short cycles |
| Shower / lots of hot water | EasyStart running; draw only through AM100-1LF; expect the diesel |
| Charge chamber (after HOLD 9) | Paneltronics **9009** to shore or inverter → **WATER HEATER** on (chamber full). Taps stay cold until EasyStart |
| Dish rinse after charge | Short EasyStart so the **pump** runs — [AC chamber and dishes](#ac-chamber-and-dishes) |
| Pre-heat later | Master **On** → EasyStart schedule |
| Mountains overnight | Altitude kit at HOLD 4; no overnight above ~5,000 ft without it |
| Emergency stop | EasyStart off → master Off → Isotemp AC off → fuse/battery if needed. ≤ two off/on into a fault |

Until [Q-022](#q-022), start heat from EasyStart only—not the SC1600B.

A heat call starts the **pump**. The **burner** fires only if coolant is cool enough. Cool air for the first minute or two is normal. Flame may pause near **85°C** and restart near **75°C** while the pump keeps circulating ([The Numbers](#the-numbers-that-matter))—that is when the chamber can move leftover heat.

## Hard rules

Safety boxes in [Safety](#safety) still win. Day-to-day:

1. Master Off when parked or unattended.  
2. Taps only through AM100-1LF (~120°F, labeled). Set: loosen handwheel screw, lift, turn, lock, check at faucet ([SRC-036](#src-036)).  
3. No overnight heat above ~5,000 ft without the altitude kit ([DEC-006](#dec-006)).  
4. ≤ two EasyStart off/on cycles into a fault; clear locks with diagnostics ([SRC-009](#src-009)).  
5. Check WFT only when cool.  
6. Hot taps need the diesel **pump** through the Duda. Isotemp AC heats the chamber only.  
7. Element on **WATER HEATER** only—never 12 V; never empty chamber ([DEC-020](#dec-020)).  
8. Factory Isotemp mixer capped forever ([DEC-008](#dec-008)).  
9. Label the Paneltronics **9009** **SHORE** / **INVERTER** before relying on it.

## What the Isotemp does day to day

Not a faucet tank. Numbers: [Isotemp value study](#isotemp-value-study).

**Cabin.** Low is ~**2.1 kW**. On mild nights Low is often oversized; the chamber can soak surplus through the coil and give it back during pause. Clearest help around **40°F**; some at **20°F**; little at **0°F** and colder. Holdover is **tens of minutes**, not hours.

**Hot water.** Always EasyStart → pump → Duda → AM100-1LF. The chamber can shorten a diesel run or feed a short dish rinse after an AC charge. It cannot replace the pump.

## AC chamber and dishes {#ac-chamber-and-dishes}

After [HOLD 9](#hold-9) only (chamber full; GFCI path verified).

750 W is **120 V** only—not cut by the master. Shore or PROwatt via the Paneltronics-path **9009** ([`photos/ac-electrical.jpg`](../photos/ac-electrical.jpg)). Mark **SHORE** / **INVERTER** (other 9009: **SHORE** / **J1772** for Mean Well charge only).

**Charge.** Shore or inverter with headroom for ~750 W → **WATER HEATER** on → chamber only (~**40–60 min** cool → ~75°C). Taps stay cold (no pump).

**Leave on?** Shore or clear solar covering ~750 W, and you want the chamber ready. Off when saving the battery, long unattended park, or HOLD 9 unfinished. Kill **WATER HEATER** (and inverter if done) separately from the master.

**Dish rinse.** Master On → short EasyStart → pump runs. Warm loop: flame often stays off; hot water in ~**30–60 s**; ~**2–5 min** rinse. Cold loop: flame usually lights; useful hot water in ~**2–5 min**. Dish rinse, not a shower.

## If something is wrong

1. EasyStart off → master Off → Isotemp AC off.  
2. Fuse or battery if needed (counts toward the two off/on limit).  
3. Before restart: fuel wetness/smell, exhaust into cabin, glycol leak, low cool WFT, battery outside 10.5–16 V, lukewarm cabin heater while burner runs. → [Hazards](#hazard-register)  
4. After overheat: wait until coolant is below about 70°C.

Normal Power / High / Low staging is not a fault—[The Numbers](#the-numbers-that-matter).

## Occasional checks {#occasional-checks}

| When | Check |
|---|---|
| After loop work | Cool WFT; Prestone LowTox AF555 ≤50% |
| Before high camps | Altitude kit (HOLD 4) |
| Early fires | Fuel and exhaust wetness / rub / smell |
| Before a heat call | Battery 10.5–16 V |
| Before Isotemp AC | Chamber full; **WATER HEATER** + GFCI/ELCI |
| Long storage | Master Off; Isotemp AC off |
| After first fire / HOLD 9 | Log starts/hour, pause, dish rinse, AC charge — [Isotemp commissioning log](#isotemp-commissioning-log) |

→ [Status](#current-status-report), then [Make it](#builders-guide).
