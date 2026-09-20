# Open Questions

## Questions for you, in order {#questions-for-you-in-order}

Answer what is still open. Skip the rest. Manuals win on how; these answers only place parts and set preferences.

**Already locked (do not re-ask):**

- Altitude kit P/N **22 1000 33 22 00** + heater **H-Kit** — confirmed; kit is in the garage → land at HOLD 4 with the EasyStart harness.
- Paneltronics **WATER HEATER** — empty; reserved for Isotemp 750 W.
- Master switch — in the garage; mount next to EasyStart at HOLD 4.

**May wait after a low-elevation diesel first fire (only these):**

- [Q-022](#q-022) — SC1600B auto call (use EasyStart until closed)
- [Q-009](#q-009) / [HOLD 9](#hold-9) — Isotemp AC path (required for complete system acceptance)

The altitude kit is **not** on that wait list.

**Still useful:**

1. **Isotemp** — Exact under-sofa bay (left/right)? Any hose path you already hate?
2. **WFT** — Exact rear-bench spot so it stays the highest glycol point?
3. **SC1600 fans** — Own a 12 V relay already, or book says “buy one”?
4. **Cabin fans** — Both Noctua NF-F12, or keep the mixed pair on the Sure Marine cabin heater?
5. **Shore / inverter GFCI** — GFCI or ELCI already upstream of Paneltronics? ([Q-009](#q-009))
6. **House electrical snapshot** — Does [SRC-040](#src-040) still match the van (battery Ah, solar W, shore charger, how PROwatt and shore meet Paneltronics)? FarOutRide ([SRC-041](#src-041)) is the class of system only.
7. **Mountains** — First high camp roughly when? (altitude kit timing only)
8. **Hot water** — Mostly sinks, or long showers? (mixer wording only)

---

| ID | Question | Why it matters | Source/owner | Blocks work? | Resolution |
|---|---|---|---|---|---|
| <span id="q-001">Q-001</span> | What heater is actually on this vehicle? | Heat flow, min coolant flow, voltage limits, wiring, and fault codes differ. | SRC-023; nameplate photo | No | **Resolved 2026-09-19 (DEC-000):** Eberspächer Hydronic D5S diesel heater, order no. **25 2526 05 00 00** (invoice SKU 252526050000), with Installation Kit for D4S/D5S and EasyStart Timer. Nameplate photo reads Hydronic II / D5S / 25 2526 / 5.2 kW / 12 V diesel / max 2.5 bar. Use **SRC-009** only. |
| <span id="q-002">Q-002</span> | Independent living-space hydronic loop or splice into engine coolant? | Architecture, BOM, and combination-valve use all change. | Owner | No | **Resolved 2026-09-19 (DEC-009):** Independent living-space glycol loop only. **No engine connection.** |
| <span id="q-003">Q-003</span> | Domestic hot water path | DHW plumbing, mixing valve, PRV | Owner | No | **Resolved 2026-09-19 (DEC-003 / DEC-008 / SRC-024 / SRC-026):** Duda B3-12DW-20 plate + AM100-1LF. Isotemp is static glycol mass only (DEC-007). |
| <span id="q-004">Q-004</span> | Cabin control: EasyStart Timer only, Heatmiser, or both? | Harness, relays, and thermostat location. | Owner / parts on hand | Partial | **Resolved 2026-09-19 (DEC-002):** EasyStart Timer only (as primary). SC1600 is optional auto call once [Q-022](#q-022) closes. |
| <span id="q-005">Q-005</span> | Vehicle platform and year? | OEM sheets apply only to those factory layouts. | Owner | Partial | **Resolved 2026-09-19:** 2017 Mercedes Sprinter 4x4, 170 wheelbase. |
| <span id="q-007">Q-007</span> | Confirm 6-port combination valve part stamp. | SRC-008 is a dealer listing. | Physical part | No | **N/A (DEC-009):** no engine splice; combination valve not in this build. |
| <span id="q-008">Q-008</span> | Is the Duda plate still in the loop, or does the Isotemp coil replace it for DHW? | Two DHW exchangers vs omitting the plate. | Owner | No | **Resolved 2026-09-19 (DEC-003 / DEC-007):** Duda is the freshwater exchanger; Isotemp chamber is static glycol mass. |
| <span id="q-009">Q-009</span> | Final Paneltronics breaker, GFCI/grounding, cable route, and element control? | 750 W ≈ 6.5 A at 115 V; never on empty chamber. | Owner / SRC-038 / SRC-040 | Yes (HOLD 9 only) | **2026-09-19 face:** Paneltronics **72313** / **9972313B** — MAIN · BATTERY CHARGER · **WATER HEATER** · OUTLETS. **WATER HEATER** empty for Isotemp. **2026-09-20:** PROwatt SW + LinkPRO on wood panel; PROwatt SW face has **dual GFCI outlets** (manufacturer). Paneltronics itself has no GFCI. HOLD 9 still needs documented cable/grounding/first energize. |
| <span id="q-010">Q-010</span> | Is the fuel tank tap-in installed correctly? | Fuel leak / fire risk before further work. | Owner / physical inspection | Yes | **Partially resolved 2026-09-19:** factory aux connection used (preferred). Still walk routing/clamps vs SRC-009 before fire (HOLD 1). |
| <span id="q-011">Q-011</span> | Glycol loop plumbing order? | Hose runs, bleed points. | Owner | No | **Resolved 2026-09-19 (DEC-010):** pump → heater → Sure Marine cabin heater → Duda → Isotemp coil → return; WFT teed on return high point. |
| <span id="q-012">Q-012</span> | Exact heater mounting height vs WFT and nearby lines? | Self-vent height; fuel-line clearance. | Owner / measurement | Partial | **Verify while mounting.** WFT still in garage; planned rear bench ~20–30 in above floor (DEC-005). |
| <span id="q-013">Q-013</span> | Is heater 12 V wiring (EasyStart, pump, altitude) finished? | What’s left before first fire. | Owner | Partial | **2026-09-19:** EasyStart **mounted** on wood panel; not fully wired. Altitude kit in garage. Pump/heater 12 V landing still open (HOLD 4). |
| <span id="q-014">Q-014</span> | Is exhaust/combustion-air routing actually compliant? | HAZ-002 CO. | Owner / physical inspection | No | **Owner believes correct.** Re-check vs SRC-009 at HOLD 2 before commissioning. |
| <span id="q-015">Q-015</span> | Is altitude kit on the van and wired? | DEC-006 high camps; do at HOLD 4. | Owner / SRC-002 / SRC-039 | Yes (high camps); preferred at HOLD 4 | **Kit P/N and H-Kit confirmed: 22 1000 33 22 00 / H-Kit. Location: garage.** Land at HOLD 4 while the EasyStart harness is open—do not defer just because a low-elevation first fire can run without it. Still open: mount, wire per SRC-002, functional check. |
| <span id="q-016">Q-016</span> | Does a 12 V panel position control the Paneltronics element circuit? | 12 V must never feed 750 W. | Owner / DEC-020 | Partial | **Raised 2026-09-19 (DEC-020):** panel is **AC-only**. Element → **WATER HEATER** branch. 12 V is never the load path. |
| <span id="q-017">Q-017</span> | Is the Isotemp coil always in the circulating loop? | Buffer only works if coil sees flow. | Owner | No | **Resolved 2026-09-19 (DEC-010):** always in series; no summer bypass. |
| <span id="q-018">Q-018</span> | What mixing valve is on the Duda hot outlet? | Scald control. | Owner / SRC-036 | No | **Resolved 2026-09-19 (DEC-008 / SRC-024 / SRC-036):** AM100-1LF. Set ~120°F: loosen → lift handwheel → turn → lock; confirm at faucet; label. |
| <span id="q-019">Q-019</span> | Glycol brand, concentrate vs premix, mix %? | SRC-009 ≤50%; no brand mix. | Owner / SDS | No | **Resolved 2026-09-19 (DEC-017):** Prestone LowTox AF555 concentrate only, ≤50%. Cap Star brite Bio-Safe for this loop. |
| <span id="q-020">Q-020</span> | Hydronic D5S Power/High/Low staging temperatures? | Cycling estimates. | SRC-009 p. 31 | No | **Resolved 2026-09-19:** Power→High ~65°C; High→Low ~80°C; pause ~85°C; restart ~75°C; overheat restart <70°C. |
| <span id="q-021">Q-021</span> | Does the fan dial’s lowest setting still spin (no hard Off)? | Owner’s guide wording; DEC-015. | DEC-018 | No | **Resolved 2026-09-19 (DEC-018):** voltage Low/Med/High **without** hard Off; NA-FC1 rejected. HOLD 4 meters that Low still spins. |
| <span id="q-022">Q-022</span> | How does SC1600B wake the heater and enable fans? | Automatic cabin heat. | SRC-019 / SRC-033 / SRC-003 | No | **2026-09-20:** Intent locked (DEC-014) — dry contact → fan relay + heater wake. **Landing open.** Do **not** use EasyStart pins 9–10 (those are for the factory temp sensor). Fans need a relay. Until tested: EasyStart Timer only. |
| <span id="q-023">Q-023</span> | What controls the withdrawn auxiliary glycol-pump circuit? | Must not reappear accidentally. | Owner | No | **N/A 2026-09-19 (DEC-013):** no auxiliary glycol pump. |
| <span id="q-024">Q-024</span> | Does the WFT ~1.2 bar relief need a drip pan / routed drain? | Hot glycol under pressure. | DEC-019 | No | **Resolved 2026-09-19 (DEC-019):** yes — catch bottle, drip pan, or hose to a safe path. Free drip over living space forbidden. |
| <span id="q-025">Q-025</span> | Does the installed house electrical still match [SRC-040](#src-040)? | Isotemp AC load planning; inverter vs shore behavior. | Owner / SRC-040 / SRC-041 | Partial (HOLD 9) | **Raised 2026-09-20.** Confirm battery Ah, solar W, shore charger, and how PROwatt SW and shore meet Paneltronics MAIN. FarOutRide ([SRC-041](#src-041)) is reference class only—do not copy its BOM. On-van faces already show LinkPRO, PROwatt SW, Paneltronics 72313. |
