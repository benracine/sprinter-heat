# Electrical and Controls

## Scope

Wire-level map for Hydronic D5S diesel heater (DEC-000) + EasyStart Timer + this van’s master / fans / Paneltronics. Do not mix D5WS 8-pin diagnosis wiring with Hydronic II EasyStart Timer wiring.

## Inputs and sources

| Source ID | Page/section | Information used |
|---|---|---|
| SRC-009 p. 13, 32–33 | Technical data / wiring / S1 | Voltage window, fuses, cable mm², S1 chambers |
| SRC-003 pp. 8–9, 17 | EasyStart Timer | −XS10/−XB10 pin table; Hydronic circuit |
| SRC-002 pp. 3–5, 8–10 | Altitude kit | Series adapter; S+ / YE Hydronic path |
| SRC-033 | SC1600L/VL guides | R–W contact limits (family; SC1600B not proven identical) |
| SRC-038 / DEC-020 | Paneltronics 9972313B | WATER HEATER branch |
| SRC-005 | Field notes | Chambers 8–9 water pump — confirmed against SRC-009 |

## Content

Part one [Controls](#controls) carries the working pin tables. Manufacturer circuit diagrams still win at the connector.

### Heater electrical envelope (Hydronic D5S — SRC-009 p. 13)

| | |
|---|---|
| Undervoltage cutout | 10.5 V |
| Overvoltage cutout | 16 V |
| Electrical, operating (without pump) | 40 / 37 / 12 W (Power / High / Low) |
| Electrical, start | 120 W |
| Water pump | <12 W · ~680 l/h @ 0.1 bar |
| Battery → heater cable | **4 mm²** if plus+minus ≤ 6 m (p. 33) |
| Main fuse | **20 A** (item 2.7) |
| Activation fuse | **5 A** (item 2.7.1) |
| Vehicle blower fuse | **25 A** (item 2.7.5) — **unused** on this van |

Emergency off: control off, pull fuse, or disconnect battery (p. 32). ≤ two off/on cycles into a fault.

### Connector S1 (SRC-009 p. 33)

| Ch | Colour | mm² | Function | This van |
|---|---|---|---|---|
| 1 | red | 2.5 | Battery + (30) | Land |
| 2 | brown | 2.5 | Battery − (31) | Land |
| 3 | black/red | 0.5 | Vehicle fan | Insulate |
| 4 | green | 1.0 | Metering pump + | Land |
| 5 | blue/white | 0.5 | JE diagnosis | Land |
| 6 | blue | 0.5 | Aux-heat criterion | Insulate unless used |
| 7 | yellow | 0.5 | Switch-on + (S+) | From EasyStart pin 6 |
| 8 | violet | 0.5 | Water pump + | Land |
| 9 | brown | 1.0 | Water pump − | Land |
| 10 | brown/green | 1.0 | Metering pump − | Land |

Seal unused chambers with filler plugs. Blower-relay kit leads (B, C, 22, 23 / E, F) unused.

### EasyStart Timer −XS10 / −XB10 (SRC-003 p. 9)

| Pin | Signal | Colour | mm² |
|---|---|---|---|
| 1 | Terminal 30 | red | 0.35 |
| 2 | Terminal 58 | grey/black | 0.22 |
| 3 | Terminal 31 | brown | 0.35 |
| 4 | Diagnosis | blue/white | 0.22 |
| 5 | DAT | violet | 0.22 |
| 6 | S+ | yellow | 0.35 |
| 7 | ADR | brown/yellow | 0.22 |
| 8 | ADR | white/red | 0.22 |
| 9 | Temp (−) | brown/white | 0.22 |
| 10 | Temp (+) | grey | 0.22 |

Insert the 5 A control fuse only after all work is complete (SRC-003). Optional factory room sensor uses pins 9–10 — not the SC1600B.

### Master switch (DEC-012)

One Off/On after the 20 A main fuse. Representative face: Sure Marine **W005-378K** System Heat / Off. Switched feed splits to EasyStart (5 A), SC1600B, and cabin-fan branch. Meter three Off cuts.

### SC1600B / fans (DEC-014; Q-022 open)

SC1600B (order 531-SO193701): R–W dry contact only; ≤1 A/terminal (SRC-033 family). No fan output on the thermostat — fans need a relay on the 12 V branch. Fan dial is Low/Med/High without hard Off (DEC-018). Until Q-022 closes against SRC-003 / SRC-009: EasyStart Timer calls only.

### Altitude kit 22 1000 33 22 00 (DEC-006)

SRC-009 p. 32: unlimited to 1500 m; stays 1500–3000 m need kit. SRC-002: series adapter on wake path; Hydronic diagrams pp. 8–10 including via S+ / YE. Confirm H-Kit and P/N (Q-015).

### Isotemp element (DEC-004 / DEC-020)

115 VAC / 750 W ≈ 6.5 A on Paneltronics **WATER HEATER** (72313 / 9972313B). Upstream GFCI/ELCI required (Q-009). Fill chamber before energizing (HOLD 9). No second glycol pump (DEC-013).

### Heatmiser + blower `[candidate only — not this build]`

SRC-017 retained for reference. Not selected.

### D5WS diagnosis `[not this heater — DEC-000]`

SRC-011 pinouts / F-codes do not apply. Use EasyStart / SRC-009 path only.

## Verification

- [ ] S1 and EasyStart pin landings match SRC-009 / SRC-003
- [ ] Unused blower chambers sealed
- [ ] Master three-branch Off proven
- [ ] 5 A activation fuse inserted last
- [ ] Q-022 documented if SC1600 auto is claimed

## Open items

- [ ] **OPEN:** Q-009, Q-015, Q-016, Q-022
- [ ] **OPEN:** Fan-branch and SC1600 fuse amp ratings (meter loads)
- [ ] **OPEN:** Exact SC1600 → EasyStart approved wake pin (do not invent)
