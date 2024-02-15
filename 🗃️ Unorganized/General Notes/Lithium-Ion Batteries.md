They work using a *Lithium Metal Oxide* **cathode**, which is oxidized during charging and that forms the **anode**, which is comprised of *Lithium Ions* held in place by a *Graphite (or Silicon) Lattice* and *Electrons*.

==**Exception:** *Lithium Titanate* batteries replace the *Graphite or Silicon* anode with *Titanium Oxide*.==

The **electrolyte** is made up of various Lithium salts.

The electrolyte is also protected from degradation by interaction with electrons by the formation of a *Solid Electrolyte Interface (SEI)*.
# Resources and Notes
- [A reflection on lithium-ion battery cathode chemistry | Nature Communications (Open Access)](https://www.nature.com/articles/s41467-020-15355-0): Differences between Li-Ion battery chemistries
- Overdischarging supersaturates Cobalt Oxide (in LCO) and forms Lithium Oxide, which is irreversible.
- [[Electrochemical Potential]]
## Cathode
- $\text{LiMO}$ (MO = Metal Oxide)

**Reaction During Charging:**
$\text{LiMO} \rightarrow \text{MO} + \text{Li}^+ + \text{e}^-$ ($\text{E}^\ominus = \text{1.0 V}$)
### Examples of Cathode Materials
| Battery Type | Abbreviation | Cathode |
| --- | --- | --- |
| Lithium Cobalt Oxide | LCO | $\text{LiCoO}_2$ |
| Lithium Manganese Oxide | LMO | $\text{LiMn}_2\text{O}_4$ / $\text{LiMnO}_2$ |
| Lithium Iron Phosphate | LFP | $\text{LiFePO}_4$ |
| Lithium Nickel Manganese Cobalt | NMC | $\text{LiNiMnCoO}_4$ |
| Lithium Nickel Cobalt Aluminium Oxide | NCA | $\text{LiNiCoAlO}_2$ |
| Lithium Titanate | LTO | $\text{LiMnO}_2$ (same as LMO) |

==Battery cell descriptions like NMCXYZ means NMC with proportions of Ni:Mn:Co in the ratio X:Y:Z.==
## Anode
- $\text{LiY}$ (Y=Lattice Material)

**Reaction During Charging:**
$\text{C}_6 + \text{Li}^+ + \text{e}^- \rightarrow \text{LiC}_6$ ($\text{E}^\ominus = \text{-3.05 V}$)
### Examples of Anode Materials
- $\text{LiC}_6$ (Most common, Has a charge density of 372 mAh/g)
- $\text{Li}_4\text{Ti}_5\text{O}_{12}$ (Durable, used in LTO)
- $\text{LiSi}_6$ (Solid State Li-Ion, In development, Charge density of about 3500-4200 mAh/g)
- $\text{Li (s)}$ (Solid State Li-Ion, in development, Charge density of about )
## Charging and Formation of Solid Electrolyte Interface

Basically, upon initial charging, the positive plate attracts the electrons and they move through the wires and towards the negative plate and into the anode while the Lithium ions move through the electrolyte into the anode.

The electrolyte only expects Lithium ions to pass through. If the electrons move through the electrolyte, they will react and destroy the electrolyte. But through an accidental discovery, the Lithium Ions passing through the electrolyte seemed to carry the electrolyte around it, and together with Graphite, the initial batch of Lithium ions reacted to form a protective layer called the *Solid Electrolyte Interface (SEI)*. The SEI keeps the electrons from passing through the electrolyte, while the other Lithium Ions can pass in through to the anode.

The Lithium Ions are stored in a stable concentration by the Graphite/Silicon lattice. When the potential is removed, the electrons will be stuck, wanting to move back into the cathode, but are not able to move through the electrolyte due to the SEI. During this process, a chunk of Lithium Ions are lost, however this happens at the factory and end-users will not notice a degradation in performance unless they exert it in other ways.
## Discharging
When a load is connected, the electron current flows through it to the cathode, and when an electron reaches the cathode, it also makes a Lithium Ion from the other side flow in, returning the cathode to it's original discharged state, as Lithium Metal Oxide.
# Considerations
- Overcharging is bad for the battery, and besides that, it may even explode.
- A *Constant Current-Constant Voltage (CC-CV) charger* is to be used along with a *Battery Management System (BMS)* to carefully handle charging and discharging cycles of the battery.
- A *BMS* is sometimes included in Li-Ion Battery packs, and always in Li-Po pouches.
# Variations
- *Lithium Polymer (Li-Po)* has a high specific energy.
- 
# Physical Design
The thickness and proportions of the battery are designed after careful studies and optimizations based on the industrial engineering data.