# Working design understanding {#working-design-understanding}

Scratchpad for Ben’s questions. Not the Builder’s Guide. Promote locked answers into part one / HOLD S when ready.

## Input from Ben

- Doesn’t the Xantrex we own have GFCI on the outlets already? Doesn’t that help answer some outstanding questions?
- Comparison table of sofa materials / build options.
- Frame mechanisms; Tyrah wants a sofa bed whose middle opens by day (hinge/slide panels).
- Layout: stove/oven at passenger door; 30+ gal water tank over passenger rear wheel well.
- Walls are plywood panels (not pine slats); need access behind them.
- Do we need to rip out the bed?
- Wiring: Paneltronics → Isotemp is obvious—don’t complicate it. Don’t debate GFCI/inverter feed validity here.
- **Does not love acronyms.** Prefer full names (or full name first). Example: **WFT** = brand/product name **Water Flow Tank** (the 5 L expansion/header tank)—not a cryptic heater-code. In this scratchpad and when promoting to part one, spell things out.

---

## House AC (owner — `photos/ac-electrical.jpg`)

Authority for this van’s AC topology: **Van AC Electrical Diagram** (`photos/ac-electrical.jpg`).

```
J1772 240 V (L1/L2) ──2-pole breaker──┐
                                       ├─→ Blue Sea 9009 rotary ──→ Mean Well RPB-1600-12
120 V RV shore (L1/N) ─2-pole breaker──┤         (charger; NOT via Paneltronics)
                                       │
                                       └─→ Blue Sea 9009 rotary ──→ 120 V AC panel (Paneltronics)
Xantrex inverter (L1/N) ───────────────┘         ├─→ Coolant / water heater 120 V  (= Isotemp path)
                                                 └─→ Outlets 120 V
```

| Switch | Part (as-built) | Selects | Feeds |
| --- | --- | --- | --- |
| Rotary A | **Blue Sea 9009** (owner: both are 9009s) | J1772 240 V ↔ 120 V RV shore | **Mean Well RPB-1600-12** only |
| Rotary B | **Blue Sea 9009** (owner: both are 9009s) | 120 V RV shore ↔ **Xantrex PROwatt SW 2000** | **Paneltronics** MAIN → WATER HEATER + OUTLETS |

**As-built note (owner 2026-09-20):** diagram draft showed an *automatic* transfer into Paneltronics; both paths **ended up rotary Blue Sea** — owner thinks **both are 9009s**. Confirm faceplates at HOLD 9. Hand-throw: shore vs inverter for the AC panel; shore vs J1772 for the Mean Well.

**Mean Well** does **not** use the Paneltronics **BATTERY CHARGER** breaker — it is fed only through its Blue Sea 9009.

**Isotemp** = diagram’s “Coolant / water heater 120v” off the AC panel (**WATER HEATER** branch). Not on the 12 V panel.

**GFCI (owner 2026-09-20):** “The inverter might be capable of that.” Treat as **unverified**. PROwatt SW 2000 face has dual GFCI receptacles; whether the **hardwired** feed into the Paneltronics 9009 / Paneltronics is also ground-fault protected is a manual + as-built check — do not assume face GFCI covers Isotemp. When the panel is on **shore** (not inverter), that inverter GFCI story does not apply anyway. HOLD 9: confirm inverter hardwire behavior, then state shore-side protection separately (or “breaker + chamber full” if none).

**House DC snapshot (owner):** **200 Ah** battery bank; **650 W** rated solar on roof. Chargers: **Mean Well RPB-1600-12** (shore / J1772 via Blue Sea 9009) and **Sterling 60 A battery-to-battery** (alternator / vehicle charge path). PROwatt SW 2000 inverts for the AC panel when its 9009 is selected.


---

## 12 V heat wiring (plain)

Two separate feeds from the house battery side (often via the **Blue Sea** fuse block):

1. **Always-hot to the Hydronic D5S** — heavy fused pair (book: 20 A). Does **not** go through the master. Heater brain can finish after-run.
2. **Master switch → EasyStart Timer (and later fans / thermostat path)** — master is **upstream of the 7-day EasyStart**. Master Off = EasyStart dead = no wake signal = no new heat call. Master On only unlocks the timer; it does not start the heater by itself.

Isotemp 120 V is unrelated to this master.

```
Paneltronics breaker labeled WATER HEATER  →  Isotemp 750 W element
```

Chamber must be full before energize. Never land this on 12 V. Master Off does not cut this branch.

Everything else about house AC stays out of this scratchpad unless you ask.

---

## Layout constraints (owner)

| Fact | Implication |
| --- | --- |
| Stove/oven at **passenger door** | Galley heat / clearance / hose paths stay clear of that door swing |
| Freshwater tank **30+ gal over passenger rear wheel well** | Matches ~35 gal intent ([SRC-026](#src-026)). Driver-side sofa bay freer for Isotemp |
| Isotemp | **Driver side under bench/bed (low)** (owner) |
| Jump seat behind driver → sink/fridge aft of that | **Tyrah / as-built 2026-09-20:** Sure Marine cabin heater **fits under the fridge.** Duda B3-12DW-20 plate is **under the sink** now (keep unless a hose path forces a move). |
| Water Flow Tank (5 L expansion/header) | **In sofa-bed backrest (high)**; Isotemp under the bench lower — same stack, different heights. Prefer driver side with Isotemp. Fill/bleed through hinged/removable backrest. Top of WFT = highest circulating glycol point—verify after framing. |
| Blue Sea 12 V distribution block | **On van** (owner). Likely feed point for fused hydronic branches—confirm which circuits and fuse sizes later. |

---

## Rip out the bed?

**Owner decision:** the current bed is **coming out entirely.** Rebuild to meet HOLD S: night flat sleep deck; day **outboard → seat back** / **inboard → seat butt**; Isotemp cradle with restraint; ~30 cm service space at the element end; hose/cable access without draining when panels move; wall/floor bolts into metal (via plywood hatches as needed).

---

## Materials comparison (sofa / bed structure)

### What matters here (weights)

Owner priority is **ease of access** and **ease of construction**. Isotemp empty ~35 lb; full chamber adds ~16 L (~35 lb fluid). Day panels must stay light enough to hinge or slide daily.

| Criterion | Weight | Why |
| --- | --- | --- |
| Easy to work with / revise | **35%** | Owner priority; first build; day-sofa will iterate |
| Strength / restraint | **25%** | Sleep load + Isotemp crash restraint into floor metal |
| Light (esp. day panels) | **20%** | Daily hinge/slide; payload |
| Cost | **20%** | Whole-bed all-extrusion is expensive for little gain |

Scores 1–5 (higher = better for this van). Weighted = sum(score × weight).

| Option | Easy 35% | Strong 25% | Light 20% | Cost 20% | **Weighted** |
| --- | --- | --- | --- | --- | --- |
| **A. All wood** (2× framing + plywood deck) | 5 | 4 | 2 | 5 | **4.15** |
| **B. Baltic birch furniture ply everywhere** | 4 | 4 | 3 | 3 | **3.60** |
| **C. All T-slot aluminum (80/20 / similar)** | 3 | 5 | 4 | 1 | **3.30** |
| **D. Hybrid: wood shell + Al Isotemp cradle + light day panels** | 5 | 5 | 4 | 4 | **4.55** |
| **E. Steel tube frame** | 2 | 5 | 1 | 3 | **2.75** |

Field check (FarOutRide bed-frame only): aluminum frame ~45 lb / ~$585 vs wood ~52 lb / ~$200 — ~7 lb saved for ~3× frame cost. Plywood deck dominates weight either way. All-extrusion furniture is the wrong spend for this van.

### Conclusion (locked for HOLD S)

**Build hybrid (option D):**

1. **Fixed side boxes / seat bases** — construction plywood + dimensional lumber (or Baltic birch where faces show). Quiet, cheap, familiar tools, easy to cut hatches.
2. **Isotemp cradle** — short T-slot aluminum rails or a small bolted aluminum frame, strapped to floor structure. Metal holds the tank; wood does not.
3. **Sleep / day deck** — light panels flat at night; by day **outboard → seat back**, **inboard → seat butt** (owner intent). Stay attached; no carry-out as primary. Hardware TBD; hoses never through moving panels.
4. **Walls** — keep existing plywood skins; add **access hatches** where bolts must hit metal.

**Do not** build the whole sofa in 80/20. **Do not** hang the Isotemp on hose barbs or on furniture weight alone. **Do not** glue the only service path under a fixed mattress platform.

If T-slot stock is already on the shelf, use it for the cradle and panel ledgers only—same hybrid, lower buy cost.

---

## Frame mechanisms (removable middle → day sofa)

### What Tyrah needs

- **Night:** continuous sleep surface — panels flat across the sofa/bed span  
- **Day (owner intent):** **outboard** panels become **seat backs**; **inboard** panels become **seat butts**; walk-through aisle between facing sides. Panels stay attached. Exact count / hinges / slides OPEN until measure.  
- Under/behind: Isotemp + hoses + cable stay put when panels move  

### Mechanisms (how the middle attaches)

| Mechanism | How it works | Pros | Cons | Day-sofa fit |
| --- | --- | --- | --- | --- |
| **Hinge-up (preferred candidate)** | Panel swings up against a side box or backrest | Always attached; one motion | Needs swing clearance; latch when up | Matches owner “hinge up by day” |
| **Slide (preferred candidate)** | Panel slides under a side seat or along ledgers | Stays low; no tall latch | Track must stay clean; more hardware | Matches owner “slide by day” |
| **Lift-out on ledgers** | Center deck sits on side rails; lifts straight up | Simplest hardware | Needs stash space; carry daily | Fallback only if hinge/slide fail measure |
| **Front-pull drawer / platform** | Center rolls or slides forward then lifts | Can clear a low obstacle | Track must stay clean; more hardware | Possible hybrid with slide |
| **Pin / clevis / quick pins** | Side frames stay; panel pins into sockets | Positive location | Pins must not rattle | Useful with either hinge or slide |

### Optimum construction for this van ([DEC-021](#dec-021) locked)

**Hybrid wood + aluminum, three bays:**

1. **Two fixed side boxes** — wood (or wood-skinned) seat bases, bolted to **floor** (and to wall where plywood allows a hatch to metal). These stay day and night.  
2. **Aluminum Isotemp cradle** in one side bay (prefer **not** the passenger wheel-well bay that already holds the freshwater tank)—strapped/bolted tank, coil fittings facing service aisle, ~30 cm clear in front of element end.  
3. **Sleep / day deck** — light panels on the center span: **flat at night**; day **outboard → seat back**, **inboard → seat butt** (owner). Prefer stay-attached. Hinges/tracks land on the fixed side boxes; hoses never through moving panels.  
4. **Hydronic and freshwater hoses** run in fixed bays or along the wall **behind removable plywood hatches**—never through the moving day panels.  
5. **Water Flow Tank (WFT) 5 L expansion/header** — **in the sofa-bed backrest (high)**; Isotemp stays **under the bench/bed (low)**. Same driver-side furniture stack preferred. Fill/bleed via hinged or removable backrest. Confirm WFT top is highest circulating glycol point after framing.  
6. **AC element cable** exits the Isotemp bay toward Paneltronics in a protected chase; leave slack for service.

**Do not** put the only Isotemp service path under a glued-down mattress platform.

### Attach to van (floor and wall)

| Attachment | Use |
| --- | --- |
| Floor | Through-bolt or lag into reinforced floor / known Sprinter hard points; use large fender washers; isolate aluminum from paint where needed |
| Wall | Prefer bolts into **metal** behind plywood via access hatches or through-bolted cleats—not screws into plywood alone for crash loads |
| Isotemp | Cradle to floor structure; tank straps to cradle; hoses last |

Exact Sprinter floor/wall hard-point map: still **OPEN**—measure before drilling.

---

## Plumbing to the structure (sketch)

| Fluid | From / to | Structure rule |
| --- | --- | --- |
| Freshwater | Tank (passenger wheel well) → pump → Duda → AM100-1LF → taps | Keep runs short; don’t trap under moving day panels |
| Glycol loop | Heater → cabin heater → Duda → **Isotemp coil** → return; Water Flow Tank high on return | Coil hoses below Water Flow Tank; service loops in fixed bay |
| Isotemp chamber | Static fill/vent on tank | Same mix as loop; not drinking water |
| Isotemp AC | Cable to Paneltronics **WATER HEATER** | Chase in fixed structure; dead until HOLD 9 |

---

## Decisions from Q&A

| # | Question | Answer |
| --- | --- | --- |
| 1 | Current bed keep or rip? | **Coming out entirely.** |
| 2 | Day layout when middle is out | **Revised 2026-09-20 (owner):** Night = flat sleep deck. Day intent: **outboard panels become seat backs**, **inboard panels become seat butts** (facing side seats + aisle). Exact panel count / hinges / slides still open — geometry first (see #24). |
| 3 | Isotemp bay + nearby layout | **Isotemp: driver side under bed/bench (low).** **Sure Marine:** under the fridge (Tyrah — fits). **Duda:** under the sink (as-built now). Hose routing: defer. |
| 4 | Water Flow Tank (5 L header) height | **Owner 2026-09-20:** WFT in the **sofa-bed backrest** (high); Isotemp stays **under the bench/bed lower** — same furniture stack, different heights. Top of WFT must still be highest circulating glycol point. Fill/bleed via hinged/removable backrest panel. Prefer driver-side stack with Isotemp unless framing forces otherwise. |
| 5 | Driver-side sofa back / hide Isotemp | **Superseded by #4.** Backrest’s job is the **Water Flow Tank** (access panel), not hiding the Isotemp. Isotemp service stays at the **low under-bench** face (~30 cm element clearance). Keep construction simple. |
| 6 | Blue Sea 12 V block | **On van** (owner). House 12 V distribution—hydronic master / EasyStart / fans likely feed from here or via it. Confirm which fuse positions at HOLD 4. |
| 7 | Sofa/bed materials | **Hybrid locked ([DEC-021](#dec-021)).** Wood shell + Al cradle + light ply **hinging/sliding** day panels (not carry-out as primary). |
| 8 | Paneltronics MAIN feed | **Owner 2026-09-20:** **Blue Sea 9009 rotary** selects **120 V RV shore** or **PROwatt SW 2000** into Paneltronics (diagram draft said automatic; as-built is rotary). Isotemp = “Coolant / water heater 120v” off that panel — **not** 12 V. |
| 9 | Mean Well vs Paneltronics BATTERY CHARGER | **Mean Well RPB-1600-12** fed only via its own **Blue Sea 9009** (J1772 240 V ↔ 120 V shore). **Not** through Paneltronics **BATTERY CHARGER**. Owner: both rotaries are **9009s** (confirm faceplates). |
| 10 | Inverter identity | **Xantrex PROwatt SW 2000** P/N **806-1220** (Amazon B002LGEMOQ). Diagram “SW2000” = wood-panel PROwatt SW. |
| 11 | Ground-fault cutout on Isotemp | Inverter *might*; shore **unknown**; Paneltronics has **no** GFCI. HOLD 9 verifies. |
| 12 | House battery + solar + charge | **200 Ah** battery; **650 W** solar; **Sterling 60 A** B2B; Mean Well RPB-1600-12. |
| 13 | Hot water use mix | ~**80% sinks**; showers minority — book mentions showers lightly. |
| 14 | Fan relay for SC1600B | Reference: TE **V23134-A3052-X540** or any ISO mini 12 V / ≥10 A — [DigiKey](https://www.digikey.com/en/products/detail/te-connectivity-potter-brumfield-relays/V23134-A3052-X540/6234681). |
| 15 | Cabin fans | Both **Noctua NF-F12**; voltage Low/Med/High dial (not NA-FC1); meter Low at HOLD 4. |
| 16 | First high camp | **ASAP** → altitude kit at HOLD 4 urgent. |
| 17 | Fuel tap + hose | Tap OK; hose likely run; **needs priming**. |
| 18 | Exhaust | Thinks **OK** — quick HOLD 2 look before fire. |
| 19 | Fuel pump under van | **Future work** before first fire. |
| 20 | Isotemp + Duda roles | Chamber = static glycol; Duda heats drinking water; **hot** needs pump; cold anytime. |
| 21 | Fan dial | **Book pick:** Sure Marine [**W002-912**](https://www.suremarineservice.com/Heat/System-Switches/W002-912.html) Hi/Low **no Off**, 12 V **0.52 A** (-36). Owner may already have W002-911/912 — check bag. Two Noctuas ≈ 0.28 A. |
| 22 | Master Off vs Isotemp AC | OK they are **separate** controls. |
| 23 | Isotemp factory mixer | **Unused forever.** Cap only; AM100-1LF is the tap mixer. |
| 24 | Day panels | **Owner 2026-09-20:** Prefer **outboard → seat back**, **inboard → seat butt** (details still open). Night = panels flat as sleep deck. Not carry-out. Hinge/slide hardware TBD to serve that geometry. |
| 25 | Transfer switches as-built | **Both rotary Blue Sea; both believed 9009.** One → Mean Well; one → Paneltronics. Diagram draft’s “automatic” path is obsolete. |

## 12 V heat wiring (plain)

```
House battery
   ├─(20 A fuse)──→ Hydronic D5S pins 1–2     [always hot — after-run / memory]
   │
   └─→ Blue Sea 12 V distribution (on van)
          └─→ Master switch (positive only)
                 ├─→ EasyStart Timer (7-day)     [YES — master is upstream of the timer]
                 ├─→ Fan dial → cabin fans
                 └─→ Later: thermostat / relay path (Q-022)
```

Master **Off** kills the EasyStart Timer, so the heater gets no wake signal and will not start a new heat call. Master does **not** sit on the heater’s heavy 20 A feed. Paneltronics / Isotemp AC is unrelated.

## Fan dial spec (DEC-015 / DEC-018)

**Job:** one shared control for **both Noctua NF-F12** (~0.14 A each, ~**0.28 A** together). Speed only. **On/off is master (+ later thermostat relay)** — dial must not be the only Off.

### Will a Sure Marine switch on the shelf work?

| What you likely have | Works with two Noctuas? | Notes |
| --- | --- | --- |
| **Hi/Low (computer-fan) switch** — Sure Marine family like [W002-911](https://www.suremarineservice.com/Heat/System-Switches/W002-911.html), sized by fan amps (0.52 A or ~0.95 A @ 12 V) | **Probably yes** if total draw ≤ switch rating (0.28 A is fine for the 0.52 A SKU) | Built for REAL computer-style fans. Prefer a version **without Off** ([SRC-032](#src-032)). If yours has Off, still usable: ignore Off, use only Low/High, and keep master as the lockout — or replace. |
| **3-speed defroster blower switch** (often 5 terminals: B / L / M / H / C) | **No by itself** | Expects a motor with separate Low/Med/High wires. Two Noctuas are single 12 V power pair — that switch alone does not create three speeds. |

**Shelf check (2 minutes):** count positions (Off?); count wires/terminals; any printing like W002-911 / amp rating. Meter Low (or Hi/Low low) so both fans still spin.

### Buy if you do not have a matching Hi/Low

**Book pick (Sure Marine, matches DEC-018):** [**W002-912** Hi/Low Switch for Fan Heater](https://www.suremarineservice.com/Heat/System-Switches/W002-912.html) — **no Off** position. Order the **12 V / up to 0.52 A** option (suffix **-36**). Two Noctua NF-F12 ≈ **0.28 A** combined — that SKU fits. (~$50–56)

| Sure Marine SKU | What it is | Use here? |
| --- | --- | --- |
| [**W002-912**](https://www.suremarineservice.com/Heat/System-Switches/W002-912.html) | Hi/Low, **no Off** | **Yes — preferred** |
| [W002-911](https://www.suremarineservice.com/Heat/System-Switches/W002-911.html) | Hi/Low **with Off** | OK only if you ignore Off and keep master as lockout |
| [W002-914](https://www.suremarineservice.com/Heat/System-Switches/W002-914.html) | VIMAR Hi/Low, no Off | Same job, different faceplate |
| Defroster **3-speed** switch (comes with squirrel-cage units) | Selects motor speed taps | **No** for two Noctuas alone |

Shelf check: look for **W002-911** / **W002-912** / **W002-914** on the bag, or count positions (2 vs 3 + Off).

- [x] Day intent: **outboard → seat back**, **inboard → seat butt**; aisle between facing sides (stay attached)  
- [ ] Exact panel count + hinge/slide hardware (measure; geometry above wins)  
- [x] WFT in **backrest (high)**; Isotemp **under bench (low)** — same stack; verify WFT top is highest glycol point after framing  
- [ ] Exact floor/wall bolt points  
- [ ] Which plywood panels become access hatches  
- [x] Sure Marine **under fridge** (Tyrah: fits); Duda **under sink** (as-built)  
- [ ] Hose routing (later)  
- [ ] Blue Sea fuse positions for master / EasyStart / fans  
- [x] Shore vs inverter into Paneltronics: **Blue Sea 9009 rotary** (as-built; diagram draft said automatic)
- [x] Mean Well via its own **Blue Sea 9009** (J1772 ↔ 120 V shore) — **not** Paneltronics BATTERY CHARGER
- [ ] Confirm both faceplates are **9009** (owner belief)
- [x] Inverter: **Xantrex PROwatt SW 2000** (806-1220 / B002LGEMOQ) — diagram SW2000 = PROwatt SW  
- [x] Master Off ≠ Isotemp AC — owner OK they are separate controls  
- [x] Isotemp factory mixer — **unused forever** (cap only; AM100-1LF for taps)  
- [ ] **Future work:** under-van check of **fuel pump** (confidence) + fuel hose clamps + prime before first fire  
- [ ] Q-009: ground-fault on Isotemp — inverter maybe; shore unknown; Paneltronics has **no** GFCI (owner agrees / DEC-020)  

## Scratch notes

_
