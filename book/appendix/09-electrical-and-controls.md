# Electrical and Controls

## Scope

Pin tables and fuse sizes for this van’s Hydronic D5S + EasyStart Timer + master / fans / Paneltronics. Part one [Controls](#controls) is the plain-English story. Manufacturer diagrams still win at the connector.

**Wire size note:** Eberspächer manuals list **mm²**. This book uses **AWG** for shop work. Same conductors.

| Manual (mm²) | Use (AWG) |
|---|---|
| 4.0 | **12** |
| 2.5 | **14** |
| 1.0 | **18** |
| 0.5 | **20** |
| 0.35 | **22** |
| 0.22 | **24** |

## Sources

| Source | Used for |
|---|---|
| SRC-009 pp. 13, 32–33 | Voltage window, fuses, battery cable, heater connector |
| SRC-003 pp. 8–9, 17 | EasyStart 10-pin; Hydronic circuit |
| SRC-002 pp. 3–5, 8–10 | Altitude kit adapter |
| SRC-033 | SC1600 R–W limits (family; SC1600B not proven identical) |
| SRC-038 / DEC-020 | Paneltronics WATER HEATER |
| SRC-019 | Thermostat = signal; fans need a relay |

## Heater envelope (SRC-009 p. 13)

| | |
|---|---|
| Voltage window | 10.5–16 V |
| Start / run (without pump) | ~120 W start; ~40 / 37 / 12 W Power / High / Low |
| Water pump | <12 W · ~680 L/h @ 0.1 bar |
| Battery → heater | **12 AWG** if round trip ≤ 20 ft / 6 m |
| Main fuse | **20 A** |
| EasyStart fuse | **5 A** (insert last) |
| Vehicle blower fuse | **25 A** — unused on this van |

Emergency: control off, pull fuse, or disconnect battery. ≤ two off/on cycles into a fault.

## Heater connector (SRC-009 p. 33)

Seen from the cable-inlet side.

| Pin | Colour | AWG | Function | This van |
|---|---|---|---|---|
| 1 | red | 14 | Battery + | Land |
| 2 | brown | 14 | Battery − | Land |
| 3 | black/red | 20 | Vehicle fan | **Tape off** |
| 4 | green | 18 | Metering pump + | Land |
| 5 | blue/white | 20 | Diagnosis | Land |
| 6 | blue | 20 | Aux-heat criterion | Tape off unless used |
| 7 | yellow | 20 | Wake + (S+) | From EasyStart pin 6 |
| 8 | violet | 20 | Water pump + | Land |
| 9 | brown | 18 | Water pump − | Land |
| 10 | brown/green | 18 | Metering pump − | Land |

Seal unused chambers. Kit blower-relay leads unused.

## EasyStart Timer 10-pin (SRC-003 p. 9)

| Pin | Signal | Colour | AWG |
|---|---|---|---|
| 1 | Battery + | red | 22 |
| 2 | Lighting | grey/black | 24 |
| 3 | Battery − | brown | 22 |
| 4 | Diagnosis | blue/white | 24 |
| 5 | DAT | violet | 24 |
| 6 | Wake out (S+) | yellow | 22 |
| 7 | ADR | brown/yellow | 24 |
| 8 | ADR | white/red | 24 |
| 9 | Temp − (optional sensor) | brown/white | 24 |
| 10 | Temp + (optional sensor) | grey | 24 |

Heater-side leads into this connector are **20 AWG** on red / brown / blue-white for Hydronic II (manual 0.5 mm²). Pins 9–10 are for Eberspächer’s temperature **sensor** — not the SC1600B dry contact.

## Master switch (DEC-012)

Off/On switches + to EasyStart, thermostat signal path, and fans. Heater **20 A** feed stays separate. Representative face: Sure Marine **W005-378K**.

## SC1600B / fans (Q-022 open)

SC1600B: battery-powered; R–W dry contact ≤1 A. Fans need a relay. Fan dial Low/Med/High without hard Off (DEC-018). Until Q-022 closes: EasyStart Timer calls only.

## Altitude kit 22 1000 33 22 00

Adapter on the control harness (SRC-002). High camps only (Q-015).

## Isotemp element (DEC-004 / DEC-020)

115 VAC / 750 W ≈ 6.5 A on Paneltronics **WATER HEATER**. Upstream GFCI/ELCI required (Q-009). Fill chamber before HOLD 9.

## Verification

- [ ] Heater and EasyStart pins match the tables above
- [ ] Blower leads taped off
- [ ] Master Off kills three cabin branches
- [ ] 5 A fuse inserted last
- [ ] Q-022 documented before claiming SC1600 auto

## Open

- [ ] Q-009, Q-015, Q-022
- [ ] Fan-branch and branch-B fuse amp ratings
- [ ] Approved SC1600 → heater wake landing (do not invent)
