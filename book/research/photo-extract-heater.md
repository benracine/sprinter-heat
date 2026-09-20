# Photo extract — Tyrah portfolio heater stuff {#photo-extract-heater}

**Source folder:** `photos/Tyrah portfolio_ heater stuff/`  
**Extracted:** 2026-09-20  
**Status:** Build-era evidence (2018). Compare to current DEC/BOM; do not treat superseded heater-family diagrams as live design.

---

## Files

| File | What it shows |
| --- | --- |
| `20180222_133050.jpg` | **REAL** cabin fan heater (white box): one large + two smaller duct outlets; copper coil visible; “MADE IN THE USA”; marking near label area **10301** |
| `20180223_143534.jpg` | Kit layout: diesel heater body + harness, REAL air matrix, coolant circ pump, fuel dosing pump, **Star brite** PG gallon |
| `IMG-20180220-WA0002.jpg` | Schematic: **“D-5 WS HEATING SYSTEM PLUMBING LOOP”** (RIXENS ENT. INC., 2-28-02) |
| `IMG-20180402-WA0009.jpg` | Labeled parts spread: thermal storage, expansion tank, diesel heater, air HX, water plate, circ pump, fill/drain, altitude kit, antifreeze |

---

## What this confirms (and what it does not)

### Cabin air heater

- Early purchase / unboxing of a **REAL** hydronic air handler (Sure Marine–class cabin heater family).
- Outlet pattern (large + two small) matches ducted multi-zone intent.
- Serial/marking **10301** in that photo ≠ current van nameplate **16401** (book / DEC). Treat **16401** as as-built authority; **10301** is historical stock or a different unit.

### Diesel heater kit contents (2018 layout)

Visible together:

- Heater body (silver/black) with multi-pin harness  
- Fuel **dosing / metering pump**  
- Coolant **circulation pump** (black, 90° ports — kit pump; later design may use heater’s own pump only — see DEC-013)  
- **Altitude kit** bag  
- Brass **fill/drain** / isolation ball valves  
- PTFE tape / sealant  

### Thermal mass + DHW path (labeled photo)

Owner labels on `IMG-20180402…`:

| Label in photo | Maps to today’s controlled name |
| --- | --- |
| Thermal storage tank w/ electric element (Bosch-branded face in photo) | **Isotemp Slim Square 4.2 gal heat battery** lineage (electric element on AC) |
| Expansion tank (translucent, dual bottom ports) | **Water Flow Tank (WFT) 5 L** class — exact SKU may differ from early jug |
| Diesel heater | **Hydronic D5S** family on van today (not D5WS — see below) |
| Air heat exchanger | **Sure Marine / REAL cabin heater** |
| Water heat exchanger (plate) | **Duda** plate class |
| Circ pump | Circulating pump (architecture later locked to **heater’s own pump** only) |
| High altitude kit | **Altitude kit 22 1000 33 22 00** class |
| Antifreeze | Propylene glycol — early jug **Star brite BioSafe**; book fill standard is **Prestone LowTox AF555 ≤50%** ([DEC-017](#dec-017)) |

### Coolant chemistry (early)

- **Star brite** “ECO-FRIENDLY BIOSAFE” **non-toxic PG** gallon in kit photos.  
- Current authority for fill: **DEC-017** / install guide (Prestone LowTox AF555, ≤50% PG). Do not specify Star brite as the fill fluid unless owner re-confirms leftovers.

---

## Superseded schematic — D-5 WS loop

`IMG-20180220-WA0002.jpg` is a **D5WS-era** plumbing cartoon:

- Expansion / “AC back up” tank → pump → furnace → water-to-water HX → **two** fan units in series → **engine heat exchanger** → return  
- Explicit **engine loop** and **domestic water** taps on separate exchangers  
- Dimensions called out for tank, furnace, plates, fans  

**Book rule:** Hydronic II C / **D5WS** are **ruled out** ([DEC-000](#dec-000)). This van is **Hydronic D5S**, **no engine connection** ([DEC-009](#dec-009)), **one** Sure Marine cabin heater, **Duda** + **Isotemp coil**, **no second glycol pump** ([DEC-013](#dec-013)).

Use this image only as **design history** (why early notes mentioned engine / dual fans). Do not copy its loop order into part one or HOLD plumbing.

---

## Implications for the live build

1. Parts intent (diesel + air matrix + plate + storage + expansion + altitude + PG) was present by **spring 2018**.  
2. Electric element on the storage tank was planned early → supports Paneltronics **WATER HEATER** / Isotemp AC story.  
3. Dual-fan air units on the D5WS drawing ≠ current single Sure Marine under fridge.  
4. Kit circ pump in photos may be leftover or unused if DEC-013 holds — verify shelf vs van before BOM claims.

---

## Open from this folder

- [ ] Confirm whether the REAL unit in 2018 photos is the same physical unit as SN **16401** or a prior SKU  
- [ ] Confirm kit circ pump kept or discarded  
- [ ] Confirm leftover Star brite vs Prestone for first fill  
