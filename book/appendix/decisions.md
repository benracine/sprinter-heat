# Decision Log

## DEC-000 — Heater identity confirmed: Hydronic D5S diesel heater {#dec-000}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The heater is an Eberspächer Hydronic D5S diesel heater, 12 V, order no. 25 2526 05 00 00 (per owner's original order confirmation), purchased with the Installation Kit for Hydronic II D4S/D5S and the EasyStart Timer controller. All Hydronic II C and D5WS branches in the design docs are no longer applicable — use only SRC-009 (and other Hydronic D5S diesel heater sources) for specs, wiring, fuel, exhaust, and coolant rules.
- **Reason:** Owner confirmed from original purchase record.
- **Alternatives considered:** Hydronic II C D5S (SRC-001, ruled out); Hydronic D5WS (SRC-010/SRC-011, ruled out).
- **Supporting sources:** SRC-009; SRC-023 (order line 252526050000); nameplate photo `20191117_154203.jpg`
- **Affected documents:** `01-system-requirements.md`, `02-system-architecture.md`, `03-parts-inventory.md`, `04-bom-and-missing-parts.md`, `05-mechanical-layout.md`, `06-coolant-loop.md`, `07-fuel-system.md`, `08-exhaust-and-combustion-air.md`, `09-electrical-and-controls.md`, `open-questions.md`, `research/verified-requirements.md`

## DEC-001 — Isotemp Slim Square 4.2 gal heat battery replaces Bosch buffer {#dec-001}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The Isotemp Slim Square 4.2 gal heat battery (16 L), 115 VAC / 750 W (Indel P/N 601623Q000003 / 601623QX00003) replaces the Bosch electric glycol buffer as **thermal mass** (DEC-007). It is **not** the domestic hot-water heat exchanger. Bosch is gone.
- **Reason:** Owner substitution. DHW heat transfer is the Duda B3-12DW-20 plate heat exchanger (DEC-003). The factory mixing valve on the Isotemp Slim Square 4.2 gal heat battery is **not** the DHW mixer (DEC-008).
- **Alternatives considered:** Bosch electric glycol buffer (SRC-004, withdrawn); SureCal calorifier (SRC-016, not selected); coil in the Isotemp Slim Square 4.2 gal heat battery as the DHW exchanger (not selected).
- **Supporting sources:** SRC-021, SRC-022
- **Affected documents:** `01-system-requirements.md`, `02-system-architecture.md`, `03-parts-inventory.md`, `04-bom-and-missing-parts.md`, `06-coolant-loop.md`, `09-electrical-and-controls.md`, `open-questions.md`, `research/verified-requirements.md`, `hazards.md`

## DEC-002 — Cabin control is EasyStart Timer only {#dec-002}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** Cabin control is the Eberspächer EasyStart Timer (SRC-003), not the Heatmiser DT-B/PRT-B option.
- **Reason:** Owner choice, matching the original order (SRC-023 configured EasyStart Timer).
- **Alternatives considered:** Heatmiser DT-B/PRT-B + blower (SRC-017, not selected); both (not selected).
- **Supporting sources:** SRC-003; SRC-023
- **Affected documents:** `09-electrical-and-controls.md`, `open-questions.md`

## DEC-003 — Duda B3-12DW-20 plate heat exchanger is the freshwater heat exchanger {#dec-003}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The Duda B3-12DW-20 plate heat exchanger is the glycol-to-**fresh water** heat exchanger. Domestic hot water is heated there, not in the coil in the Isotemp Slim Square 4.2 gal heat battery. The Isotemp Slim Square 4.2 gal heat battery is the thermal-mass buffer (DEC-007). Bosch is gone.
- **Reason:** Owner-confirmed 2026-09-19.
- **Alternatives considered:** coil in the Isotemp Slim Square 4.2 gal heat battery as the DHW exchanger (not selected); dropping the Duda B3-12DW-20 plate heat exchanger (not selected).
- **Supporting sources:** Owner-confirmed 2026-09-19
- **Affected documents:** `01-system-requirements.md`, `02-system-architecture.md`, `03-parts-inventory.md`, `04-bom-and-missing-parts.md`, `06-coolant-loop.md`, `open-questions.md`, `research/verified-requirements.md`, `hazards.md`

## DEC-004 — 115 VAC element on the Isotemp Slim Square 4.2 gal heat battery feeds from the Paneltronics AC panel {#dec-004}

- **Date:** 2026-09-19
- **Status:** Accepted; final Paneltronics breaker/GFCI details OPEN
- **Decision:** The Isotemp Slim Square 4.2 gal heat battery's 750 W / 115 VAC element is an active AC load in this build. Its supply lands on the vehicle's Paneltronics AC panel, not on the 12 V distribution panel. Confirm the exact Paneltronics source, breaker, GFCI/ground-fault protection, grounding/bonding, switching, and cable routing before energizing it.
- **Reason:** Owner-confirmed 2026-09-19: 115 V goes to the Paneltronics panel.
- **Alternatives considered:** Landing the element on a 12 V panel (incorrect); leaving the element permanently unwired (superseded).
- **Supporting sources:** Owner-confirmed 2026-09-19
- **Affected documents:** `09-electrical-and-controls.md`, `open-questions.md`

## DEC-005 — WFT 5 L expansion/header tank (Webasto/Espar, MPN 65288A) {#dec-005}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The independent glycol loop's expansion vessel is a WFT 5 L expansion/header tank (heatso.com, MPN 65288A; retrofit-compatible with Webasto/Eberspächer 29 2100 01 77 41), owner already has it on hand. **Not yet mounted.** Planned location is the rear bench, with the top of the tank ~20–30 in above the van floor, but this is a plan, not an as-built fact.
- **Reason:** Owner already purchased this part.
- **Alternatives considered:** None evaluated; part already on hand.
- **Supporting sources:** heatso.com product page (retrieved 2026-09-19); owner-stated planned mounting location (not yet installed)
- **Affected documents:** `05-mechanical-layout.md`, `06-coolant-loop.md`, `04-bom-and-missing-parts.md`, `open-questions.md`

## DEC-006 — High-elevation use is a design requirement {#dec-006}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The van will be used at high elevation early and often. Sustained heating above ~1500 m is in scope. Hydronic D5S diesel heater therefore requires the air-pressure / Altitude kit 22 1000 33 22 00 (also written 22.1000.33.2200) per SRC-009 p. 32. Short mountain-pass use without the kit is not the operating profile.
- **Reason:** Owner-confirmed 2026-09-19.
- **Alternatives considered:** Sea-level / below-1500 m use only (not selected).
- **Supporting sources:** Owner; SRC-009 p. 32; SRC-002
- **Affected documents:** `01-system-requirements.md`, `03-parts-inventory.md`, `04-bom-and-missing-parts.md`, `09-electrical-and-controls.md`, `open-questions.md`, `research/verified-requirements.md`, `hazards.md`

## DEC-007 — Isotemp Slim Square 4.2 gal heat battery is the thermal mass, glycol on both sides {#dec-007}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The Isotemp Slim Square 4.2 gal heat battery's ~4.2 gal / 16 L main chamber holds **static glycol/coolant mix**, not potable water — the tank never touches potable water at all (DHW is entirely the Duda B3-12DW-20 plate heat exchanger, DEC-003). The coil carries the actively **circulating** glycol from the Hydronic D5S diesel heater loop. This is the Isotemp Slim Square 4.2 gal heat battery used mostly as designed (static reservoir + coil heat exchanger), just with glycol instead of water on the static side, since there's no DHW role left for this tank to protect. Heat crosses the coil into the static glycol while the heater fires, and back out of it into the circulating glycol when the Hydronic D5S diesel heater is in pause and the pump keeps running (SRC-009 p. 31–32). The 115 VAC / 750 W element is a Paneltronics AC-panel load (DEC-004 / DEC-013); it heats the static chamber only and does not circulate glycol.
- **Reason:** Owner-stated intent 2026-09-19: keep the Isotemp Slim Square 4.2 gal heat battery mostly as designed (static reservoir + coil), but glycol on both sides avoids freeze risk from static potable water sitting unused, and matches that the tank has no DHW role left to protect. Hydronic D5S diesel heater holds only ~0.18 L in the heater (SRC-009 p. 13). Staging temperatures from SRC-009 p. 31: Power → High ~65 °C; High → Low ~80 °C; Low → Off/pause ~85 °C; restart from pause ~75 °C. Overheat restart requires coolant < 70 °C (SRC-009 p. 32). Q-020 resolved.
- **Alternatives considered:** Bosch glycol-volume buffer (withdrawn, DEC-001); Isotemp Slim Square 4.2 gal heat battery as DHW calorifier with potable water in the tank (not selected); filling the main chamber with actively circulating glycol instead of a static reservoir (considered, rejected — no efficiency gain over the coil design, and requires re-plumbing the tank's ports for full loop flow/pressure).
- **Supporting sources:** Owner; SRC-009 p. 13, 31–32; SRC-022
- **Affected documents:** `01-system-requirements.md`, `02-system-architecture.md`, `06-coolant-loop.md`, `open-questions.md`, `research/verified-requirements.md`, `hazards.md`

## DEC-008 — DHW mixing valve is a separate unit, not the Isotemp Slim Square 4.2 gal heat battery factory mixer {#dec-008}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The freshwater / DHW mixing valve is a **AM100-1LF thermostatic mixing valve**, 1/2" NPT lead-free thermostatic mixing valve, factory range 70–145°F, per owner's supplyhouse.com order confirmation. Also ordered in that shipment: two 3/4" FIP x FIP brass elbows (BRE075) and three 3/4" hose-barb x 3/4" male brass pipe adapters (G25121) for the transitions to hose. This is a **different valve** from the Isotemp Slim Square 4.2 gal heat battery factory mixer (SRC-022, 38–65°C) — do not treat that factory mixer as the tap-water mixer.
- **Reason:** Owner-confirmed 2026-09-19 via order confirmation email/photo. Van photo `photos/IMG_20200706_184257_691.jpg` (SRC-024) shows that valve already on the Duda B3-12DW-20 plate heat exchanger freshwater hot outlet.
- **Alternatives considered:** factory mixing valve on the Isotemp Slim Square 4.2 gal heat battery as the DHW mixer (not selected — and with DEC-007 that valve has no potable flow anyway, so it does no work on the Isotemp Slim Square 4.2 gal heat battery).
- **Supporting sources:** Owner supplyhouse.com order confirmation, 2026-09-19; SRC-024; SRC-025; SRC-026
- **Affected documents:** `02-system-architecture.md`, `03-parts-inventory.md`, `04-bom-and-missing-parts.md`, `06-coolant-loop.md`, `open-questions.md`, `hazards.md`, `10-installation-procedure.md`

## DEC-009 — Independent living-space glycol loop only (no engine connection) {#dec-009}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The hydronic system is an **independent living-space glycol loop**. There is **no connection** to the vehicle engine cooling system — no hose splice, no combination valve, no engine takeoff.
- **Reason:** Owner-confirmed 2026-09-19: “no engine connection.”
- **Alternatives considered:** Engine-coolant integration with inline / thermostat / 5- or 6-port combination valve (SRC-009 p. 20–23; SRC-010; SRC-008) — not selected.
- **Supporting sources:** Owner 2026-09-19
- **Affected documents:** `01-system-requirements.md`, `02-system-architecture.md`, `04-bom-and-missing-parts.md`, `06-coolant-loop.md`, `open-questions.md`, `research/verified-requirements.md`, `book/front-matter.md`

## DEC-010 — Glycol loop flow path locked: pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger → Isotemp Slim Square 4.2 gal heat battery → return {#dec-010}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The glycol loop is pure series (no manifold, no summer valve): the Hydronic D5S diesel heater's own circulating pump → Hydronic D5S diesel heater → Sure Marine cabin heater → Duda B3-12DW-20 plate heat exchanger (glycol side) → coil in the Isotemp Slim Square 4.2 gal heat battery → return to the pump, with the WFT 5 L expansion/header tank teed in at the high point on the return.
- **Reason:** Owner priority: cabin heat ("hot air") matters more day-to-day than DHW, so the Sure Marine cabin heater gets first crack at heater output. DHW (the Duda B3-12DW-20 plate heat exchanger) is placed ahead of the coil in the Isotemp Slim Square 4.2 gal heat battery so a shower always draws the hottest available fluid rather than whatever's left after the Isotemp Slim Square 4.2 gal heat battery charges — that tank's job is just storage, so it's fine to get leftover heat. Pure series (not a parallel manifold, unlike the Sure Marine cabin heater/Webasto SRC-018 reference design) was chosen because installation simplicity matters a lot to the owner; a manifold+summer-valve buys marginal thermal evenness at the cost of more fittings/joints.
- **Alternatives considered:** Sure Marine cabin heater → Isotemp Slim Square 4.2 gal heat battery → Duda B3-12DW-20 plate heat exchanger (rejected — risks the Isotemp Slim Square 4.2 gal heat battery taking a bite of heat before DHW while the Isotemp Slim Square 4.2 gal heat battery is charging); parallel manifold + summer valve per SRC-018 Webasto practice (rejected for install complexity); electrical-only mode switching instead of a plumbing summer valve (adopted — see book "what each piece does").
- **Supporting sources:** Owner 2026-09-19; SRC-018 (referenced as the alternative manifold design, not followed)
- **Affected documents:** `06-coolant-loop.md`, `open-questions.md`, `book/install-in-this-order.md`

## DEC-012 — Master switch: single Off/On hard lockout, underneath the thermostat {#dec-012}

- **Date:** 2026-09-19
- **Status:** Accepted (revised 2026-09-19 — superseded by DEC-014 on fan auto-behavior)
- **Decision:** One master 12V switch, two positions (Off/On), gates power to the EasyStart Timer, the SC1600B thermostat circuit, and the Sure Marine cabin heater circuit together. Off is a physical lockout (parked — nothing can start, regardless of cabin temperature or thermostat state). On just makes power available: within that, the SC1600B thermostat automatically calls the D5S and the fan together based on cabin temperature (DEC-014) — there is no separate manual fan on/off; the fan's own dial is **Low/Medium/High only** (no Off position) and purely sets speed once the thermostat has called for it.
- **Reason:** Owner wants cabin temperature to auto-trigger heat (DEC-014), while keeping one unambiguous hard-off for when the van is parked and unattended. A three-position dial with no Off position mirrors a car AC blower: speed is a separate, orthogonal control from whether the system is calling for heat at all.
- **Alternatives considered:** Fully manual fan (no thermostat tie) — this was the original decision, superseded 2026-09-19 once the owner clarified the SC1600B should auto-trigger the fan; a separate manual fan enable/disable switch in addition to the thermostat — rejected as redundant once the owner confirmed the thermostat alone (plus the master switch) fully covers on/off.
- **Supporting sources:** Owner 2026-09-19
- **Affected documents:** `09-electrical-and-controls.md`, `open-questions.md`, `book/install-in-this-order.md`

## DEC-013 — No separate auxiliary glycol pump; Isotemp element remains a Paneltronics AC load {#dec-013}

- **Date:** 2026-09-19
- **Status:** Accepted as withdrawal (revised 2026-09-19)
- **Decision:** There is no separate auxiliary 12 V glycol pump and no separate solar/electric circulation path. The Isotemp Slim Square 4.2 gal heat battery remains thermal mass: circulating glycol runs through the coil and static glycol sits in the chamber. The 750 W / 115 VAC element is retained as an AC heat source and is wired to the Paneltronics AC panel under DEC-004. It does not create a separate flowing glycol loop or replace the D5S's circulating pump.
- **Reason:** The extra pump, relay, and separate control path were not worth adding. The existing Paneltronics AC architecture supplies the element without adding a second glycol circulation circuit; its useful output remains limited by the static chamber's stored heat.
- **Alternatives considered:** Add a separate auxiliary 12 V glycol pump (rejected); leave the existing 115 VAC element permanently unwired (superseded); use the element as a substitute for the D5S loop pump (not selected).
- **Supporting sources:** Owner / design simplification 2026-09-19; earlier Sure Marine CM10P7 listing retained only as history
- **Affected documents:** `06-coolant-loop.md`, `09-electrical-and-controls.md`, `book/front-matter.md`, `book/install-in-this-order.md`, `book/03-living-with-it.md`, `book/01-what-this-system-does.md`


## DEC-014 — SC1600B is a room-thermostat contact into the D5S/fan, master switch remains the hard off {#dec-014}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The SC1600B Digital Thermostat (Sure Marine, order no. 531-SO193701) is a space-heating control, not a hot-water control (corrects DEC-013, which previously named it as the solar/electric assist control). It reads cabin air temperature and wires as a simple dry-contact closure into the D5S/EasyStart Timer's remote room-sensor input and into the Sure Marine cabin heater relay, in the standard Eberspacher "room thermostat" pattern: contact closes below setpoint → calls the D5S to fire and enables the fan; contact opens at setpoint → heater and fan idle down. There is no separate manual fan on/off (supersedes that part of DEC-012) — the fan's own dial is Low/Medium/High only and just sets speed while the thermostat has it enabled. The master Off/On switch (DEC-012) remains the one hard guarantee that the whole space-heat side is off — it physically removes 12V from the EasyStart Timer, SC1600B thermostat, and Sure Marine cabin heater circuits together, regardless of cabin temperature or thermostat state.
- **Reason:** Owner wants cabin temperature to automatically call for heat (not require manually starting the heater each time), while still having one unambiguous way to force everything off (e.g. when parked and unattended). A dry-contact room thermostat into the existing remote-sensor input is the standard, idiomatic way Eberspacher systems support this — no custom logic, no microcontroller, just a switch closure the heater's own control board already knows how to read. SRC-005 (owner's own D5S installation notes) independently supports this pattern (thermostat starting the blower and telling the D5S to check coolant temperature).
- **Alternatives considered:** Smart/programmable thermostat with its own relay logic (rejected — more complexity than a simple contact closure buys); tying thermostat power through the master switch only, with no separate lockout (rejected — conflates "automatic" with "guaranteed off," the two things the owner explicitly wants kept separate).
- **Supporting sources:** Owner 2026-09-19; SRC-005
- **Affected documents:** `09-electrical-and-controls.md`, `book/03-living-with-it.md`, `open-questions.md`

## DEC-015 — Sure Marine cabin heater: two Noctua NF-F12 fans, one inline 12V speed controller, PWM/tach unused {#dec-015}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** Both stock fan outlets on the Sure Marine cabin heater are replaced with **Noctua NF-F12 PWM** fans (owner has two on hand). They are wired in parallel to a single inline 12V DC fan-speed controller (rotary knob or multi-position switch) on the shared positive lead. The fans' PWM and tach wires are not used — only the two power leads. One shared control drives both fans together at multiple speed levels; they are not individually addressable. This is the same "fan dial" referenced in DEC-012/014: on/off is the thermostat's job, this dial is speed only (Low/Medium/High) — confirm the chosen controller's low end doesn't itself cut the fan fully off (Q-021).
- **Reason:** Owner wants multiple speed levels (like a car dash fan control) without per-fan complexity. A simple inline 12V speed controller is the standard, idiomatic way to vary speed for parallel-wired 12V fans without needing true PWM signal generation/wiring — fewer wires, fewer failure points, still gives continuously variable speed. Both fans draw ~0.14 A each at 12V (~0.28 A combined), trivial for any basic inline controller.
- **Alternatives considered:** True PWM signal from a PWM controller to both fans' 4th pin (rejected — more wiring, no real benefit at this scale); independent per-fan switches (rejected — owner does not need or want individual control).
- **Supporting sources:** Owner 2026-09-19; SRC-005 (blog previously replaced only one of two factory outlets with a single Noctua; this build replaces both)
- **Affected documents:** `09-electrical-and-controls.md`, `open-questions.md`

## DEC-016 — Template {#dec-016}

- **Date:** YYYY-MM-DD
- **Status:** Proposed
- **Decision:**
- **Reason:**
- **Alternatives considered:**
- **Supporting sources:**
- **Affected documents:**

## DEC-017 — Circulating fill brand: Prestone LowTox AF555 only {#dec-017}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** Fill the circulating loop and the Isotemp chamber with **one brand only**: Prestone LowTox AF555 concentrate diluted to **≤50%** propylene glycol by volume (equal parts concentrate + water is the maximum). Cap the Star brite Bio-Safe jug and do not pour it into this system.
- **Reason:** Both on-hand products are concentrates (SRC-029 / SRC-030). Inhibitor packages differ; no manufacturer mix approval. Locking one brand removes a fill-day decision. Prestone LowTox is the documented automotive PG concentrate already matched to SRC-009’s ≤50% rule.
- **Alternatives considered:** Star brite Bio-Safe only (acceptable if Prestone were unavailable — not chosen); mixing brands (rejected).
- **Supporting sources:** SRC-009, SRC-029, SRC-030, SRC-027; Q-019
- **Affected documents:** `book/install-in-this-order.md`, `book/05-the-numbers.md`, `open-questions.md`

## DEC-018 — Fan dial: voltage Low/Med/High without hard Off; NA-FC1 not used {#dec-018}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** The Sure Marine cabin-heater speed control is a **12 V voltage-style** Low/Med/High dial (or 3-speed switch) on the shared positive lead per DEC-015. Prefer a switch **without** a hard Off detent (SRC-032). **Do not** use the Noctua NA-FC1 (or any PWM-only controller) on this build unless DEC-015 is formally revised — NA-FC1 can command 0% duty and some fans stop below ~20% (SRC-034). At install, meter that the lowest detent still spins both fans (HOLD 4).
- **Reason:** Closes the Q-021 product fork before parts shopping. Matches power-leads-only wiring already locked.
- **Alternatives considered:** NA-FC1 with “no stop” mode (rejected — wrong signal path for DEC-015); switch with Off (rejected as default — Off belongs to master/thermostat).
- **Supporting sources:** SRC-032, SRC-034; DEC-015; Q-021
- **Affected documents:** `book/install-in-this-order.md`, `book/03-living-with-it.md`, `open-questions.md`

## DEC-019 — WFT relief needs a safe catch path {#dec-019}

- **Date:** 2026-09-19
- **Status:** Accepted
- **Decision:** When mounting the WFT 5 L expansion/header tank, arrange the ~1.2 bar cap so any relief discharge of hot propylene glycol goes into a **catch bottle**, drip pan, or hose to a safe exterior/garage floor path — never onto bedding, wiring, or living-space fabric. Exact bottle/hose hardware is chosen at the rear-bench mount (Q-024 hardware detail).
- **Reason:** Relief fluid is hot and pressurized. Leaving discharge “wherever” fails HAZ-003 / common sense.
- **Alternatives considered:** Free drip over the bench (rejected).
- **Supporting sources:** SRC-009 (heater ≤2.5 bar; WFT ~1.2 bar); SRC-019 (header as burp/expansion point); Q-024
- **Affected documents:** `book/install-in-this-order.md`, `open-questions.md`, `hazards.md`

## DEC-020 — Paneltronics 9972313B / face 72313: WATER HEATER branch; GFCI not on the panel {#dec-020}

- **Date:** 2026-09-19
- **Status:** Accepted (face photo confirmed; GFCI/route still open for HOLD 9)
- **Decision:** The installed Paneltronics AC panel matches wiring sheet **9972313B** (face mark **72313**): **MAIN 30 A** + labeled branches **BATTERY CHARGER**, **WATER HEATER**, **OUTLETS**, reverse-polarity LED. Land the Isotemp 750 W element (~6.5 A) on **WATER HEATER** only. This panel does **not** include GFCI/ELCI — provide ground-fault protection upstream (shore/inverter ELCI or a GFCI device) before HOLD 9. The 12 V DC panel must **never** carry the 750 W load (DEC-004).
- **Reason:** On-van face photo 2026-09-19 closes panel identity and names the element branch.
- **Alternatives considered:** Assuming GFCI is built into the panel (rejected); feeding element from 12 V (rejected — DEC-004); inventing a free unlabeled branch (rejected — WATER HEATER is labeled).
- **Supporting sources:** Face photo; SRC-038, SRC-035; DEC-004; Q-009 / Q-016
- **Affected documents:** `book/install-in-this-order.md`, `book/02-where-things-are.md`, `open-questions.md`
