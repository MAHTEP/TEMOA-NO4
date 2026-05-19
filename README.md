# **TEMOA-NO4**
TEMOA-NO4 is a model instance for the optimization of the regional energy system of the Northern Norway, identified as the bidding zone #4 of the country (BDZ NO4), developed within an [extended version](https://github.com/MAHTEP/TEMOA) of the [TEMOA](https://temoacloud.com/) (Tools for Energy Modeling Optimization and Analysis) modeling framework.

The model is maintained by the [MAHTEP Group](http://www.mahtep.polito.it/) at [Department of Energy](https://www.denerg.polito.it/en/) of [Politecnico di Torino](https://www.polito.it/en). For any inquiries concerning TEMOA-NO4, please contact [Alessandro Balbo](mailto:alessandro_balbo@polito.it).

The model adopts a time horizon extending up to 2050, with energy system evolution analyzed in five-year increments. It is built upon historical energy statistics from the Statistics Norway (SSB) and ENTSO-E for the base year 2019 and calibrated up to 2025 using the same sources. The model can optimize a reduced set of time periods when solving particularly complex problems to manage computational requirements.

## **Model Structure and Scope**
The overall structure of TEMOA-NO4 is depicted in Figure 1.

![](docs/RES_NO4.svg)

Figure 1. Representation of the TEMOA-NO4 energy system.

It shows the linear energy flows across different sectors, from upstream production to final consumption. The model employs a Reference Energy System (RES) framework, describing the interactions among energy carriers, technologies, and end-uses in a transparent and flexible manner.

The energy system is divided into supply-side and demand-side components. The upstream supply sector comprises primary energy production, transformation processes, and international trade. Fossil fuel extraction is limited by proved, probable, and possible reserves, while renewable potentials are constrained by resource availability. Imports and exports are represented through trade processes associated with cost assumptions.

The demand side is split into three primary sectors: buildings, industry, and transport. Each of these sectors includes multiple subsectors to capture the diversity of energy consumption patterns:

- Buildings: End-uses include space heating, space cooling, water heating, lighting, and appliances.
- Industry: Energy-intensive subsectors such as chemicals, iron and steel, non-ferrous metals, non-metallic minerals, and pulp and paper are explicitly represented.
- Transport: Passenger and freight transport demands are modeled across multiple modes, including road, rail, aviation, and navigation.

## **Supply-Side Modeling**
The upstream sector, includes fossil and renewable energy production, fuel transformation, and cross-border energy trade. Fossil fuel extraction covers coal, oil, and natural gas, with constraints reflecting available reserves. Biofuel production includes solid biomass, bioethanol, biodiesel, and biogas, with options for biomethane upgrading. Secondary production processes like natural gas liquefaction and gasification are also incorporated. Renewable energy generation potentials, including solar, wind, hydro, biomass, and geothermal, are based on external assessments.

## **Contribution**

The developing team wishes to receive help form the users in the definition and test of new test cases, in the benchmark against other established software, in the inclusion of other functionalities.
To contribute please refer to [contribution](CONTRIBUTION.md).

## **Code of Conduct**

The developing team agreed to embrace the [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md) **Code of Conduct**.
 
## **License**
TEMOA-NO4 is licensed under [![AGPL](https://www.gnu.org/graphics/agplv3-with-text-100x42.png)](LICENSE) or any other version of it.
