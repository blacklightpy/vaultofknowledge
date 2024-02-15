They work using a *Lithium Metal Oxide* **cathode**, which is oxidized during charging and that forms the **anode**, which is comprised of *Lithium Ions* held in place by a *Graphite (or Silicon) Lattice* and *Electrons*.

==**Exception:** *Lithium Titanate* batteries replace the *Graphite or Silicon* anode with *Titanium Oxide*.==

The **electrolyte** is made up of various Lithium salts.

The electrolyte is also protected from degradation by interaction with electrons by the formation of a *Solid Electrolyte Interface (SEI)*.
## Resources
- [A reflection on lithium-ion battery cathode chemistry | Nature Communications (Open Access)](https://www.nature.com/articles/s41467-020-15355-0): Differences between Li-Ion battery chemistries
- [[Electrochemical Potential]]
- [[Performance of Battery Technologies]]
## Cathode
- $\text{LiMO}$ (MO = Metal Oxide)

**Reaction During Charging:**
$\text{LiMO} \rightarrow \text{MO} + \text{Li}^+ + \text{e}^-$ ($-\text{E}^\ominus = -\text{1.0 V}$)
### Examples of Cathode Materials
| Battery Type | Abbreviation | Cathode |
| --- | --- | --- |
| Lithium Cobalt Oxide | LCO | $\text{LiCoO}_2$ |
| Lithium Manganese Oxide | LMO | $\text{LiMn}_2\text{O}_4$ / $\text{LiMnO}_2$ |
| Lithium Iron Phosphate | LFP | $\text{LiFePO}_4$ |
| Lithium Nickel Manganese Cobalt | NMC | $\text{LiNiMnCoO}_4$ |
| Lithium Nickel Cobalt Aluminium Oxide | NCA | $\text{LiNiCoAlO}_2$ |
| Lithium Titanate | LTO | $\text{LiMnO}_2$ (same as LMO) |
| Lithium Sulfur (In Development) | Li-S | $\text{Li}_2\text{S}$ |

==Battery cell descriptions like NMCXYZ means NMC with proportions of Ni:Mn:Co in the ratio X:Y:Z.==
## Anode
- $\text{LiY}$ (Y=Lattice Material)

**Reaction During Charging:**
$\text{C}_6 + \text{Li}^+ + \text{e}^- \rightarrow \text{LiC}_6$ ($-\text{E}^\ominus = \text{3.05 V}$)
### Examples of Anode Materials
- $\text{LiC}_6$ (Most common, Has a charge density of 372 mAh/g)
- $\text{Li}_4\text{Ti}_5\text{O}_{12}$ (Durable, used in LTO)
- $\text{LiSi}_6$ (Used in Solid State Li-Ion, In development, Charge density of about 3500-4200 mAh/g)
- $\text{Li (s)}$ (Used in Solid State Li-Ion and Li-S Batteries, in development, Charge density of about )
## Charging and Formation of Solid Electrolyte Interface

Basically, upon initial charging, the positive plate attracts the electrons and they move through the wires and towards the negative plate and into the anode while the Lithium ions move through the electrolyte into the anode.

The electrolyte only expects Lithium ions to pass through. If the electrons move through the electrolyte, they will react and destroy the electrolyte. But through an accidental discovery, the Lithium Ions passing through the electrolyte seemed to carry the electrolyte around it, and together with Graphite, the initial batch of Lithium ions reacted to form a protective layer called the *Solid Electrolyte Interface (SEI)*. The SEI keeps the electrons from passing through the electrolyte, while the other Lithium Ions can pass in through to the anode.

The Lithium Ions are stored in a stable concentration by the Graphite/Silicon lattice. When the potential is removed, the electrons will be stuck, wanting to move back into the cathode, but are not able to move through the electrolyte due to the SEI. During this process, a chunk of Lithium Ions are lost, however this happens at the factory and end-users will not notice a degradation in performance unless they exert it in other ways.

**Reactions (the opposite of the spontaneous reaction):**
$\text{LiMO} \rightarrow \text{MO} + \text{Li}^+ + \text{e}^- (-\text{E}^\ominus_\text{cathode} = -\text{1.15 V} = -\text{E}^\ominus_\text{reduction}$) (The oxidizing agent gets forcibly oxidized)
$\text{C}_6 + \text{Li}^+ + \text{e}^- \rightarrow \text{LiC}_6$ ($-\text{E}^\ominus_\text{anode} = \text{3.05 V} = \text{E}^\ominus_\text{oxidation}$) (The reducing agent gets forcibly reduced)
$\text{E}^\ominus_\text{charger} = -\text{E}^\ominus_\text{cell} = -(\text{E}^\ominus_\text{cathode} - \text{E}^\ominus_\text{anode}) = -\text{4.2 V}$ 
## Discharging

When a load is connected, the electron current flows through it to the cathode, and when an electron reaches the cathode, it also makes a Lithium Ion from the other side flow in, returning the cathode to it's original discharged state, as Lithium Metal Oxide.

**Reactions:**
$\text{MO} + \text{Li}^+ + \text{e}^- \rightarrow \text{LiMO}$ ($\text{E}^\ominus_\text{cathode} = \text{1.15 V} = \text{E}^\ominus_\text{reduction}$) (The oxidizing agent is spontaneously reduced)
$\text{LiC}_6 \rightarrow \text{C}_6 + \text{Li}^+ + \text{e}^-$ ($\text{E}^\ominus_\text{anode} = -\text{3.05 V} = -\text{E}^\ominus_\text{oxidation}$) (The reducing agent is spontaneously oxidized)
$\text{E}^\ominus_\text{cell} = \text{E}^\ominus_\text{cathode} -\text{E}^\ominus_\text{anode} = \text{4.2 V}$ 
# Considerations
- Overcharging is bad for the battery, and besides that, it may even explode.
- A *Constant Current-Constant Voltage (CC-CV) charger* is to be used along with a *Battery Management System (BMS)* to carefully handle charging and discharging cycles of the battery.
- A *BMS* is sometimes included in Li-Ion battery packs, but they definitely should be included in any battery that combines Li-Ion cells. They are usually excluded in favour of using custom *BMSs*.
- Overdischarging supersaturates the Metal Oxide and forms Lithium Oxide, which is irreversible.
# Variations
- *Lithium Polymer (Li-Po)* has a relatively higher specific energy, and is also inflammable and can explode if it is overcharged. It uses a polymer electrolyte, but the electrode chemistry is the same as that of Li-Ion cells.
- *Solid State Batteries (SSBs)* has a much higher specific energy and is being researched on. They either use solid Lithium anode or Silicon anode to achieve these high specific energies. They may also use solid electrolytes, and are also called *All-Solid-State Batteries (ASSBs)*.
- *Lithium Sulphur (Li-S)* batteries use a *Lithium Sulphide ($\text{Li}_2\text{S}$)* cathode for its high specific energy. The cathode is coated with *Carbon* to help with electrical conductivity. During charging, the movement of *Lithium ions* cause the cathode to turn into *Sulphur ($\text{S}_8$)*. *Sulphur* is very cheap, and with its high energy density is very appealing to use for battery cells. For the anode side, *Solid Lithium* is used. One of the shortfalls of these batteries is that while *Lithium Sulphide* and *Sulphur* are non-reactive with the electrolytes, some *intermediary polysulphides* aren't, and they end up destroying the electrolytes. For this reason, sometimes a protective coating with something like *Teflon* is used at the anode side to protect the electrolytes. Electrolytes commonly used in the Li-Ion batteries, based on organic carbonates (such as Polycarbonate, Ethylene Carbonate and Diethyl Carbonate) are not compatible with *(Li-S)* batteries. They have a charge density of about 1675 $\text{mAh/g}$.
# Physical Design
The thickness and proportions of the battery are designed after careful studies and optimizations based on the industrial engineering data.
## Form Factors
- Wrapped Cylindrical Cell (18560, etc.)
- Pouch (used in Phones)
- Cuboid (Li-Po)
- Box (Stacked Li-Ion Cells, used in EVs)