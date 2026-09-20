# Isotemp value study {#isotemp-value-study}

## Why this note exists

Most van guidance sizes **air** heaters (Airtronic D2 ≈ 2 kW, D4 ≈ 4 kW). This build uses a **Hydronic D5S** whose lowest documented stage is still **2.1 kW**, plus a marine calorifier (Isotemp Slim Square) as **static glycol mass**—not as a potable tank. Owner and installer forums have long said hydronic loops without enough mass **short-cycle** badly; the 2018 design notes for this van called for roughly **8.5 gal** of thermal mass ([SRC-004](#src-004)). This build kept the idea and changed the hardware to a **4.2 gal** Isotemp with the chamber on glycol ([DEC-007](#dec-007)).

This note estimates whether that smaller chamber still earns its complexity: van heat-loss bands, stored energy, predicted starts per hour with and without the chamber, a coil-coupling factor, and what AC preheat can (and cannot) do for dish water.

**Where this sits in the book.** Day-to-day language: [User’s Guide](#users-guide) (especially [AC chamber and dishes](#ac-chamber-and-dishes)). Staging and pause/pump: [The Numbers](#the-numbers-that-matter). Architecture and finish lines: [System Design](#system-design) · [Acceptance](#acceptance). Manufacturer truth: [SRC-009](#src-009) and [SRC-022](#src-022). Isotemp coil guidance for engine-calorifier service suggests roughly **0.5 gal/min** through the coil for efficient transfer ([SRC-022](#src-022) family manuals); this loop’s heater pump is sized for the D5S minimum **250 L/h**, so treat coil UA as a measured unknown—hence the planning coupling factor below.

## Question

Does the Isotemp Slim Square 4.2 gal heat battery improve this build enough to justify keeping it, or would selling it simplify the system without giving up meaningful performance?

## Short answer

The Isotemp provides a real but limited benefit. The static chamber adds thermal mass, which can absorb surplus heat when the Hydronic D5S diesel heater is producing more heat than the cabin and domestic-hot-water loads require. The stored heat can then return through the Isotemp coil while the heater is paused or while a short demand continues.

The Isotemp does **not** make the Duda B3-12DW-20 plate heat exchanger produce hot water while the diesel heater pump is stopped. The Duda remains a flow-through exchanger. A hot tap still requires circulating glycol from the Hydronic D5S diesel heater pump. The 750 W Isotemp element can charge the static chamber, but the D5S pump must circulate glycol through the coil before that stored heat can reach the Duda.

The current evidence supports keeping the Isotemp if the priorities are quieter, steadier low-load heating and the ability to preheat the loop from available AC power. The evidence does not support keeping the Isotemp solely as an always-ready hot-water tank. The practical keep-or-sell decision should be based on measured cycling and hot-water recovery after the loop is commissioned.

## What the Isotemp adds

The Isotemp contributes three possible benefits:

1. **Thermal buffering.** The static chamber absorbs heat through the coil and returns heat to the circulating loop later. Buffering matters most when the cabin heat demand is below the D5S low output.
2. **Short holdover.** Stored heat can reduce the time between a heater pause and the next heat call, provided the pump continues to circulate and the chamber remains warmer than the loop.
3. **AC preheating.** The 750 W element can add heat while AC power is available. The element heats the static chamber; the D5S pump and the Duda plate still control delivery to the cabin and taps.

The Isotemp does not add a second pump, increase the D5S heat output, improve the Duda plate's maximum transfer rate, or make the system safe to operate with an empty chamber.

## Field benchmark for heater sizing

Insulated camper vans commonly run well on heaters near **2 kW**, while builders sometimes choose **4–5 kW** for reserve or colder use. That pattern appears across installer and owner write-ups (for example [Sparks Overland on 2 kW vs 4 kW](https://www.sparksoverland.com/post/2kw-vs-4kw-diesel-heater-for-a-van-build-why-90-of-people-should-buy-the-2kw), [Vanlife Customs](https://vanlifecustoms.com/blog/heaterintro), and Sprinter-oriented sizing notes such as [VVKB](https://www.rvheater.com/blogs/news/diesel-heater-for-sprinter-van)). Those sources are not controlled laboratory tests. Layouts, climates, windows, and leakage vary. The shared signal is still useful: a well-insulated van often has a **normal operating heat load near or below 2 kW** for part of the season.

The Hydronic D5S low stage is **2.1 kW** ([SRC-009](#src-009)). An Airtronic D2 can modulate well below that; the D5S cannot. If this van needs about 0.8–1.5 kW on an ordinary cold night, Low already has about **0.6–1.3 kW of surplus**. Without thermal mass, that surplus mostly raises loop temperature until the D5S pauses. Installer forums make the same qualitative point for hydronic vans: without enough mass, the heater short-cycles hard (for example [Sportsmobile Forum — Plumbing Espar Hydronic D5](https://www.sportsmobileforum.com/threads/plumbing-espar-hydronic-d5.750232/)). That is the physical reason a buffer can matter here even when a 2 kW air heater would simply run steady.

## Estimated heat loss from the van

The exact heat loss cannot be known until the actual van dimensions, insulation coverage, window area, outside temperature, wind, and air leakage are measured. The following estimate is a planning range for a 170-inch Sprinter with a conventional Thinsulate conversion. The estimate assumes a high-roof living space, approximately 350–500 ft² of conditioned volume, approximately 350–500 ft² of opaque insulated envelope, and approximately 45–70 ft² of windows and door glazing.

The estimate uses the kind of values commonly reported for automotive Thinsulate installations: roughly R-4 to R-6 for the effective opaque wall and ceiling assembly after metal ribs, seams, gaps, and compressed insulation are included, and roughly R-1.5 to R-2.5 for the windows and glazed doors. The effective assembly values are deliberately lower than the best-case material rating. A standard Thinsulate job does not insulate the van as continuously as a new house wall.

| Heat-loss component | Planning range at a 1°F temperature difference |
| --- | ---: |
| Opaque walls, ceiling, doors, and floor | 80–125 Btu/h·°F |
| Windows and glazed doors | 18–47 Btu/h·°F |
| Metal ribs, framing, floor edges, and other thermal bridges | 15–35 Btu/h·°F |
| Infiltration at roughly 0.3–1.0 air changes per hour | 2–9 Btu/h·°F |
| **Estimated total** | **115–216 Btu/h·°F** |

For comparison, the Hydronic D5S produces approximately 7,165 Btu/h at its 2.1 kW low stage, 17,061 Btu/h at its 5.0 kW high stage, and 17,744 Btu/h at its 5.2 kW power stage.

| Indoor temperature 70°F | Outdoor temperature | Temperature difference | Estimated van heat loss |
| --- | ---: | ---: | ---: |
| 70°F | 40°F | 30°F | 3,450–6,480 Btu/h (1.0–1.9 kW) |
| 70°F | 20°F | 50°F | 5,750–10,800 Btu/h (1.7–3.2 kW) |
| 70°F | 0°F | 70°F | 8,050–15,120 Btu/h (2.4–4.4 kW) |
| 70°F | −10°F | 80°F | 9,200–17,280 Btu/h (2.7–5.1 kW) |

These figures exclude solar gain, occupants, cooking, engine heat, and temporary door opening. Wind can increase infiltration substantially. A cold metal floor, uninsulated rear doors, or uncovered windows can move the actual result toward or beyond the high end. The estimate is therefore useful for deciding whether the heater has surplus output, not for sizing a final installation or predicting a precise warm-up time.

### What the estimate says about the Isotemp

At 40°F outside, the estimated heat loss is often below the D5S low-stage output. The Isotemp may then absorb some surplus heat and reduce short cycling. At 20°F outside, the low stage is close to the estimated demand: the Isotemp may help at the low-loss end, but the Isotemp will have little opportunity to charge at the high-loss end. At 0°F and below, the van may need most or all of the D5S high-stage output, so the Isotemp is more likely to discharge than charge.

The heat-loss estimate therefore strengthens the case for the Isotemp as a shoulder-season and moderate-cold buffer. The estimate does not support claiming a major benefit during the coldest conditions, when the heater's output is already needed by the van. The estimate also explains why an Isotemp test performed only in mild weather could overstate the benefit: mild weather creates the largest surplus available for storage.

## Energy capacity: the upper bound

The main chamber holds approximately 16 L of static glycol mix. For a first-order estimate, treat 16 L as 16 kg. The tables below use a specific heat near **4 kJ/kg·K** (water-like) so the arithmetic stays transparent. A ≤50% propylene glycol mix is closer to about **3.5–3.6 kJ/kg·K** near room temperature and rises toward roughly **3.6–3.8 kJ/kg·K** in the 60–80°C band ([Engineering Toolbox](https://www.engineeringtoolbox.com/propylene-glycol-d_363.html) and related glycol property tables). That lowers stored energy by roughly **10–15%** versus the water-like tables. Treat every kWh figure as slightly optimistic until measured.

| Temperature swing in the chamber | Stored energy (water-like \(c_p\)) | Equivalent at the D5S 2.1 kW low output |
| --- | ---: | ---: |
| 10°C / 18°F | 0.18 kWh | 5 minutes |
| 20°C / 36°F | 0.36 kWh | 10 minutes |
| 30°C / 54°F | 0.53 kWh | 15 minutes |
| 40°C / 72°F | 0.71 kWh | 20 minutes |

These are storage limits, not guaranteed delivered benefits. Heat-transfer resistance in the coil, cabin heater, Duda plate, hose flow, control logic, and temperature limits will reduce the usable amount. The AC working thermostat also caps element charging near **75°C** ([SRC-022](#src-022)). The table is a scale check, not a performance guarantee.

A 20°C chamber swing can absorb about 0.36 kWh. If the cabin and tap loads together consume only 1.0 kW while the D5S is delivering its 2.1 kW low output, the surplus is about 1.1 kW and would fill that theoretical buffer in roughly 20 minutes. If the loads consume 2.0 kW, the surplus is only about 0.1 kW and the buffer provides little additional value. If the loads exceed 2.1 kW, the buffer discharges instead of charging.

## Heater cycling

The Isotemp can reduce cycling only when all of the following conditions are true:

- The D5S is operating at its low output or is about to enter a pause.
- The cabin and domestic-hot-water loads are smaller than the heater output.
- The coil can transfer the surplus into the static chamber.
- The stored heat can later return through the coil before the next burner start.

The Isotemp cannot eliminate cycling when the system is correctly calling for more heat than the D5S can provide. The Isotemp also cannot guarantee fewer starts because the D5S control algorithm, coolant sensor location, pump behavior during pause, cabin thermostat behavior, and actual heat load determine the cycle.

A useful expectation is **longer runs and longer pauses**, not a specific percentage reduction. A buffer can reduce short burner restarts if the stored heat bridges the gap between the D5S pause temperature and the next restart temperature. The buffer can also make a low-load run less abrupt. The buffer cannot be credited with a measured reduction until the installed system is logged.

### Engineering estimate of cycling with and without the Isotemp

The following calculation takes a deliberate first stab at the question. The calculation is not a substitute for a temperature log, but it gives a useful scale for the expected effect.

**Assumptions**

- The D5S is operating at its documented 2.1 kW low output after the initial Power and High stages.
- The D5S pauses near 85°C and restarts near 75°C, giving an approximately 10°C control band ([The Numbers](#the-numbers-that-matter); [SRC-009](#src-009)). During control pause the **burner is off** and the **circulating pump keeps running**, so the coil can still exchange heat with the chamber while the flame is out.
- Loop order puts the Isotemp **last** (after cabin heater and Duda). Surplus heat hits the cabin first. The chamber mostly stores leftovers. That is intentional for daily comfort; it also caps how strongly the buffer can fight short cycling.
- The circulating loop without the Isotemp contains approximately 4–6 L in the heater, cabin heater, plate, hoses, and fittings. Use 5 L as the midpoint.
- The Isotemp adds approximately 16 L of static glycol. If the chamber follows the circulating loop closely, the combined effective mass is approximately 21 L.
- Glycol mixture specific heat is approximated as 4 kJ/kg-K, and 1 L is treated as 1 kg. Actual glycol properties, tank stratification, and coil transfer will change the result.
- During a low-stage cycle, the van heat load is treated as constant. The estimate uses 1.0, 1.5, and 2.0 kW of load. Those loads map roughly onto the heat-loss table above (cabin held at 70°F): about **40°F outside** for 1.0 kW on a better-insulated build, about **40–20°F** for 1.5 kW, and about **20°F** (or a leakier build near 40°F) for 2.0 kW. Colder than that pushes load above 2.1 kW, where this low-stage charge/pause model no longer applies.

For a 10°C control band, the thermal energy in the temperature swing is:

$$
E = m c_p \Delta T
$$

That gives approximately 0.056 kWh for a 5 L loop without the Isotemp and approximately 0.233 kWh for a 21 L loop with the Isotemp fully participating. During burner-on time, the net charging rate is $2.1 - Q_{load}$. During pause, the discharge rate is $Q_{load}$.

| Van heat load | Rough outdoor air (cabin 70°F) | Estimated cycle without Isotemp | Estimated cycle with Isotemp fully coupled | Starts/h without Isotemp | Starts/h with Isotemp |
| ---: | --- | ---: | ---: | ---: | ---: |
| 1.0 kW | ~40°F on a better-insulated build (low end of the 40°F loss band) | 3.3 min on + 3.3 min paused = 6.6 min | 14.0 min on + 14.0 min paused = 28 min | 9.1 | 2.1 |
| 1.5 kW | ~40–20°F (mid 40°F band → low 20°F band) | 5.6 min on + 2.2 min paused = 7.8 min | 23.3 min on + 9.3 min paused = 32.6 min | 7.7 | 1.8 |
| 2.0 kW | ~20°F, or a leakier build near 40°F (near D5S low-stage output) | 33.3 min on + 1.7 min paused = 35 min | 140 min on + 7.0 min paused = 147 min | 1.7 | 0.4 |

Outdoor temperatures are a **planning correlation** from the heat-loss ranges above, not a forecast for this van. Wind, windows, and floor losses can move the same outdoor temperature into a different row. At about **0°F and below**, the estimated loss is often already **above 2.1 kW**, so the D5S is no longer in a low-stage surplus cycle and this starts-per-hour table does not apply.

The 2.0 kW row is a boundary case. At a 2.0 kW load, the D5S has only 0.1 kW of surplus at low stage, so the D5S may remain at low output for a long period rather than follow a clean charge-and-pause cycle. At loads above 2.1 kW, the Isotemp cannot charge during low stage and cannot reduce cycling by storing surplus heat.

The idealized calculation predicts about three to five times longer cycles and roughly 75–80% fewer starts per hour when the Isotemp is fully coupled. Those percentages are an **upper-bound estimate**, not a claim about the installed van. The coil cannot make 16 L of static glycol behave like instantaneous circulating volume.

### Coil coupling estimate (why “fully coupled” is too rosy)

Define a coupling factor $f$ as the fraction of the 16 L chamber that effectively joins the circulating mass on the cycle timescale:

$$
m_{\mathrm{eff}} = 5 + f \cdot 16 \quad \text{(liters)}
$$

$f = 1$ is the table above. Real $f$ is lower because heat must cross the corrugated 316 SS coil, the chamber is static (stratified), and this build puts the Isotemp **last** (after the cabin heater and Duda), so coil inlet fluid is already cooler than heater outlet.

No published UA for the Slim Square coil was found. A planning estimate uses a thermal time constant $\tau = C_{\mathrm{chamber}} / UA$:

- Chamber capacitance $\approx 16\,\mathrm{kg} \times 4\,\mathrm{kJ/kg\cdot K} = 64\,\mathrm{kJ/K}$.
- Marine calorifier coils of this class are “extra long / corrugated,” but still a single pass into a tank. A plausible UA band is about **20–80 W/K** (weak stratification / low ΔT → strong well-mixed coil).
- That gives $\tau \approx 13$–$53$ minutes (mid ≈ **25–30 minutes** at ~40 W/K).

Cycle half-periods without the buffer are only about **2–6 minutes** at 1.0–1.5 kW load — much shorter than $\tau$ — so the chamber cannot stay isothermal with the loop. Power also limits coupling: at a few kelvin coil-to-chamber ΔT, $UA\cdot\Delta T$ is only a few hundred watts, while Low-stage surplus at 1.0 kW load is about **1.1 kW**. Only part of that surplus enters the chamber each minute; the rest still races the D5S sensor through the small circulating volume.

**Planning stab**

| Coupling $f$ | Meaning | Effective mass | Use as |
| ---: | --- | ---: | --- |
| 1.0 | Chamber tracks loop instantly | 21 L | Ceiling only |
| **0.35–0.50** | Mid UA (~40 W/K), Isotemp last, some stratification | **~11–13 L** | **Expected band** |
| 0.25 | Weak coil / low ΔT / air | ~9 L | Pessimistic |
| 0.55 | Strong coil, good mixing, large ΔT | ~14 L | Optimistic installed |

**Point estimate for predictions: $f \approx 0.40$** (about 40% of the chamber participates). That is a judgment call, not a measurement. Recompute $E$ and starts with $m_{\mathrm{eff}} = 11.4\,\mathrm{L}$ ($E \approx 0.127\,\mathrm{kWh}$):

| Van heat load | Rough outdoor (cabin 70°F) | Starts/h without | Starts/h at $f=1$ (ceiling) | Starts/h at $f\approx0.4$ (planning) |
| ---: | --- | ---: | ---: | ---: |
| 1.0 kW | ~40°F (better insulation) | 9.1 | 2.1 | **~4.1** |
| 1.5 kW | ~40–20°F | 7.7 | 1.8 | **~3.4** |
| 2.0 kW | ~20°F (or leaky near 40°F) | 1.7 | 0.4 | **~0.8** |

So the honest Mild-weather expectation is closer to **cutting starts roughly in half** (about **9 → 4/h** at 1.0 kW), not the 9 → 2/h ceiling. Still a large change; still depends on surplus at Low stage.

The most defensible expectation before commissioning is therefore:

- **Mild weather (~1.0 kW / ~40°F band):** planning starts drop from about **9/h to about 4/h** ($f\approx0.4$); ceiling about **2/h** if the coil were perfect.
- **Moderate cold (~1.5 kW):** planning about **8/h → 3–4/h**; ceiling about **2/h**.
- **Near 2.0 kW / ~20°F:** little surplus left; starts are already low; Isotemp helps less.
- **At or above 2.1 kW load (often ~0°F and colder on the loss table):** no Low-stage surplus to store; cycling benefit → ~0.

### Measurement plan

Measure the same operating condition with the Isotemp coil connected and, only if practical and safe, with the Isotemp bypassed according to a documented temporary test configuration. Do not disconnect or re-plumb the installed system casually.

For each test, record:

- outdoor temperature and approximate cabin temperature;
- starting coolant temperature and WFT level while cool;
- cabin fan setting and thermostat or EasyStart setting;
- heater run time, pause time, and number of starts per hour;
- supply and return temperatures near the D5S, and temperature at the Isotemp coil connections;
- whether a hot tap was opened and for how long;
- battery voltage and AC-element state.

Run at least three one-hour tests: low cabin demand, normal cabin demand, and a short hot-water draw. Compare starts per hour, burner-on minutes per hour, pause duration, and cabin-temperature variation. A convincing cycling benefit would be a repeatable reduction in starts per hour or a repeatable increase in pause duration without worse cabin comfort or slower hot-water recovery.

## Hot water on hand

The current plumbing makes the Duda plate the domestic-hot-water exchanger. The Isotemp chamber contains glycol, not drinking water. The arrangement therefore behaves in three different ways:

| Operating condition | Hot-water result |
| --- | --- |
| D5S running and pump circulating | The Duda can provide hot water continuously, subject to heater output, glycol temperature, freshwater flow, and the AM100-1LF mixer. The Isotemp is secondary thermal mass. |
| D5S paused but pump circulating | The Isotemp can contribute stored heat through the coil if the static chamber is warmer than the circulating loop. Hot-water duration depends on the actual temperature difference and heat-transfer rate. |
| AC element on, D5S off and pump stopped | The Isotemp chamber warms, but the Duda does not receive that heat. The element alone does not provide hot water at the taps. |

The Isotemp can improve convenience by allowing a preheat period before a shower or by reducing the time the diesel burner must run during a short draw. The Isotemp does not create an immediate hot-water reserve in the same way that a potable hot-water tank would. A user must start the D5S pump to move stored chamber heat through the coil and Duda.

For scale, heating 10 L of fresh water from 10°C to 40°C requires approximately 0.35 kWh before exchanger and plumbing losses. A 16 L chamber at a 30°C temperature swing contains approximately 0.53 kWh in the idealized calculation above. That amount could support one short draw in principle, but the result depends on how much of the chamber can transfer through the coil while maintaining the mixed outlet near 120°F. The study cannot claim a shower duration without measured freshwater flow and heat-transfer data.

## AC preheating

The 750 W element supplies approximately 0.75 kWh per hour before losses. Raising the full 16 L chamber by approximately 30°C would require about 0.53 kWh in the idealized calculation, or about 40–45 minutes at 750 W if all element power entered the chamber. Real heating time will be longer because of thermostat behavior, heat loss, glycol properties, and the chamber's actual usable temperature range. The working thermostat cuts the element near **75°C / 167°F**.

AC preheating is most useful when the van already has permitted AC power (shore or solar through the house electrical — [SRC-040](#src-040) / [SRC-041](#src-041)) and the user wants a short dish rinse or a shorter next diesel run. AC preheating is less compelling when the PROwatt SW inverter must supply the element from the house battery alone. A 750 W load is substantial for an inverter and battery system; conversion losses increase the required battery energy. The exact battery penalty depends on inverter efficiency and battery voltage, which are not yet measured in this build ([Q-025](#q-025)).

### Dishes after an AC charge — what to expect

Charge the chamber first. That often takes about **40–60 minutes** to reach ~**75°C** at 750 W. The taps stay cold until you run EasyStart.

Then turn the master **On**, make a short EasyStart start, and let the **pump** run. Heat moves from the chamber through the coil and the Duda to the sink. The pump always starts; the burner is separate.

If the glycol loop is still warm, the flame often stays off. Hot water at the sink usually arrives in about **30–60 seconds**. You get about **2–5 minutes** of rinse water (a few liters), then the flame lights or the water goes lukewarm.

If the glycol loop is cold, the flame almost always comes on. Hot water at the sink usually arrives in about **2–5 minutes**. The chamber shortens the diesel run; it does not skip the flame.

This is a dish rinse, not a shower. Skipping the flame requires a loop that is already warm.

## Convenience and complexity tradeoff

### Convenience gained

- A quieter and potentially steadier low-load heating pattern.
- A short thermal bridge during brief hot-water draws or burner pauses.
- The option to preheat the static chamber when AC power is already available.
- More thermal inertia during short control interruptions.

### Complexity retained

- A larger fluid volume to fill, bleed, inspect, and protect from freezing.
- A tank that must be structurally restrained on the **driver side under the new sofa/bed** and remain serviceable (favor access and simple construction).
- Additional coil fittings and hose length that can introduce air, restriction, or leaks.
- A 115 VAC element that requires a full chamber, correct grounding, upstream GFCI/ELCI protection, and a verified Paneltronics circuit.
- A system that still requires the D5S pump for hot water at the Duda plate.

The Isotemp is therefore a comfort and control component, not a required component for basic diesel cabin heat and flow-through hot water. Selling the Isotemp would simplify the loop and remove the element hazard, but would surrender the buffer and AC-preheat options. The Duda plate and AM100-1LF would remain necessary for hot water.

## Recommendation

Keep the Isotemp through initial commissioning if mounting and AC safety work remain reasonable. Do not treat the Isotemp as justified by hot-water availability alone. After commissioning, keep the Isotemp only if measured operation demonstrates at least one of these outcomes:

- fewer D5S starts per hour or materially longer pause periods during normal low-load heating;
- less cabin-temperature swing without unacceptable fan or control changes;
- a useful reduction in diesel run time after a permitted AC preheat;
- a repeatable short hot-water benefit that matters in the intended daily routine.

Sell the Isotemp if the measured system shows no meaningful cycling improvement, if the element cannot be given a properly protected AC circuit, or if the added mounting, fill, freeze protection, and inspection burden is not worth the modest holdover benefit. The current evidence justifies testing the Isotemp, but it does not justify claiming a guaranteed fuel saving, a guaranteed cycle reduction, or hot water while the D5S pump is stopped.

## Decision record {#isotemp-commissioning-log}

Update this report after commissioning with measured values. A short operating copy of the same checklist lives under [User’s Guide — Occasional checks](#occasional-checks).

| After | Record |
|---|---|
| First diesel fire (mild night) | D5S starts per hour; average burner-on and pause duration |
| Same night, chamber participating | Chamber and loop temperatures before/after a short hot-water draw |
| Dish rinse (warm loop / cold loop) | Flow rate, mixed outlet temperature, usable draw time |
| HOLD 9 AC charge | Preheat time to ~75°C; inverter draw; battery energy used |
| Ongoing | Leaks, air problems, or maintenance added by the Isotemp |

::: {.study-tldr}

## TL;DR

- **Why a buffer helps:** D5S Low is **2.1 kW**. A well-insulated van often needs **less than 2 kW** in mild/moderate cold, so Low has surplus heat to store.
- **Predicted starts/hour** (10°C band). Ceiling = chamber fully coupled ($f=1$). Planning = about **40%** of the chamber participates ($f\approx0.4$) — coil UA, stratification, and Isotemp-last loop order:

| Load | Rough outdoor (cabin 70°F) | Without | With ($f=1$) | With ($f\approx0.4$) |
| ---: | --- | ---: | ---: | ---: |
| 1.0 kW | ~40°F (better insulation) | **9.1** | **2.1** | **~4.1** |
| 1.5 kW | ~40–20°F | **7.7** | **1.8** | **~3.4** |
| 2.0 kW | ~20°F (or leaky near 40°F) | **1.7** | **0.4** | **~0.8** |

- **Storage scale:** 16 L chamber, ~10–40°C swing → about **0.18–0.71 kWh** (roughly **5–20 min** at 2.1 kW), not hours.
- **AC / solar and dishes:** Charge the chamber first. That often takes about **40–60 minutes** to reach ~**75°C**; the taps stay cold during the charge. Then turn the master **On**, make a short EasyStart start, and let the **pump** run.
  - If the glycol loop is still warm, the flame often stays off. Hot water at the sink usually arrives in about **30–60 seconds**. You get about **2–5 minutes** of rinse water, then the flame lights or the water goes lukewarm.
  - If the glycol loop is cold, the flame comes on. Hot water at the sink usually arrives in about **2–5 minutes**. The chamber helps the diesel finish faster; it does not skip the flame.
  - This is a dish rinse, not a shower.
- **Decision:** keep if logs show fewer starts / steadier cabin / useful AC preheat for short draws; sell if those numbers do not show up.

:::
