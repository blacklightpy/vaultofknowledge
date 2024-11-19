# Performance
Different cell chemistries perform differently. Firstly, we'll understand the basic traits of a battery's performance. 

## Charge Capacity and Voltage
A battery of a given size (mass or volume) can store a specific amount of *charge*, and the choice and size of electrodes and electrolyte will dictate the *potential difference* between them. The *charge* held is the **capacity** of the battery, and has units of Coulomb ($\text{C}$) or milliAmp-Hours ($\text{mAh}$) (since $\text{Q=It}$), and the *potential difference* sets the **nominal voltage**, which has units of Volts ($\text{V}$) or Joules/Coulomb ($\text{J/C}$).

The voltage is not fixed because as the electrochemical reaction goes on, the potential difference will shift.

The theoretical charge capacity can be calculated by considering the charge per atom of the electrode and multiplying it by the number of atoms. However the practical charge capacity will vary drastically as there are other components required too to make a battery.
## Energy Content
The capacity multiplied by the voltage will give the energy contained by the battery, in units of Watt-Hours ($\text{Wh}$) (since $\text{E=VIt}$). If we are using multiple batteries, the voltage or capacity of a single cell won't matter as we can stack up multiple batteries in series to add voltages or in parallel to add capacities.

Not to mention the infamous equation $\text{E=mc}^\text{2}$, which underlies every process, and is helpful here when you understand energy in terms of mass transfer (chemical bonding energy being an example). Not very essential, but I find that the knowledge comes in handy at times.
## Capacity and Energy per Mass or Volume
The *capacity per mass* ($\text{Q/m}$) is called the **specific charge** ($\text{mAh/kg}$), and the *energy per mass* ($\text{E/m}$) is called the **specific energy** ($\text{Wh/kg}$). The *capacity per volume* ($\text{Q/V}$) is called the **charge density** ($\text{mAh/m}^\text{3}$), and the *energy per volume* ($\text{E/V}$) is called the **energy density** ($\text{Wh/m}^\text{3}$). Specific charge and specific energy can be converted to charge and energy densities by considering the mass density ($\text{kg/m}^\text{3}$) of the battery itself.

A *Specific quantity* is also known as **gravimetric density** of that quantity and the *density of a quantity* is also known as its **volumetric density**.

**In Summary:**

| Idea | Name 1 | Name 2 | Units |
| --- | --- | --- | --- |
| $\text{Q/m}$ | Specific Charge | Gravimetric Charge Density | $\text{mAh/kg}$ |
| $\text{E/m}$ | Specific Energy | Gravimetric Energy Density | $\text{Wh/kg}$ |
| $\text{P/m}$ | Specific Power | Gravimetric Energy Density | $\text{W/kg}$ |
| $\text{Q/V}$ | Charge Density | Volumetric Charge Density | $\text{mAh/m}^\text{3}$ |
| $\text{E/V}$ | Energy Density | Volumetric Energy Density | $\text{Wh/m}^\text{3}$ |
| $\text{P/V}$ | Power Density | Volumetric Power Density | $\text{W/m}^\text{3}$ |

The theoretical specific charge capacity can be calculated by considering the molar mass of the atoms and considering the number of moles available, using it to find the weight of the electrode and dividing the theoretical charge capacity by this weight. It will also vary according to the other housing components required by the battery.

Specific Charge = Charge/Atom x Mol/Mass x Atoms/Mol
## Maximum Current and Maximum Power
A battery also has a **discharge rate**, usually specified by the *C-rating*. The C-rating tells you the maximum charge in multiples of the capacity $\text{C}$ that you can draw from the battery in an hour. For example, a C-rating of $\text{xC}$ means that you can draw $\text{xC mAh}$ of charge every hour, but since one charge cycle only has a capacity of $\text{C mAh}$, what it actually means is that the amount of current drawn should be at that rate. In other words, the battery should not be discharged faster than once every $\text{1/x}$ hours. A C-rating of $\text{C/x}$ is a short-hand for saying $\text{1/x C}$, which means the battery should not be discharged faster than once every $\text{x}$ hours.

Since C-rating is about setting the time to drain the total power, it can be used to find the **maximum current** drawable as $\text{Capacity * C-Rating}$. Multiplying that by the voltage tells you the **maximum power** of the battery (since $\text{P=VI}$).

The power is not a fixed value as the voltage and current available will vary as the battery discharges according to its *characteristic discharge curve*. It is based on this curve that a safe discharge rate is specified.
## Maximum Power Draw per Mass or Volume
With this, we can also find out the **specific power** ($\text{W/kg}$) and **power density** ($\text{W/m}^\text{3}$) of the battery too.
# Specific Charge, Energy and Power of Batteries
I didn't list nominal voltage, maximum current, maximum power and volumetric densities, because I was not concerned about them myself. It takes time to scour the web individually for each cell type and build a table, so I just lazied out for now.

==Note that the **anode** or **cathode** can have their own **specific charge**, but the specific charge of the battery will be based on the *limiting reagent*.==
## Li-Ion Batteries
| Battery Type | Specific Charge ($\text{mAh/g}$) | Specific Energy ($\text{Wh/kg}$) | Specific Power ($\text{W/kg}$) | Any Other Remarks |
| ---- | ---- | ---- | ---- | ---- |
| Li-Ion LCO |  |  |  |  |
| Li-Ion LMO |  |  |  |  |
| Li-Ion LFP |  | 160 | 200 | LMFP is LFP + Mn |
| Li-Ion NMC111 / NMC333 |  |  |  |  |
| Li-Ion NMC523/NMC532 |  |  |  |  |
| Li-Ion NMC622 |  |  |  |  |
| Li-Ion NMC811 |  |  |  |  |
| Li-Ion NCA $(\text{LiNi}_\text{0.84}\text{Co}_\text{0.12}\text{Al}_\text{0.04})$ | 200 (Theoretically: 279) |  |  |  |
| Li-Ion NCMA |  |  |  |  |
| Li-Ion LTO |  |  |  |  |
| Li-Po (Generic Chemistry) |  |  |  |  |
| Li-Ion SSB (Li-S Cathode + Graphite Anode) |  |  |  |  |
| Li-Ion SSB (NMC811 Cathode + Silicon / Lithium Anode) |  |  |  |  |
| Li-Ion SSB (Li-S Cathode + Solid Electrolyte + Silicon / Lithium Anode) |  |  |  |  |
| Li-Ion SSB (Thin Film) | 150-170 | 580-590 |  |  |
## Other Modern Batteries
| Battery Type | Specific Charge ($\text{mAh/g}$) | Specific Energy ($\text{Wh/kg}$) | Specific Power ($\text{W/kg}$) | Any Other Remarks |
| --- | --- | --- | --- | --- |
| Zinc-Air |  |  |  |  |
| Lithium-Air |  |  |  |  |
| Aluminium-Air |  |  |  |  |
| Gasoline (reference) |  |  |  |  |
## Traditional Batteries
| Battery Type | Specific Charge ($\text{mAh/g}$) | Specific Energy ($\text{Wh/kg}$) | Specific Power ($\text{W/kg}$) | Any Other Remarks |
| --- | --- | --- | --- | --- |
| Lead Acid |  |  |  |  |
| Nickel-Cadmium |  |  |  |  |
| Nickel-Metal Hydride |  |  |  |  |
