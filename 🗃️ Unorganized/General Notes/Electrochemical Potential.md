The standard electrode potential ($\text{E}^\ominus$) is expressed as the *reduction potential*. The electrochemical potential difference of a cell is then given as:

$\text{E}^\ominus_\text{cell} = \text{E}^\ominus_\text{cathode} - \text{E}^\ominus_\text{anode}$

However, the potential of the reaction at the anode is \*sometimes\* expressed as an _oxidation potential_:

$\text{E}^\ominus_\text{oxidation} = -\text{E}^\ominus_\text{reduction}$

The oxidation potential is a measure of the tendency of the reducing agent to be oxidized but does not represent the physical potential at an electrode. With this notation, the cell voltage equation is written with a plus sign.

$\text{E}^\ominus_\text{cell} = \text{E}^\ominus_\text{oxidation} + \text{E}^\ominus_\text{reduction}$

> [!NOTE] 
> **If you get confused:** basically the half-cells want to do their spontaneous reactions, whether it be oxidation or reduction. Where there is oxidation, there is a reduction too ([[redox reactions]]). So their potentials will add up to give the cell's electrochemical potential.
# Definition
The standard reduction potential ${\displaystyle E_{reduction}^{\ominus}}$ is measured under standard conditions: ==T = 298.15 K (25 °C / 77 °F), a unity activity (a = 1) for each ion participating into the reaction, a partial pressure of 1 atm (1.013 bar) for each gas taking part into the reaction, and metals in their pure state.==

The standard reduction potential ${\displaystyle E_{reduction}^{\ominus }}$ is defined relative to the standard hydrogen electrode (SHE). However, because these can also be referred to as "redox potentials", the terms "reduction potentials" and "oxidation potentials" are preferred by the IUPAC.

The two may be explicitly distinguished by the symbols ${\displaystyle E_{reduction}}$ and ${\displaystyle E_{oxidation}}$, with ${\displaystyle E_{oxidation}=-E_{reduction}}$.
# Nernst Equation
**Also cover:** Full Nernst Equation, Reaction Quotient, Equilibrium Quotient, pH

## Basics
The **reaction quotient** ($\displaystyle \text{Q}_\text{r}$), also often called the ion activity product (IAP), is the ratio between the **chemical activities** ($\displaystyle \text {a}$) of the reduced form (the reductant, $\displaystyle \text{a}_\text{reduction}$) and the oxidized form (the oxidant, $\displaystyle \text{a}_\text{oxidation}$). 

The chemical activity of a dissolved species corresponds to its true thermodynamic concentration taking into account the electrical interactions between all ions present in solution at elevated concentrations.

When the **[[chemical potential]]** of a reaction is calculated by the laws of thermodynamics, non-ideal solutions (deviating from [[Raoult's Law]]) have to be accommodated using chemical activity ($\displaystyle \text{a}$) by multiplying the **molar or molal concentration** ($\displaystyle \text{C}$) with an adjustment factor, called the **activity coefficient** ($\gamma$). 

$\displaystyle \text{a} = \text{γC}$

So, if the concentration ($\displaystyle C$, also denoted here below with square brackets [ ]) of all the dissolved species of interest are sufficiently low and that their activity coefficients are close to unity, their chemical activities can be approximated by their concentrations as commonly done when simplifying, or idealizing, a reaction for didactic purposes:

${\displaystyle Q_{r}={\frac {a_{\text{reduction}}}{a_{\text{oxidation}}}}={\frac {[\operatorname {Reductant} ]}{[\operatorname {Oxidant} ]}}}$


At chemical equilibrium, the ratio $\text{Q}_\text{r}$ of the activity of the reaction product ($\text{a}_\text{reduction}$) by the reagent activity ($\text{a}_\text{oxidation}$) is equal to the equilibrium constant $K$ of the half-reaction:

${\displaystyle K={\frac {a_{\text{reduction}}}{a_{\text{oxidation}}}}}$

## Gibbs Free Energy in Electrochemical Reactions
The standard thermodynamics also says that the actual Gibbs free energy $\displaystyle \Delta G$ is related to the free energy change under standard state $\displaystyle \Delta G^\ominus$ by the relationship:

${\displaystyle \Delta G=\Delta G^{\ominus }+RT\ln Q_{r}}$

The cell potential E associated with the electrochemical reaction is defined as the decrease in Gibbs free energy per coulomb of charge transferred, which leads to the relationship ${\displaystyle \Delta G=-\text{nFE}}$.

$\displaystyle \text{F}$ is the Faraday's constant, and it is a placeholder for *molar electric charge*, $N_Aq$, and $\displaystyle \text{z}$ is the number of electrons transferred in the half-cell reaction.

From this we can see that:

$\displaystyle \text{E} = \frac{-\Delta\text{G}}{\text{nF}}$

The standard Gibbs free energy ${\displaystyle \Delta G^{\ominus }}$ is related to the equilibrium constant K as follows:

${\displaystyle \Delta G^{\ominus }=-RT\ln {K}}$

So that would mean ${\displaystyle \Delta G=RT\ln{\frac{Q_r}{K}}}$
## Nernst Equation

By the equations above, we can calculate the cell EMF based on the concentration of reactants as:

${\displaystyle E_{\text{reduction}}=\frac{\text{RT}}{\text{nF}}\text{K}-\frac{\text{RT}}{\text{nF}}\text{Q}_\text{r}}$

$\displaystyle \Rightarrow E_{\text{reduction}}=\frac{\text{RT}}{\text{nF}}(\frac{\text{K}}{\text{Q}_\text{r}})$

The half-cell standard reduction potential ${\displaystyle E_{\text{reduction}}^{\ominus }}$ can be given by:

$\displaystyle E_{\text{reduction}}^{\ominus }\text{(V)}=-{\frac {\Delta G^{\ominus }}{nF}}$

${\displaystyle \therefore E_{\text{reduction}}=E_{\text{reduction}}^{\ominus }-\frac{\text{RT}}{\text{nF}}\text{Q}_\text{r}}$
# Electrochemical Series
Since the standard electrode potential is a strong dependency of the Nernst equation, we have to select elements with the highest electrode potential for the anode, and highest negative electrode potential for the cathode.

Elements further to the right in the periodic table achieve higher ratios here because the ionic radius of the elements decreases and the electrons are more strongly attracted to the nucleus, resulting in a higher tendency to attract electrons.

This is why transition metals like Nickel, Cobalt, Iron and Manganese are chosen for Lithium-Ion batteries. They have the highest positive electrode potential of all elements.