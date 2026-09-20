# Photo extract — Tyrah portfolio electrical

**Source folder:** `photos/Tyrah portfolio_ electrical/`  
**Extracted:** 2026-09-20  
**Status:** Working notes from image review. Promote locked facts into part one / appendix; treat build-era parts as history unless confirmed still on van.

Owner 2026-09-20: Blue Sea 12 V fuse positions for hydronic master / EasyStart / fan dial may be **full** — may need another breakout. Paneltronics-side **9009** is poorly labelled (hand-thrown shore vs inverter).

---

## Inventory of files reviewed

| File | Kind | Usefulness |
| --- | --- | --- |
| `FB_IMG_1542865718571.jpg` | AC topology diagram (same family as `photos/ac-electrical.jpg`) | High — design intent |
| `download_20181211_215128.jpg` | Earlier AC topology draft | High — shows rotary into AC panel; Mean Well off shore only |
| `Screen Shot 2017-10-04…png` | Starlight / LiFeBlue generic LiFePO4 RV diagram | Medium — reference architecture, not this van’s BOM |
| `Screen Shot 2018-07-03…png` | FarOutRide logical diagram | Medium — same *class* of system (SRC-041 family) |
| `Screen Shot 2018-09-25…png` | EVTV J1772 pinout / pilot | High — J1772 knowledge |
| `received_2152621031658335.jpeg` | Interlocked J1772 + NEMA wiring (AVC2) | High — how shore/J1772 interlock was designed |
| `FB_IMG_1542002955893.jpg` | Labeled power-bay photo (build) | High — early as-built labels |
| `20181209_193653.jpg`, `20181210_214723.jpg`, `20190514_201538.jpg`, `20190518_202731_603.jpg` | Power bay / art-panel assembly | High — hardware identities |
| `20180925_170037.jpg` | Roof cable gland | Medium — solar entry |
| `20190331_131010.jpg` | T-slot frame corner | Low — mechanical only |
| `20190331_175017.jpg` | Art panel outdoors (Tyrah) | Context — same resin face used as electrical faceplate |
| `20190409_171348.jpg`, `20190514` related inlet parts | Multi-pin connector + boat cable | Medium |
| `20191023`–`20191025` series | DUOSIDA J1772 inlet + underbody mount | High |
| `20191113_130855.jpg`, `20191116_102113.jpg` | SmartPlug 120 V shore | High |
| `20191113_164727.jpg` | Van interior during install | Medium — bay location |
| `IMG_20180619_210238_180.jpg` | LiFeBlue BMS app screenshot | Medium — battery chemistry / BMS |
| `IMG_20190403_223716_174.jpg` | Shore cord plug assembly | Low–medium |

---

## AC topology (diagrams)

### Design intent (late diagram ≈ `ac-electrical.jpg`)

**Sources**

- **J1772 Level 2** split-phase **240 V** (L1 / L2 / Ground) through a **2-pole breaker**
- **RV 30 A or standard wall** **120 V** (L1 / N / Ground) through a **2-pole breaker**
- **Xantrex SW2000** inverter (PROwatt SW 2000 on van) — L1 / N / Ground

**Two transfer paths**

1. **Blue Sea 9009** rotary: J1772 240 V ↔ 120 V shore → **Mean Well RPB-1600-12** only (not via Paneltronics **BATTERY CHARGER**)
2. Shore ↔ inverter → **120 V AC panel** (Paneltronics) → sinks: **Coolant / water heater 120v** (= Isotemp path) + **Outlets 120v**

**Diagram draft vs as-built (owner 2026-09-20):** late drawing still labels path (2) as *automatic* transfer. Owner: **both ended up rotary Blue Sea; both believed 9009s.** Label faces poorly; mark **SHORE / INVERTER** and **SHORE / J1772**.

### Earlier draft (`download_20181211_215128.jpg`)

- Single **rotary** already selecting shore vs **SW2000** into the **120 V AC panel**
- **Mean Well** fed from shore/J1772 path **after breaker**, not through the AC-panel rotary
- AC panel sinks listed: **120v charger**, **coolant / water heater**, **outlets** — confirms Isotemp-class load was planned on AC panel from early on

### J1772 interlock (`received_…jpeg` + EVTV screenshot)

- **AVC2** controller (Modular EV Power) with PROX / PILOT
- Two contactors: **240 V / 30 A** (J1772) and **120 V / 20 A** (NEMA); first energized disables the other (N.C. interlock)
- Combined output: **120 or 240 VAC to charger**
- Pins: AC L1/L2, ground, pilot, proximity
- Pilot state voltages (EVTV sheet): ~12 V not connected / ~9 V connected not ready / ~6 V ready; vehicle-side diode + 2.7 kΩ / 1.3 kΩ network

---

## Shore / charge inlets (as photographed)

| Inlet | Evidence | Notes |
| --- | --- | --- |
| **SmartPlug** 120 V shore | Interior orange body ETL 4001038; exterior chrome cover plugged with orange SmartPlug; cord ends in **NEMA 5-15P** right-angle | Driver-side body panel above black molding; white sealant at interior plate |
| **DUOSIDA DSS-EV-32S-V3** | Cap label **32A 240V AC 3S** | Mounted in grey enclosure under van (near wheel well); flexible conduit into chassis |
| Custom breakout | Grey box + metal plate with **insulated studs**; multi-conductor white jacket (red/black/white/green/yellow seen in build photos) | Supporting J1772 / high-current AC landing |

**UL 1426 “Boat Cable”** appears in connector build photos (marine-grade stranded).

---

## House DC power bay (build-era photos)

Mounting: plywood (later **Tyrah resin art face**) in **aluminum T-slot** frame — passenger-side / rear bay area in interior shots.

### Components identified in photos (build era)

| Role | Part seen | Later book status |
| --- | --- | --- |
| Inverter | **Xantrex PROwatt SW 2000** (labeled SW2000 / PROwatt) | Still on wood panel — VERIFIED class |
| House battery | **LiFeBlue LiFePO4** — annotated photo: **200 Ah** as **2 × 100 Ah** parallel | Owner still says **200 Ah** |
| Solar | **Victron SmartSolar MPPT 100\|50** | Confirm if still this model |
| Alternator charge | **Sterling** B2B (white/red) | Owner: **Sterling 60 A** |
| Shore AC→DC charger | **IOTA DLS-55 Series M** (108–132 VAC in, ~13.4 V / **55 A** out, ~900 W) | **Superseded in AC diagram by Mean Well RPB-1600-12** — confirm IOTA removed or retained |
| Battery disconnect | **Blue Sea ML-RBS** remote battery switch (yellow knob; ~500 A class / 12 V) | Confirm still present |
| DC branch fuses | **Blue Sea ST Blade** ~**12-circuit** fuse block (clear cover) | On van — hydronic may need **extra breakout** (owner) |
| High-amp positive | ~**4-position** AMI/MIDI-style fuse holder; **200 A** waterproof ignition-protected breaker; ~**40 A** breaker feeding blade block | Measure as-built |
| Monitor | Brass **shunt** on negative path (LinkPRO era) | LinkPRO on wood panel today |
| Busbars | Positive and negative stud bars (≈4–6 studs each in various photos) | Negative studs may congest before positive blade slots |

Annotated photo text: **“3 × chargers”** (Sterling + Victron + IOTA) and **“2 × draws”** toward fuse/inverter area; ML-RBS annotated roughly as preventing overcharge path issues (wording imprecise — treat as owner note, not engineering claim).

### BMS app (`IMG_20180619…`)

- 4-cell LiFePO4 pack UI: SOC example **67%**, pack ~**13.2 V**, cells ~**3.29 V** balanced
- Protections shown: HV/LV, OCC/OCD, LTD/LTC/HTD/HTC — **Standby / Perfect** in that screenshot

### Roof entry

- Dual black cables through sealed roof gland → interior (solar pair class)

---

## Implications for hydronic 12 V (HOLD 4)

1. Hydronic **always-hot** heater pins 1–2 and **master → EasyStart / fans** need fuse positions on house DC.
2. Owner: **may be out of positions** on the existing Blue Sea blade block → plan **second ST Blade breakout** (or equivalent) fed from a spare high-amp / bus stud with its own feeder breaker/fuse.
3. Do **not** land Isotemp 750 W on any 12 V breakout — AC only via Paneltronics **WATER HEATER**.
4. Before cutting hydronic feeders: photograph **current fuse labels** and open slots; record which ML-RBS / 200 A / 40 A path feeds the blade block.

---

## Reference diagrams (not this van’s BOM)

- **Starlight LiFeBlue** sheet: generic bus-bar + multi-branch fuse philosophy; absorb/float notes; storage SoC procedure — useful class reference only.
- **FarOutRide** logical diagram: solar + B2B + shore charger → house battery → fuse box + inverter → 12 V / 120 V loads — matches SRC-041 *class*.

---

## Open checks from this set

- [ ] Confirm **IOTA DLS-55** removed and **Mean Well RPB-1600-12** is the only shore/J1772 charger
- [ ] Confirm both transfer switches are **9009**; label faces
- [ ] Photograph **current** Blue Sea blade block: used vs free slots; add second breakout if needed for hydronic
- [ ] Confirm Victron **100\|50** and Sterling **60 A** still installed
- [ ] Map SmartPlug vs DUOSIDA paths to the two 9009s on the van today
- [ ] Recover 9009 position meaning from Google Photos if possible

---

## Owner Q&A tied to this folder

| # | Topic | Answer |
| --- | --- | --- |
| 25–26 | Transfers / labels | Both rotary Blue Sea (~9009); Paneltronics one poorly labelled |
| 27 | Fuse positions for master / EasyStart / fans | **May be full** — likely need **another breakout** |
