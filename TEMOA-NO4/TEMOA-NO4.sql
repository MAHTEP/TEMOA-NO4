BEGIN TRANSACTION;
CREATE TABLE "regions" (
	"regions"	TEXT,
	"region_note"	TEXT,
	PRIMARY KEY("regions")
);
INSERT INTO "regions" VALUES ('NO4','Northern Norway');

CREATE TABLE "time_period_labels" (
	"t_period_labels"	text,
	"t_period_labels_desc"	text,
	PRIMARY KEY("t_period_labels")
);
INSERT INTO "time_period_labels" VALUES ('e','existing vintages');
INSERT INTO "time_period_labels" VALUES ('f','future vintages');

CREATE TABLE "time_periods" (
	"t_periods"	integer,
	"flag"	text,
	PRIMARY KEY("t_periods"),
	FOREIGN KEY("flag") REFERENCES "time_period_labels"("t_period_labels")
);
INSERT INTO "time_periods" VALUES (2019,'e');
INSERT INTO "time_periods" VALUES (2020,'f');
INSERT INTO "time_periods" VALUES (2025,'f');
INSERT INTO "time_periods" VALUES (2030,'f');
INSERT INTO "time_periods" VALUES (2035,'f');
INSERT INTO "time_periods" VALUES (2040,'f');
INSERT INTO "time_periods" VALUES (2045,'f');
INSERT INTO "time_periods" VALUES (2050,'f');
INSERT INTO "time_periods" VALUES (2055,'f');

CREATE TABLE "MyopicBaseyear" (
	"year"	real,
	"notes"	text
);

CREATE TABLE "time_season" (
	"t_season"	text,
	PRIMARY KEY("t_season")
);
INSERT INTO "time_season" VALUES ('winter'); -- January, February, March
INSERT INTO "time_season" VALUES ('spring'); -- April, May, June
INSERT INTO "time_season" VALUES ('summer'); -- July, August, September
INSERT INTO "time_season" VALUES ('fall'); -- October, November, December

CREATE TABLE "time_of_day" (
	"t_day"	text,
	PRIMARY KEY("t_day")
);
INSERT INTO "time_of_day" VALUES ('1'); --00:00/00:59
INSERT INTO "time_of_day" VALUES ('2'); --01:00/01:59
INSERT INTO "time_of_day" VALUES ('3'); --02:00/02:59
INSERT INTO "time_of_day" VALUES ('4'); --03:00/03:59
INSERT INTO "time_of_day" VALUES ('5'); --04:00/04:59
INSERT INTO "time_of_day" VALUES ('6'); --05:00/05:59
INSERT INTO "time_of_day" VALUES ('7'); --06:00/06:59
INSERT INTO "time_of_day" VALUES ('8'); --07:00/07:59
INSERT INTO "time_of_day" VALUES ('9'); --08:00/08:59
INSERT INTO "time_of_day" VALUES ('10'); --09:00/09:59
INSERT INTO "time_of_day" VALUES ('11'); --10:00/10:59
INSERT INTO "time_of_day" VALUES ('12'); --11:00/11:59
INSERT INTO "time_of_day" VALUES ('13'); --12:00/12:59
INSERT INTO "time_of_day" VALUES ('14'); --13:00/13:59
INSERT INTO "time_of_day" VALUES ('15'); --14:00/14:59
INSERT INTO "time_of_day" VALUES ('16'); --15:00/15:59
INSERT INTO "time_of_day" VALUES ('17'); --16:00/16:59
INSERT INTO "time_of_day" VALUES ('18'); --17:00/17:59
INSERT INTO "time_of_day" VALUES ('19'); --18:00/18:59
INSERT INTO "time_of_day" VALUES ('20'); --19:00/19:59
INSERT INTO "time_of_day" VALUES ('21'); --20:00/20:59
INSERT INTO "time_of_day" VALUES ('22'); --21:00/21:59
INSERT INTO "time_of_day" VALUES ('23'); --22:00/22:59
INSERT INTO "time_of_day" VALUES ('24'); --23:00/23:59

CREATE TABLE "SegFrac" (
	"season_name"	text,
	"time_of_day_name"	text,
	"segfrac"	real CHECK("segfrac" >= 0 AND "segfrac" <= 1),
	"segfrac_notes"	text,
	PRIMARY KEY("season_name","time_of_day_name"),
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day")
);
INSERT INTO "SegFrac" VALUES ('winter','1',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','2',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','3',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','4',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','5',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','6',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','7',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','8',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','9',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','10',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','11',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','12',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','13',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','14',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','15',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','16',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','17',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','18',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','19',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','20',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','21',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','22',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','23',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('winter','24',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','1',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','2',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','3',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','4',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','5',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','6',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','7',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','8',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','9',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','10',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','11',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','12',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','13',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','14',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','15',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','16',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','17',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','18',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','19',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','20',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','21',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','22',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','23',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('spring','24',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','1',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','2',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','3',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','4',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','5',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','6',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','7',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','8',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','9',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','10',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','11',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','12',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','13',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','14',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','15',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','16',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','17',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','18',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','19',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','20',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','21',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','22',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','23',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('summer','24',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','1',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','2',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','3',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','4',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','5',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','6',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','7',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','8',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','9',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','10',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','11',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','12',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','13',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','14',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','15',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','16',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','17',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','18',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','19',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','20',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','21',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','22',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','23',0.01041666666666666666666666666667,'');
INSERT INTO "SegFrac" VALUES ('fall','24',0.01041666666666666666666666666667,'');

CREATE TABLE "sector_labels" (
	"sector"	text,
	PRIMARY KEY("sector")
);
INSERT INTO "sector_labels" VALUES ('BUI');
INSERT INTO "sector_labels" VALUES ('IND');
INSERT INTO "sector_labels" VALUES ('ELC');
INSERT INTO "sector_labels" VALUES ('DIH');
INSERT INTO "sector_labels" VALUES ('TRA');
INSERT INTO "sector_labels" VALUES ('UPS');
INSERT INTO "sector_labels" VALUES ('H2');
INSERT INTO "sector_labels" VALUES ('CCUS');
INSERT INTO "sector_labels" VALUES ('STG');

CREATE TABLE "technology_labels" (
	"tech_labels"	text,
	"tech_labels_desc"	text,
	PRIMARY KEY("tech_labels")
);
INSERT INTO "technology_labels" VALUES ('r','resource technology');
INSERT INTO "technology_labels" VALUES ('p','production technology');
INSERT INTO "technology_labels" VALUES ('pb','baseload production technology');
INSERT INTO "technology_labels" VALUES ('ps','storage production technology');

CREATE TABLE "technologies" (
	"tech"	text,
	"flag"	text,
	"sector"	text,
	"tech_desc"	text,
	"tech_category"	text,
	PRIMARY KEY("tech"),
	FOREIGN KEY("flag") REFERENCES "technology_labels"("tech_labels"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector")
);
-- Buildings sector
-- Fuel technologies
INSERT INTO "technologies" VALUES ('BUI_FT_DSB','p','BUI','Fuel Technology - Diesel blending','');
INSERT INTO "technologies" VALUES ('BUI_FT_DIH','p','BUI','Fuel Technology - District heating','');
INSERT INTO "technologies" VALUES ('BUI_FT_ELC','p','BUI','Fuel Technology - Electricity','');
INSERT INTO "technologies" VALUES ('BUI_FT_GEO','p','BUI','Fuel Technology - Geothermal','');
INSERT INTO "technologies" VALUES ('BUI_FT_NGA','p','BUI','Fuel Technology - Natural gas','');
INSERT INTO "technologies" VALUES ('BUI_FT_WOO','p','BUI','Fuel Technology - Wood','');
-- Production technologies
INSERT INTO "technologies" VALUES ('BUI_SC_ROO','p','BUI','Space cooling - Air conditioning single room','');
INSERT INTO "technologies" VALUES ('BUI_SC_AHP','p','BUI','Space cooling - Air coupled heat pump','');
INSERT INTO "technologies" VALUES ('BUI_SH_DSB','p','BUI','Space heating - Diesel heater','');
INSERT INTO "technologies" VALUES ('BUI_SH_ELC','p','BUI','Space heating - Electric heater','');
INSERT INTO "technologies" VALUES ('BUI_SH_AHP','p','BUI','Space heating - Air coupled Heat pump','');
INSERT INTO "technologies" VALUES ('BUI_SH_CEN','p','BUI','Space heating - Centralized','');
INSERT INTO "technologies" VALUES ('BUI_SH_DIH','p','BUI','Space heating - District heating','');
INSERT INTO "technologies" VALUES ('BUI_SH_WST','p','BUI','Space heating - Wood stove','');
INSERT INTO "technologies" VALUES ('BUI_SH_WPL','p','BUI','Space heating - Wood pellet','');
INSERT INTO "technologies" VALUES ('BUI_SH_GEO','p','BUI','Space heating - Geothermal heat pump','');
INSERT INTO "technologies" VALUES ('BUI_WH_ELC','p','BUI','Water heating - Electric boiler','');
INSERT INTO "technologies" VALUES ('BUI_WH_DIH','p','BUI','Water heating - District heating','');
INSERT INTO "technologies" VALUES ('BUI_WH_WPL','p','BUI','Water heating - Wood pellet','');
INSERT INTO "technologies" VALUES ('BUI_WH_NGA','p','BUI','Water heating - Natural gas boiler','');
INSERT INTO "technologies" VALUES ('BUI_WH_AHP','p','BUI','Water heating - Air coupled heat pump','');
INSERT INTO "technologies" VALUES ('BUI_AL_ELA','p','BUI','All electric appliances class A','');
INSERT INTO "technologies" VALUES ('BUI_AL_ELB','p','BUI','All electric appliances class B','');
INSERT INTO "technologies" VALUES ('BUI_AL_ELC','p','BUI','All electric appliances class C','');
-- Industry sector
-- Fuel technologies
INSERT INTO "technologies" VALUES ('IND_FT_ELC','p','IND','Fuel Technology - Electricity','');
INSERT INTO "technologies" VALUES ('IND_FT_DIH','p','IND','Fuel Technology - District heating','');
INSERT INTO "technologies" VALUES ('IND_FT_OIL','p','IND','Fuel Technology - Petroleum products','');
INSERT INTO "technologies" VALUES ('IND_FT_NGA','p','IND','Fuel Technology - Natural gas','');
INSERT INTO "technologies" VALUES ('IND_FT_COA','p','IND','Fuel Technology - Coal','');
INSERT INTO "technologies" VALUES ('IND_FT_WST','p','IND','Fuel Technology - Wood and wastewood','');
-- Production technologies
INSERT INTO "technologies" VALUES ('IND_DH_DIH','p','IND','Space and water heating - District heating','');
INSERT INTO "technologies" VALUES ('IND_MIN_PRO','p','IND','Mining and quarrying','');
INSERT INTO "technologies" VALUES ('IND_FeB_PRO','p','IND','Food and beverages','');
INSERT INTO "technologies" VALUES ('IND_TEX_PRO','p','IND','Textiles','');
INSERT INTO "technologies" VALUES ('IND_WeP_PRO','p','IND','Wood and paper','');
INSERT INTO "technologies" VALUES ('IND_PTC_PRO','p','IND','Petrochemicals','');
INSERT INTO "technologies" VALUES ('IND_MET_PRO','p','IND','Metals','');
INSERT INTO "technologies" VALUES ('IND_OTH_PRO','p','IND','Other industries','');
INSERT INTO "technologies" VALUES ('IND_NEC_PRO','p','IND','Non-energy consumption industries','');
-- Power sector
-- Fuel technologies
INSERT INTO "technologies" VALUES ('ELC_FT_HYD','p','ELC','Fuel Technology - Hydropower power plant','');
INSERT INTO "technologies" VALUES ('ELC_FT_WIN','p','ELC','Fuel Technology - Wind power plant','');
INSERT INTO "technologies" VALUES ('ELC_FT_SOL','p','ELC','Fuel Technology - Solar power plant','');
INSERT INTO "technologies" VALUES ('ELC_FT_GEO','p','ELC','Fuel Technology - Geothermal power plant','');
INSERT INTO "technologies" VALUES ('ELC_FT_NUC','p','ELC','Fuel Technology - Nuclear power plant','');
INSERT INTO "technologies" VALUES ('ELC_FT_FGA','p','ELC','Fuel Technology - Fossil gas power plant','');
INSERT INTO "technologies" VALUES ('ELC_FT_H2C','p','ELC','Fuel Technology - Hydrogen power plant','');
INSERT INTO "technologies" VALUES ('ELC_FT_BIO','p','ELC','Fuel Technology - Biomass power plant','');
-- Production technologies
INSERT INTO "technologies" VALUES ('ELC_DEM_DMY','p','ELC','Dummy for residual elc demand','');
INSERT INTO "technologies" VALUES ('ELC_WIN_ONS','p','ELC','Electricity onshore wind','');
INSERT INTO "technologies" VALUES ('ELC_WIN_OFF','p','ELC','Electricity offshore wind','');
INSERT INTO "technologies" VALUES ('ELC_GEO_HEP','p','ELC','High enthalpy geothermal plant','');
INSERT INTO "technologies" VALUES ('ELC_HYD_ROR','p','ELC','Electricity run of river','');
INSERT INTO "technologies" VALUES ('ELC_HYD_RES','p','ELC','Electricity reservoir hydropower','');
INSERT INTO "technologies" VALUES ('ELC_SOL_PHV','p','ELC','Electricity solar photovoltaic','');
INSERT INTO "technologies" VALUES ('ELC_FGA_THE','pb','ELC','Electricity thermal fossil gas','');
INSERT INTO "technologies" VALUES ('ELC_BIO_SLB','p','ELC','Electricity solid biomass','');
INSERT INTO "technologies" VALUES ('ELC_NUC_SMR','pb','ELC','Electricity small modular reactor','');
INSERT INTO "technologies" VALUES ('ELC_H2C_PEM','p','ELC','Electricity hydrogen PEM fuel cell','');
-- Import technologies
INSERT INTO "technologies" VALUES ('ELC_IMP_FIN','p','ELC','Electricity import from Finland','');
INSERT INTO "technologies" VALUES ('ELC_IMP_SWE','p','ELC','Electricity import from Sweden','');
INSERT INTO "technologies" VALUES ('ELC_IMP_NO3','p','ELC','Electricity import from NO3','');
-- Export technologies
INSERT INTO "technologies" VALUES ('ELC_EXP_FIN','p','ELC','Electricity export to Finland','');
INSERT INTO "technologies" VALUES ('ELC_EXP_SWE','p','ELC','Electricity export to Sweden','');
INSERT INTO "technologies" VALUES ('ELC_EXP_NO3','p','ELC','Electricity export to NO3','');
-- District Heating sector
-- Fuel technologies
INSERT INTO "technologies" VALUES ('DIH_FT_BIO','p','DIH','Fuel Technology - Biofuels and biogas','');
INSERT INTO "technologies" VALUES ('DIH_FT_COA','p','DIH','Fuel Technology - Coal plant','');
INSERT INTO "technologies" VALUES ('DIH_FT_OIL','p','DIH','Fuel Technology - Oil boiler','');
INSERT INTO "technologies" VALUES ('DIH_FT_ELC','p','DIH','Fuel Technology - Electric boiler','');
INSERT INTO "technologies" VALUES ('DIH_FT_FGA','p','DIH','Fuel Technology - Fossil gas',''); -- Blast Furnace gas, LPG, NGA (TABLE 3 --> https://www.ssb.no/en/energi-og-industri/energi/statistikk/fjernvarme-og-fjernkjoling)
INSERT INTO "technologies" VALUES ('DIH_FT_HEW','p','DIH','Fuel Technology - Waste heat','');
INSERT INTO "technologies" VALUES ('DIH_FT_WAS','p','DIH','Fuel Technology - Waste incineration','');
INSERT INTO "technologies" VALUES ('DIH_FT_WOO','p','DIH','Fuel Technology - Wood waste','');
-- Production technologies
INSERT INTO "technologies" VALUES ('DIH_BIO_SWH','p','DIH','District heating - Biofuels and biogas for space and water heating','');
INSERT INTO "technologies" VALUES ('DIH_COA_SWH','p','DIH','District heating - Coal plant for space and water heating','');
INSERT INTO "technologies" VALUES ('DIH_OIL_SWH','p','DIH','District heating - Oil boiler for space and water heating','');
INSERT INTO "technologies" VALUES ('DIH_ELC_SWH','p','DIH','District heating - Electric boiler for space and water heating','');
INSERT INTO "technologies" VALUES ('DIH_FGA_SWH','p','DIH','District heating - Fossil gas for space and water heating','');
INSERT INTO "technologies" VALUES ('DIH_HEW_SWH','p','DIH','District heating - Waste heat for space and water heating','');
INSERT INTO "technologies" VALUES ('DIH_INC_SWH','p','DIH','District heating - Waste incineration for space and water heating','');
INSERT INTO "technologies" VALUES ('DIH_WOO_SWH','p','DIH','District heating - Wood waste for space and water heating','');
-- Transport sector
-- Fuel technologies
INSERT INTO "technologies" VALUES ('TRA_FT_DSB','p','TRA','Fuel Technology RE diesel (1G & 2G)','');
INSERT INTO "technologies" VALUES ('TRA_FT_GSB','p','TRA','Fuel Technology RE ethanol (1G & 2G)','');
INSERT INTO "technologies" VALUES ('TRA_FT_ELC','p','TRA','Fuel Technology Electricity','');
INSERT INTO "technologies" VALUES ('TRA_FT_H2C','p','TRA','Fuel Technology Hydrogen Compressed','');
INSERT INTO "technologies" VALUES ('TRA_FT_KER','p','TRA','Fuel Technology Kerosene','');
INSERT INTO "technologies" VALUES ('TRA_FT_SKR','p','TRA','Fuel Technology RE kerosene','');
INSERT INTO "technologies" VALUES ('TRA_FT_AVG','p','TRA','Fuel Technology Aviation gasoline','');
INSERT INTO "technologies" VALUES ('TRA_FT_MTH','p','TRA','Fuel Technology Methanol','');
INSERT INTO "technologies" VALUES ('TRA_FT_HFO','p','TRA','Fuel Technology Heavy Fuel Oil','');
INSERT INTO "technologies" VALUES ('TRA_FT_MGO','p','TRA','Fuel Technology Transport marine gas oil','');
INSERT INTO "technologies" VALUES ('TRA_FT_LNG','p','TRA','Fuel Technology Liquified natural gas','');
INSERT INTO "technologies" VALUES ('TRA_FT_DOG','p','TRA','Fuel Technology HFO & Methanol Blending','');
INSERT INTO "technologies" VALUES ('TRA_FT_AMM','p','TRA','Fuel Technology Ammonia','');
-- INSERT INTO "technologies" VALUES ('TRA_FT_NGA','p','TRA','Fuel Technology Nat. Gas','');
-- INSERT INTO "technologies" VALUES ('TRA_FT_DSL','p','TRA','Fuel Technology Diesel','');
-- INSERT INTO "technologies" VALUES ('TRA_FT_GSL','p','TRA','Fuel Technology Gasoline','');
-- INSERT INTO "technologies" VALUES ('TRA_FT_LPG','p','TRA','Fuel Technology Liquid petrol gas','');
-- INSERT INTO "technologies" VALUES ('TRA_FT_SNG','p','TRA','Fuel Technology RE Synt. Nat. Gas (1G & 2G)','');
-- PASSENGER
-- Road transport
INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_ELC','p','TRA','Cars - Electricity BEV','');
INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_DSB','p','TRA','Cars - Diesel Engine - E-fuel','');
INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_GSB','p','TRA','Cars - Otto Engine - E-fuel','');
INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_GHY','p','TRA','Cars - Hybrid GSB/ELC Vehicle','');
INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_DHY','p','TRA','Cars - Hybrid DSB/ELC Vehicle','');
INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_H2C','p','TRA','Cars - Hydrogen Fuel-cell Vehicle','');
INSERT INTO "technologies" VALUES ('TRA_ROA_2WH_GSB','p','TRA','Motorcycle - Gasoline Engine - E-fuel','');
INSERT INTO "technologies" VALUES ('TRA_ROA_2WH_ELC','p','TRA','Motorcycle - Electric','');
INSERT INTO "technologies" VALUES ('TRA_ROA_BUS_ELC','p','TRA','Public Buses - Electric','');
INSERT INTO "technologies" VALUES ('TRA_ROA_BUS_DSB','p','TRA','Public Buses - Diesel Hybrid - E-fuel','');
INSERT INTO "technologies" VALUES ('TRA_ROA_BUS_H2C','p','TRA','Public Buses - Hydrogen Fuel-cell Vehicle','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_BUS_NGA','p','TRA','Public Buses - Gas Engine','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_DSL','p','TRA','Cars - Diesel Engine - Traditional','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_CAR_GSL','p','TRA','Cars - Otto Engine - Traditional','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_2WH_GSL','p','TRA','Motorcycle - Gasoline Engine - Traditional','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_BUS_DSL','p','TRA','Public Buses - Diesel Engine - Traditional','');
-- Non-Road transport
INSERT INTO "technologies" VALUES ('TRA_RAI_PAS_DSB','p','TRA','Rail passenger train - Diesel','');
INSERT INTO "technologies" VALUES ('TRA_AIR_NAT_KER','p','TRA','Air National','');
INSERT INTO "technologies" VALUES ('TRA_AIR_NAT_SKR','p','TRA','Transport Passengers Air National - Synkerosene ','');
INSERT INTO "technologies" VALUES ('TRA_AIR_NAT_AVG','p','TRA','Transport Passengers Air National - Aviation Gasoline','');
INSERT INTO "technologies" VALUES ('TRA_AIR_NAT_H2C','p','TRA','Transport Passengers Air National - Hydrogen','');
INSERT INTO "technologies" VALUES ('TRA_AIR_INT_KER','p','TRA','Air International- Short distan','');
INSERT INTO "technologies" VALUES ('TRA_AIR_INT_SKR','p','TRA','Transport Passengers Air International - Synkerosene','');
INSERT INTO "technologies" VALUES ('TRA_AIR_INT_H2C','p','TRA','Transport Passengers Air Short International - Hydrogen','');
INSERT INTO "technologies" VALUES ('TRA_NAV_NAT_MGO','p','TRA','Transport passenger Ship National','');
INSERT INTO "technologies" VALUES ('TRA_NAV_NAT_LNG','p','TRA','Transport passenger Ship National','');
INSERT INTO "technologies" VALUES ('TRA_NAV_NAT_GSB','p','TRA','Transport passenger Ship National','');
INSERT INTO "technologies" VALUES ('TRA_NAV_NAT_HFO','p','TRA','Transport passenger Ship National - Fuel Oil','');
INSERT INTO "technologies" VALUES ('TRA_NAV_NAT_AMM','p','TRA','Transport passenger Ship National - Ammonia','');
-- FREIGHT
-- Road transport
INSERT INTO "technologies" VALUES ('TRA_ROA_LCV_DSB','p','TRA','Transport Freight Van - Diesel Engine - Blending','');
INSERT INTO "technologies" VALUES ('TRA_ROA_LCV_GSB','p','TRA','Transport Freight Van - Otto Engine - Blending','');
INSERT INTO "technologies" VALUES ('TRA_ROA_LCV_ELC','p','TRA','Transport Freight Van - Electricity','');
INSERT INTO "technologies" VALUES ('TRA_ROA_LCV_H2C','p','TRA','Transport Freight Van - Electricity','');
INSERT INTO "technologies" VALUES ('TRA_ROA_HTR_DSB','p','TRA','Transport Freight Truck - Diesel Engine - Blending','');
INSERT INTO "technologies" VALUES ('TRA_ROA_HTR_ELC','p','TRA','Transport Freight Truck - Electric','');
INSERT INTO "technologies" VALUES ('TRA_ROA_HTR_H2C','p','TRA','Transport Freight Truck - FCEV H2','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_LCV_DSL','p','TRA','Transport Freight Van - Diesel Engine - Blending','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_LCV_GSL','p','TRA','Transport Freight Van - Otto Engine - Blending','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_HTR_DSL','p','TRA','Transport Freight Truck - Diesel Engine - Blending','');
-- INSERT INTO "technologies" VALUES ('TRA_ROA_HTR_SNG','p','TRA','Transport Freight Truck - Gas Engine - Blending','');
-- INSERT INTO "technologies" VALUES ('TRA_RAI_FRG_DSL','p','TRA','Transport Freight Train - Diesel Engine - Blending','');
-- Non-Road transport
INSERT INTO "technologies" VALUES ('TRA_RAI_FRG_NAT_DSB','p','TRA','Transport Freight Train National - Diesel Engine - Blending','');
INSERT INTO "technologies" VALUES ('TRA_RAI_FRG_INT_ELC','p','TRA','Transport Freight Train International - Electric','');
INSERT INTO "technologies" VALUES ('TRA_AIR_FRG_NAT_KER','p','TRA','Transport Freight Air International','');
INSERT INTO "technologies" VALUES ('TRA_AIR_FRG_NAT_SKR','p','TRA','Transport Freight Air National','');
INSERT INTO "technologies" VALUES ('TRA_AIR_FRG_NAT_H2C','p','TRA','Transport Freight Air National - Hydrogen','');
INSERT INTO "technologies" VALUES ('TRA_AIR_FRG_INT_KER','p','TRA','Transport Freight Air International','');
INSERT INTO "technologies" VALUES ('TRA_AIR_FRG_INT_SKR','p','TRA','Transport Freight Air National','');
INSERT INTO "technologies" VALUES ('TRA_AIR_FRG_INT_H2C','p','TRA','Transport Freight Air International - Hydrogen','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_MGO','p','TRA','Transport Freight Ship National','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_LNG','p','TRA','Transport Freight Ship National','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_GSB','p','TRA','Transport Freight Ship National','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_HFO','p','TRA','Transport Freight Ship National','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_DOG','p','TRA','Transport Freight Ship National - Dueal fueled - Blending','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_MTH','p','TRA','Transport Freight Ship National - Methanol FUEL CELL','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_AMM','p','TRA','Transport Freight Ship National - Ammonia FUEL CELL','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_NAT_H2C','p','TRA','Transport Freight Ship National - Hydrogen ICE','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_MGO','p','TRA','Transport Freight Ship International','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_LNG','p','TRA','Transport Freight Ship International','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_GSB','p','TRA','Transport Freight Ship International','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_HFO','p','TRA','Transport Freight Ship International - Fuel Oil','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_DOG','p','TRA','Transport Freight Ship International - Dual fueled - Blending','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_MTH','p','TRA','Transport Freight Ship International - Methanol FUEL CELL','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_AMM','p','TRA','Transport Freight Ship International - Ammonia FUEL CELL','');
INSERT INTO "technologies" VALUES ('TRA_NAV_FRG_INT_H2C','p','TRA','Transport Freight Ship International - Hydrogen ICE','');
-- Hydrogen sector
-- Fuel technologies
INSERT INTO "technologies" VALUES ('H2_FT_ELC','p','H2','Fuel Technology','');
INSERT INTO "technologies" VALUES ('H2_FT_NGA','p','H2','Fuel Technology','');
--INSERT INTO "technologies" VALUES ('H2_FT_COA','p','H2','Fuel Technology','');
INSERT INTO "technologies" VALUES ('H2_FT_BIO','p','H2','Fuel Technology','');
--INSERT INTO "technologies" VALUES ('H2_FT_OIL','p','H2','Fuel Technology','');
-- Production technologies
INSERT INTO "technologies" VALUES ('H2_SR_NGA','p','H2','Hydrogen production - Natural gas steam reforming','');
--INSERT INTO "technologies" VALUES ('H2_GS_COA','p','H2','Hydrogen production - Coal gasification','');
--INSERT INTO "technologies" VALUES ('H2_PO_OIL','p','H2','Hydrogen production - Heavy oil partial oxidation','');
INSERT INTO "technologies" VALUES ('H2_SR_BIO','p','H2','Hydrogen production - Solid biomass steam reforming','');
INSERT INTO "technologies" VALUES ('H2_GS_BIO','p','H2','Hydrogen production - Solid biomass gasification','');
INSERT INTO "technologies" VALUES ('H2_EL_ALK','p','H2','Hydrogen production - Alkaline electrolyzer','');
INSERT INTO "technologies" VALUES ('H2_EL_PEM','p','H2','Hydrogen production - PEM electrolyzer','');
INSERT INTO "technologies" VALUES ('H2_EL_SOEC','p','H2','Hydrogen production - SOEC','');
INSERT INTO "technologies" VALUES ('H2_EL_AEM','p','H2','Hydrogen production - AEM electrolyzer','');
-- INSERT INTO "technologies" VALUES ('H2_DMY','p','H2','Dummy - Hydrogen from electrolysis to Hydrogen','');
-- INSERT INTO "technologies" VALUES ('H2_SF_DMY','p','H2','Dummy - Hydrogen to Hydrogen for synfuels','');
-- Upstream sector
-- Fuel technologies
INSERT INTO "technologies" VALUES ('UPS_FT_AMM','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_COA','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_WAS','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_WOO','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_NUC','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_BIO','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_BIO_DSL','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_BIO_ETH','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_BIO_MTH','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_SYN_MTH','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_SYN_DSL','p','UPS','','');
INSERT INTO "technologies" VALUES ('UPS_FT_SYN_KER','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_FGA','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_OIL','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_NGA','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_DSL','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_GSL','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_OIL_JTK','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_OIL_AVG','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_OIL_HFO','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_OIL_DSL','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_SYN_NGA','p','UPS','','');
-- INSERT INTO "technologies" VALUES ('UPS_FT_HET','p','UPS','','');
-- Production technologies
INSERT INTO "technologies" VALUES ('UPS_XTR_FIX','p','UPS','Upstream - Fixed offshore extraction','');
INSERT INTO "technologies" VALUES ('UPS_XTR_FPSO','p','UPS','Upstream - Floating Production Storage and Offloading','');
INSERT INTO "technologies" VALUES ('UPS_XTR_HUB','p','UPS','Upstream - Hub riser','');
INSERT INTO "technologies" VALUES ('UPS_XTR_SUB','p','UPS','Upstream - Subsea extraction','');
-- Trade technologies
INSERT INTO "technologies" VALUES ('UPS_IMP_JTK','p','UPS','Upstream - Jet Kerosene import','');
INSERT INTO "technologies" VALUES ('UPS_IMP_AVG','p','UPS','Upstream - Aviation gasoline import','');
INSERT INTO "technologies" VALUES ('UPS_IMP_FGA','p','UPS','Upstream - Fossil gas import','');
INSERT INTO "technologies" VALUES ('UPS_IMP_HFO','p','UPS','Upstream - Heavy Fuel Oil import','');
INSERT INTO "technologies" VALUES ('UPS_IMP_DSL','p','UPS','Upstream - Diesel import','');
INSERT INTO "technologies" VALUES ('UPS_IMP_GSL','p','UPS','Upstream - Gasoline import','');
INSERT INTO "technologies" VALUES ('UPS_EXP_OIL','p','UPS','Upstream - Oil export','');
INSERT INTO "technologies" VALUES ('UPS_EXP_NGA','p','UPS','Upstream - Gas export','');
INSERT INTO "technologies" VALUES ('UPS_REF_OIL','p','UPS','Upstream - Oil refinery','');
-- INSERT INTO "technologies" VALUES ('UPS_IMP_OIL','p','UPS','Upstream - Oil import','');
-- INSERT INTO "technologies" VALUES ('UPS_IMP_NGA','p','UPS','Upstream - Gas import','');
--Storage sector
INSERT INTO "technologies" VALUES ('STG_ELC_HYD','ps','STG','Storage - Pumping hydroelectric plant','TIMES-Italy');
INSERT INTO "technologies" VALUES ('STG_ELC_BTT','ps','STG','Storage - Lithium-Ion Battery','ATB 2022');
INSERT INTO "technologies" VALUES ('STG_ELC_VRFB','ps','STG','Storage - Vanadium-Redox-Flow Battery','10.1016/j.mtener.2025.101805');
INSERT INTO "technologies" VALUES ('STG_H2_TNK','ps','STG','Storage - Hydrogen - Tank','JRC-EU-TIMES');

CREATE TABLE "tech_reserve" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);
-- Storage
INSERT INTO "tech_reserve" VALUES ('STG_ELC_HYD','');
INSERT INTO "tech_reserve" VALUES ('STG_ELC_BTT','');
INSERT INTO "tech_reserve" VALUES ('STG_ELC_VRFB','');
INSERT INTO "tech_reserve" VALUES ('STG_H2_TNK','');

CREATE TABLE "tech_exchange" (
	"tech"	text,
	"notes"	TEXT,
	PRIMARY KEY("tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "tech_curtailment" (
	"tech"	text,
	"notes"	TEXT,
	PRIMARY KEY("tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "tech_annual" (
	"tech"	text,
	"notes"	TEXT,
	PRIMARY KEY("tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Industry sector
-- Fuel technologies
INSERT INTO "tech_annual" VALUES ('IND_FT_DIH','');
INSERT INTO "tech_annual" VALUES ('IND_FT_OIL','');
INSERT INTO "tech_annual" VALUES ('IND_FT_NGA','');
INSERT INTO "tech_annual" VALUES ('IND_FT_COA','');
INSERT INTO "tech_annual" VALUES ('IND_FT_WST','');
-- Production technologies
INSERT INTO "tech_annual" VALUES ('IND_MIN_PRO','');
INSERT INTO "tech_annual" VALUES ('IND_FeB_PRO','');
INSERT INTO "tech_annual" VALUES ('IND_TEX_PRO','');
INSERT INTO "tech_annual" VALUES ('IND_WeP_PRO','');
INSERT INTO "tech_annual" VALUES ('IND_PTC_PRO','');
INSERT INTO "tech_annual" VALUES ('IND_MET_PRO','');
INSERT INTO "tech_annual" VALUES ('IND_OTH_PRO','');
INSERT INTO "tech_annual" VALUES ('IND_NEC_PRO','');
-- INSERT INTO "tech_annual" VALUES ('IND_AL_ELA','');
-- INSERT INTO "tech_annual" VALUES ('IND_AL_ELB','');
-- INSERT INTO "tech_annual" VALUES ('IND_AL_ELC','');
-- Transport sector
-- Fuel technologies
INSERT INTO "tech_annual" VALUES ('TRA_FT_DSB','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_GSB','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_ELC','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_KER','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_SKR','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_AVG','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_MTH','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_HFO','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_MGO','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_LNG','');
INSERT INTO "tech_annual" VALUES ('TRA_FT_DOG','');
-- INSERT INTO "tech_annual" VALUES ('TRA_FT_DSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_FT_GSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_FT_LPG','');
-- INSERT INTO "tech_annual" VALUES ('TRA_FT_NGA','');
-- INSERT INTO "tech_annual" VALUES ('TRA_FT_SNG','');
-- INSERT INTO "tech_annual" VALUES ('TRA_FT_AMM','');
-- PASSENGER
-- Road transport
INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_ELC','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_DSB','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_GSB','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_GHY','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_DHY','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_2WH_GSB','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_2WH_ELC','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_BUS_ELC','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_BUS_DSB','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_BUS_H2C','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_DSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_CAR_GSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_2WH_GSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_BUS_DSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_BUS_NGA','');
-- Non-Road transport
INSERT INTO "tech_annual" VALUES ('TRA_RAI_PAS_DSB','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_NAT_KER','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_NAT_SKR','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_NAT_AVG','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_NAT_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_INT_KER','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_INT_SKR','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_INT_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_NAT_MGO','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_NAT_LNG','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_NAT_GSB','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_NAT_HFO','');
-- FREIGHT
-- Road transport
INSERT INTO "tech_annual" VALUES ('TRA_ROA_LCV_DSB','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_LCV_GSB','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_LCV_ELC','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_LCV_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_HTR_DSB','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_HTR_ELC','');
INSERT INTO "tech_annual" VALUES ('TRA_ROA_HTR_H2C','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_LCV_DSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_LCV_GSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_HTR_DSL','');
-- INSERT INTO "tech_annual" VALUES ('TRA_ROA_HTR_SNG','');
-- Non-Road transport
INSERT INTO "tech_annual" VALUES ('TRA_RAI_FRG_NAT_DSB','');
INSERT INTO "tech_annual" VALUES ('TRA_RAI_FRG_INT_ELC','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_FRG_NAT_KER','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_FRG_INT_KER','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_FRG_NAT_SKR','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_FRG_INT_SKR','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_FRG_NAT_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_AIR_FRG_INT_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_MGO','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_LNG','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_GSB','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_HFO','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_DOG','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_MTH','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_AMM','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_NAT_H2C','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_MGO','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_LNG','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_GSB','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_HFO','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_DOG','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_MTH','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_AMM','');
INSERT INTO "tech_annual" VALUES ('TRA_NAV_FRG_INT_H2C','');
-- INSERT INTO "tech_annual" VALUES ('TRA_RAI_FRG_DSL','');

CREATE TABLE "commodity_labels" (
	"comm_labels"	text,
	"comm_labels_desc"	text,
	PRIMARY KEY("comm_labels")
);
INSERT INTO "commodity_labels" VALUES ('p','physical commodity');
INSERT INTO "commodity_labels" VALUES ('e','emissions commodity');
INSERT INTO "commodity_labels" VALUES ('d','service demand commodity');


-- For detailed energy products classification the reference is at https://www.ssb.no/en/klass/klassifikasjoner/117
-- BIO: Solid, liquid and gaseous biofuels other than wood, wastewood and waste
-- WAS: Wet organic waste, sludge and other non hazardous wastes
-- FGA: Blast Furnace gas, LPG, NGA (TABLE 3 --> https://www.ssb.no/en/energi-og-industri/energi/statistikk/fjernvarme-og-fjernkjoling)

CREATE TABLE "commodities" (
	"comm_name"	text,
	"flag"	text,
	"comm_desc"	text,
	PRIMARY KEY("comm_name"),
	FOREIGN KEY("flag") REFERENCES "commodity_labels"("comm_labels")
);
-- Buildings sector
-- Demand commodities
INSERT INTO "commodities" VALUES('BUI_SC','d','Residential space cooling');
INSERT INTO "commodities" VALUES('BUI_SH','d','Residential space heating');
INSERT INTO "commodities" VALUES('BUI_WH','d','Residential water heating');
INSERT INTO "commodities" VALUES('BUI_AL','d','Residential all purposes electricity');
INSERT INTO "commodities" VALUES('BUI_sSH','d','Services space heating');
INSERT INTO "commodities" VALUES('BUI_sWH','d','Services water heating');
INSERT INTO "commodities" VALUES('BUI_sAL','d','Services all purposes electricity');
-- Energy commodities
INSERT INTO "commodities" VALUES('BUI_DH','p','District heating');
INSERT INTO "commodities" VALUES('BUI_DSB','p','Diesel');
INSERT INTO "commodities" VALUES('BUI_ELC','p','Electricity');
INSERT INTO "commodities" VALUES('BUI_GEO','p','Geothermal energy');
INSERT INTO "commodities" VALUES('BUI_NGA','p','Natural Gas');
INSERT INTO "commodities" VALUES('BUI_WPL','p','Wood pellet');
INSERT INTO "commodities" VALUES('BUI_WST','p','Wood and wastewood');
-- Emission commodities
INSERT INTO "commodities" VALUES('BUI_CO2','e','CO2 Buildings');
INSERT INTO "commodities" VALUES('BUI_CH4','e','CH4 Buildings');
INSERT INTO "commodities" VALUES('BUI_N2O','e','N2O Buildings');
-- Industry sector
-- Demand commodities
INSERT INTO "commodities" VALUES('IND_SWH','d','Space and water heating');
INSERT INTO "commodities" VALUES('IND_MIN','d','Mining');
INSERT INTO "commodities" VALUES('IND_FeB','d','Food and beverages');
INSERT INTO "commodities" VALUES('IND_TEX','d','Textiles');
INSERT INTO "commodities" VALUES('IND_WeP','d','Wood and paper');
INSERT INTO "commodities" VALUES('IND_PTC','d','Petrochemicals');
INSERT INTO "commodities" VALUES('IND_MET','d','Metals');
INSERT INTO "commodities" VALUES('IND_OTH','d','Other industries');
INSERT INTO "commodities" VALUES('IND_NEC','d','Non-energy consumption');
-- INSERT INTO "commodities" VALUES('IND_AL','d','Aggregated electricity demand in industry');
-- Energy commodities
INSERT INTO "commodities" VALUES('IND_DH','p','District heating');
INSERT INTO "commodities" VALUES('IND_ELC','p','Electricity');
INSERT INTO "commodities" VALUES('IND_OIL','p','Oil');
INSERT INTO "commodities" VALUES('IND_NGA','p','Natural Gas');
INSERT INTO "commodities" VALUES('IND_COA','p','Coal');
INSERT INTO "commodities" VALUES('IND_WST','p','Wood and wastewood');
INSERT INTO "commodities" VALUES('IND_FGA','p','Fossil gas');
-- Emission commodities
INSERT INTO "commodities" VALUES('IND_CO2','e','CO2 Buildings');
INSERT INTO "commodities" VALUES('IND_CH4','e','CH4 Buildings');
INSERT INTO "commodities" VALUES('IND_N2O','e','N2O Buildings');
-- Power sector
-- Demand commodities
INSERT INTO "commodities" VALUES('DEM_ELC','d','Electricity demand');
INSERT INTO "commodities" VALUES('DEM_FIN','d','Finland electricity export demand');
INSERT INTO "commodities" VALUES('DEM_SWE','d','Sweden electricity export demand');
INSERT INTO "commodities" VALUES('DEM_NO3','d','Norway electricity export demand');
-- INSERT INTO "commodities" VALUES('ELC_DST','d','');
-- Energy commodities
INSERT INTO "commodities" VALUES('ELC_CEN','p','Centralized electricity');
INSERT INTO "commodities" VALUES('ELC_HEW','p','Waste heat from electricity');
INSERT INTO "commodities" VALUES('ELC_HYD','p','Electricity from hydro power');
INSERT INTO "commodities" VALUES('ELC_WIN','p','Electricity from wind power');
INSERT INTO "commodities" VALUES('ELC_SOL','p','Electricity from solar power');
INSERT INTO "commodities" VALUES('ELC_GEO','p','Electricity from geothermal power');
INSERT INTO "commodities" VALUES('ELC_NUC','p','Electricity from nuclear power');
INSERT INTO "commodities" VALUES('ELC_FGA','p','Electricity from fossil gas');
INSERT INTO "commodities" VALUES('ELC_H2C','p','Electricity from hydrogen');
INSERT INTO "commodities" VALUES('ELC_BIO','p','Electricity biomass');
-- INSERT INTO "commodities" VALUES('ELC_DST','p','');
-- Emission commodities
INSERT INTO "commodities" VALUES('ELC_CO2','e','CO2 Power generation');
INSERT INTO "commodities" VALUES('ELC_CH4','e','CH4 Power generation');
INSERT INTO "commodities" VALUES('ELC_N2O','e','N2O Power generation');
-- District Heating sector
-- Energy commodities
INSERT INTO "commodities" VALUES('DIH_DH','p','District heating');
INSERT INTO "commodities" VALUES('DIH_BIO','p','District heating from biofuels');
INSERT INTO "commodities" VALUES('DIH_COA','p','District heating from coal');
INSERT INTO "commodities" VALUES('DIH_OIL','p','District heating from oil');
INSERT INTO "commodities" VALUES('DIH_ELC','p','District heating from electricity');
INSERT INTO "commodities" VALUES('DIH_FGA','p','District heating from fossil gas');
INSERT INTO "commodities" VALUES('DIH_HEW','p','District heating from waste heat');
INSERT INTO "commodities" VALUES('DIH_WAS','p','District heating from waste');
INSERT INTO "commodities" VALUES('DIH_WST','p','District heating from wood');
-- Emission commodities
INSERT INTO "commodities" VALUES('DIH_CO2','e','CO2 District heating');
INSERT INTO "commodities" VALUES('DIH_CH4','e','CH4 District heating');
INSERT INTO "commodities" VALUES('DIH_N2O','e','N2O District heating');
-- Transport sector
-- Demand commodities
INSERT INTO "commodities" VALUES('TRA_PAS_CAR','d','Transport Passengers Cars');
INSERT INTO "commodities" VALUES('TRA_PAS_2WH','d','Transport Passengers Motorbike');
INSERT INTO "commodities" VALUES('TRA_PAS_BUS','d','Transport Passengers Public Bus');
INSERT INTO "commodities" VALUES('TRA_PAS_RAI_REG','d','Transport Passengers Train');
INSERT INTO "commodities" VALUES('TRA_PAS_RAI_NAT','d','Transport Passengers Train');
INSERT INTO "commodities" VALUES('TRA_PAS_NAV_NAT','d','Transport Passengers Sea National');
INSERT INTO "commodities" VALUES('TRA_PAS_AVI_NAT','d','Transport Passengers Air National');
INSERT INTO "commodities" VALUES('TRA_PAS_AVI_INT','d','Transport Passengers Air International');
INSERT INTO "commodities" VALUES('TRA_FRG_LCV','d','Transport Freight Vans');
INSERT INTO "commodities" VALUES('TRA_FRG_HTR','d','Transport Freight Tractors and Combines');
INSERT INTO "commodities" VALUES('TRA_FRG_RAI_NAT','d','Transport Freight Rail National');
INSERT INTO "commodities" VALUES('TRA_FRG_RAI_INT','d','Transport Freight Rail International');
INSERT INTO "commodities" VALUES('TRA_FRG_NAV_NAT','d','Transport Freight Sea National');
INSERT INTO "commodities" VALUES('TRA_FRG_NAV_INT','d','Transport Freight Sea International');
INSERT INTO "commodities" VALUES('TRA_FRG_AVI_INT','d','Transport Freight Air International');
INSERT INTO "commodities" VALUES('TRA_FRG_AVI_NAT','d','Transport Freight Air National');
-- Energy commodities
INSERT INTO "commodities" VALUES('TRA_DSB','p','Blended Fuel - Diesel, biodiesel and syndiesel TRA');
INSERT INTO "commodities" VALUES('TRA_GSB','p','Blended Fuel - Gasoline and ethanol TRA');
INSERT INTO "commodities" VALUES('TRA_ELC','p','Electricity TRA');
INSERT INTO "commodities" VALUES('TRA_H2C','p','Hydrogen Compressed TRA');
INSERT INTO "commodities" VALUES('TRA_KER','p','Kerosene TRA');
INSERT INTO "commodities" VALUES('TRA_SKR','p','Synthetic kerosene TRA');
INSERT INTO "commodities" VALUES('TRA_AVG','p','Aviation gasoline TRA');
INSERT INTO "commodities" VALUES('TRA_MTH','p','Methanol TRA');
INSERT INTO "commodities" VALUES('TRA_HFO','p','Heavy Fuel Oil TRA');
INSERT INTO "commodities" VALUES('TRA_MGO','p','Transport marine gas oil');
INSERT INTO "commodities" VALUES('TRA_LNG','p','Liquified natural gas');
INSERT INTO "commodities" VALUES('TRA_DOG','p','Blended Fuel - HFO & Methanol - TRA');
INSERT INTO "commodities" VALUES('TRA_AMM','p','Ammonia TRA');
-- INSERT INTO "commodities" VALUES('TRA_LPG','p','Liquid petrol gas TRA');
-- INSERT INTO "commodities" VALUES('TRA_DSL','p','Diesel TRA');
-- INSERT INTO "commodities" VALUES('TRA_GSL','p','Gasoline TRA');
-- INSERT INTO "commodities" VALUES('TRA_NGA','p','Nat. Gas TRA');
-- INSERT INTO "commodities" VALUES('TRA_SNG','p','RE Synt. Nat. Gas (1G & 2G) TRA');
-- Emission commodities
INSERT INTO "commodities" VALUES('TRA_CO2','e','CO2 Transport (no aviation and navigation)');
INSERT INTO "commodities" VALUES('TRA_CO2_AVI','e','CO2 Transport Aviation');
INSERT INTO "commodities" VALUES('TRA_CO2_NAV','e','CO2 Transport Navigation');
INSERT INTO "commodities" VALUES('TRA_CH4','e','CH4 Transport');
INSERT INTO "commodities" VALUES('TRA_N2O','e','N2O Transport');
-- Hydrogen
INSERT INTO "commodities" VALUES('H2_ELC','p','Electricity for hydrogen production');
INSERT INTO "commodities" VALUES('H2_NGA','p','Natural gas for hydrogen production');
--INSERT INTO "commodities" VALUES('H2_COA','p','Coal for hydrogen production');
INSERT INTO "commodities" VALUES('H2_BIO','p','Biomass for hydrogen production');
--INSERT INTO "commodities" VALUES('H2_OIL','p','Oil for hydrogen production');
INSERT INTO "commodities" VALUES('H2','p','Hydrogen');
-- INSERT INTO "commodities" VALUES('H2_SF','p','Hydrogen for synfuels production');
-- Upstream sector
-- Demand commodities
INSERT INTO "commodities" VALUES('DEM_OIL','d','Export demand of oil');
INSERT INTO "commodities" VALUES('DEM_NGA','d','Export demand of natural gas');
-- Input commodities
INSERT INTO "commodities" VALUES('ethos','p','Dummy commodity for Upstream sector');
INSERT INTO "commodities" VALUES('AMM','p','Ammonia');
INSERT INTO "commodities" VALUES('COA','p','Coal');
INSERT INTO "commodities" VALUES('WAS','p','Waste');
INSERT INTO "commodities" VALUES('WOO','p','Wood');
INSERT INTO "commodities" VALUES('HYD','p','Hydro');
INSERT INTO "commodities" VALUES('WIN','p','Wind');
INSERT INTO "commodities" VALUES('SOL','p','Solar');
INSERT INTO "commodities" VALUES('GEO','p','Geothermal');
INSERT INTO "commodities" VALUES('NUC','p','Nuclear');
INSERT INTO "commodities" VALUES('BIO','p','Biomass other than wood and waste');
INSERT INTO "commodities" VALUES('UPS_NGA','p','Natural Gas');
INSERT INTO "commodities" VALUES('UPS_OIL','p','Oil');
INSERT INTO "commodities" VALUES('OIL_JTK','p','Jet Kerosene');
INSERT INTO "commodities" VALUES('OIL_AVG','p','Aviation gasoline');
INSERT INTO "commodities" VALUES('OIL_FGA','p','Fossil gas');
INSERT INTO "commodities" VALUES('OIL_HFO','p','Heavy Fuel Oil');
INSERT INTO "commodities" VALUES('OIL_DSL','p','Diesel');
INSERT INTO "commodities" VALUES('OIL_GSL','p','Gasoline');
INSERT INTO "commodities" VALUES('BIO_DSL','p','Biodiesel');
INSERT INTO "commodities" VALUES('BIO_ETH','p','Bioethanol');
INSERT INTO "commodities" VALUES('BIO_MTH','p','Biomethanol');
INSERT INTO "commodities" VALUES('SYN_MTH','p','Synthetic Methanol');
INSERT INTO "commodities" VALUES('SYN_DSL','p','Synthetic Diesel');
INSERT INTO "commodities" VALUES('SYN_KER','p','Synthetic Kerosene');
-- Emission commodities
INSERT INTO "commodities" VALUES('UPS_CO2','e','CO2 Upstream');
INSERT INTO "commodities" VALUES('UPS_CH4','e','CH4 Upstream');
INSERT INTO "commodities" VALUES('UPS_N2O','e','N2O Upstream');
-- INSERT INTO "commodities" VALUES('IND_CH_MTH','p','Methanol from industry');
-- INSERT INTO "commodities" VALUES('SYN_NGA','p','Synthetic Natural Gas');
-- INSERT INTO "commodities" VALUES('LPG','p','');
-- INSERT INTO "commodities" VALUES('GAS_LNG','p','');
-- INSERT INTO "commodities" VALUES('IND_CH_AMM','p','');
-- INSERT INTO "commodities" VALUES('HET','p','');
-- Emission aggregation commodities
INSERT INTO "commodities" VALUES('TOT_CO2','e','Total CO2 emissions');
INSERT INTO "commodities" VALUES('TOT_CH4','e','Total CH4 emissions');
INSERT INTO "commodities" VALUES('TOT_N2O','e','Total N2O emissions');

CREATE TABLE "TechOutputSplit" (
	"regions"	TEXT,
	"periods"	integer,
	"tech"	TEXT,
	"output_comm"	text,
	"to_split"	real,
	"to_split_notes"	text,
	PRIMARY KEY("regions","periods","tech","output_comm"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Buildings sector
-- Production technologies
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'BUI_SH_DIH','BUI_SH',0.15,''); -- "C:[...]\DistrictHeating\DistrictHeating.xlsx" @AT5, AT6
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'BUI_SH_DIH','BUI_sSH',0.3,''); -- "C:[...]\DistrictHeating\DistrictHeating.xlsx" @AT5, AT6
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'BUI_WH_DIH','BUI_WH',0.15,''); -- "C:[...]\DistrictHeating\DistrictHeating.xlsx" @AT5, AT6
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'BUI_WH_DIH','BUI_sWH',0.3,''); -- "C:[...]\DistrictHeating\DistrictHeating.xlsx" @AT5, AT6
-- Power sector
-- Production technologies
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'ELC_GEO_HEP','ELC_CEN',0.2,'');
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'ELC_GEO_HEP','ELC_HEW',0.8,'');
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'ELC_FGA_THE','ELC_CEN',0.7,'');
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'ELC_FGA_THE','ELC_HEW',0.3,'');
-- Upstream sector
-- Production technologies
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_XTR_FIX','UPS_OIL',0.10,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_XTR_FIX','UPS_NGA',0.90,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_XTR_FPSO','UPS_OIL',0.60,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_XTR_FPSO','UPS_NGA',0.40,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_XTR_SUB','UPS_OIL',0.50,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_XTR_SUB','UPS_NGA',0.50,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_REF_OIL','OIL_DSL',0.40,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_REF_OIL','OIL_JTK',0.08,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_REF_OIL','OIL_HFO',0.10,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_REF_OIL','OIL_AVG',0.02,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_REF_OIL','OIL_FGA',0.05,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
-- !!! INFEASIBILITY !!! -- INSERT INTO "TechOutputSplit" VALUES ('NO4',2020,'UPS_REF_OIL','OIL_GSL',0.35,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"

CREATE TABLE "TechInputSplit" (
	"regions"	TEXT,
	"periods"	integer,
	"input_comm"	text,
	"tech"	text,
	"ti_split"	real,
	"ti_split_notes"	text,
	PRIMARY KEY("regions","periods","input_comm","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
);
-- Buildings sector
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'BIO_DSL','BUI_FT_DSB',0.2,'');  -- "C:[...]\Sources\Norway\Biofuels\CountryReport2024_Norway_final-.pdf" pg.12 "Policy framework"
-- Industry sector
-- Production technologies
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_MIN_PRO',0.34,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_OIL','IND_MIN_PRO',0.55,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_MIN_PRO',0.05,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_FeB_PRO',0.60,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_OIL','IND_FeB_PRO',0.07,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_FeB_PRO',0.21,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_TEX_PRO',0.77,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_OIL','IND_TEX_PRO',0.05,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_TEX_PRO',0.13,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_WeP_PRO',0.54,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_OIL','IND_WeP_PRO',0.03,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_WeP_PRO',0.04,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_WST','IND_WeP_PRO',0.36,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_PTC_PRO',0.32,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_OIL','IND_PTC_PRO',0.02,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_PTC_PRO',0.46,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_COA','IND_PTC_PRO',0.11,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_MET_PRO',0.83,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_MET_PRO',0.03,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_COA','IND_MET_PRO',0.13,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_OTH_PRO',0.76,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_OIL','IND_OTH_PRO',0.07,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_OTH_PRO',0.05,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_ELC','IND_NEC_PRO',0.80,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_NGA','IND_NEC_PRO',0.05,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'IND_COA','IND_NEC_PRO',0.03,''); -- "C:..\TEMOA-Norway\Excel&Data\Data\Fuel prices\SSB_08205_EnergyConsumedInIndustryPerSource.xlsx"

-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_OIL','IND_MIN_PRO',0.35,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_OIL','IND_FeB_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_NGA','IND_FeB_PRO',0.11,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_OIL','IND_TEX_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_NGA','IND_TEX_PRO',0.05,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_OIL','IND_WeP_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_WST','IND_WeP_PRO',0.30,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_NGA','IND_PTC_PRO',0.26,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_COA','IND_PTC_PRO',0.07,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_NGA','IND_MET_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_OIL','IND_OTH_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_NGA','IND_OTH_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_ELC','IND_OTH_PRO',0.86,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2035,'IND_ELC','IND_NEC_PRO',0.90,''); -- assumption

-- INSERT INTO "TechInputSplit" VALUES ('NO4',2045,'IND_OIL','IND_MIN_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2045,'IND_NGA','IND_FeB_PRO',0.03,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2045,'IND_NGA','IND_TEX_PRO',0.00,''); -- assumption
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2045,'IND_NGA','IND_PTC_PRO',0.10,''); -- assumption
-- Transport sector
-- Fuel Technologies
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'BIO_DSL','TRA_FT_DSB',0.2,''); -- "C:[...]\Sources\Norway\Biofuels\CountryReport2024_Norway_final-.pdf" pg.12 "Policy framework"
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'BIO_ETH','TRA_FT_GSB',0.1,''); -- 0.1 (E10)
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2025,'OIL_DSL','TRA_FT_MGO',0.5,'');
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2025,'OIL_HFO','TRA_FT_MGO',0.5,'');
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2050,'OIL_DSL','TRA_FT_MGO',0.5,'');
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2050,'OIL_HFO','TRA_FT_MGO',0.5,'');
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2025,'SYN_NGA','TRA_FT_SNG',0.05,'');
-- INSERT INTO "TechInputSplit" VALUES ('NO4',2050,'SYN_NGA','TRA_FT_SNG',0.6,'');
-- Passenger Cars
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'TRA_GSB','TRA_ROA_CAR_GHY',0.55,''); -- TEMOA-Italy
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'TRA_ELC','TRA_ROA_CAR_GHY',0.45,''); -- TEMOA-Italy
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'TRA_DSB','TRA_ROA_CAR_DHY',0.55,'');
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'TRA_ELC','TRA_ROA_CAR_DHY',0.45,'');
-- Hydrogen Sector
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'UPS_NGA','H2_SR_NGA',0.97,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'ELC_CEN','H2_SR_NGA',0.03,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'COA','H2_GS_COA',0.85,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'ELC_CEN','H2_GS_COA',0.15,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'OIL_HFO','H2_PO_OIL',0.95,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'ELC_CEN','H2_PO_OIL',0.05,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'BIO','H2_SR_BIO',0.97,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
INSERT INTO "TechInputSplit" VALUES ('NO4',2020,'ELC_CEN','H2_SR_BIO',0.03,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy

CREATE TABLE "StorageDuration" (
	"regions"	text,
	"tech"	text,
	"duration"	real,
	"duration_notes"	text,
	PRIMARY KEY("regions","tech")
);
-- Storage
INSERT INTO "StorageDuration" VALUES ('NO4','STG_ELC_HYD',11,'ATB 2022');
INSERT INTO "StorageDuration" VALUES ('NO4','STG_ELC_BTT',6,'ATB 2022');
INSERT INTO "StorageDuration" VALUES ('NO4','STG_ELC_VRFB',6,'10.1016/j.mtener.2025.101805');
INSERT INTO "StorageDuration" VALUES ('NO4','STG_H2_TNK',6,'Assumption');

CREATE TABLE "PlanningReserveMargin" (
	"regions"	text,
	"reserve_margin"	REAL,
	PRIMARY KEY(regions),
	FOREIGN KEY("regions") REFERENCES regions
);

CREATE TABLE "tech_groups" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY(tech)
);
-- Buildings sector
INSERT INTO "tech_groups" VALUES ('BUI_SH_CEN','');
INSERT INTO "tech_groups" VALUES ('BUI_SH_DSB','');
INSERT INTO "tech_groups" VALUES ('BUI_SH_ELC','');
INSERT INTO "tech_groups" VALUES ('BUI_SH_AHP','');
INSERT INTO "tech_groups" VALUES ('BUI_SH_DIH','');
INSERT INTO "tech_groups" VALUES ('BUI_SH_WST','');
INSERT INTO "tech_groups" VALUES ('BUI_SH_WPL','');
INSERT INTO "tech_groups" VALUES ('BUI_SH_GEO','');
INSERT INTO "tech_groups" VALUES ('BUI_WH_ELC','');
INSERT INTO "tech_groups" VALUES ('BUI_WH_DIH','');
INSERT INTO "tech_groups" VALUES ('BUI_WH_WPL','');
INSERT INTO "tech_groups" VALUES ('BUI_WH_NGA','');
INSERT INTO "tech_groups" VALUES ('BUI_WH_AHP','');
-- Industry sector
INSERT INTO "tech_groups" VALUES ('IND_MIN_PRO','');
INSERT INTO "tech_groups" VALUES ('IND_FeB_PRO','');
INSERT INTO "tech_groups" VALUES ('IND_TEX_PRO','');
INSERT INTO "tech_groups" VALUES ('IND_WeP_PRO','');
INSERT INTO "tech_groups" VALUES ('IND_PTC_PRO','');
INSERT INTO "tech_groups" VALUES ('IND_MET_PRO','');
INSERT INTO "tech_groups" VALUES ('IND_OTH_PRO','');
INSERT INTO "tech_groups" VALUES ('IND_NEC_PRO','');
-- Power sector
INSERT INTO "tech_groups" VALUES ('ELC_WIN_ONS','');
INSERT INTO "tech_groups" VALUES ('ELC_WIN_OFF','');
INSERT INTO "tech_groups" VALUES ('ELC_GEO_HEP','');
INSERT INTO "tech_groups" VALUES ('ELC_HYD_ROR','');
INSERT INTO "tech_groups" VALUES ('ELC_HYD_RES','');
INSERT INTO "tech_groups" VALUES ('ELC_SOL_PHV','');
INSERT INTO "tech_groups" VALUES ('ELC_FGA_THE','');
INSERT INTO "tech_groups" VALUES ('ELC_BIO_SLB','');
INSERT INTO "tech_groups" VALUES ('ELC_NUC_SMR','');
INSERT INTO "tech_groups" VALUES ('ELC_H2C_PEM','');
-- District Heating sector
INSERT INTO "tech_groups" VALUES ('DIH_BIO_SWH','');
INSERT INTO "tech_groups" VALUES ('DIH_COA_SWH','');
INSERT INTO "tech_groups" VALUES ('DIH_OIL_SWH','');
INSERT INTO "tech_groups" VALUES ('DIH_ELC_SWH','');
INSERT INTO "tech_groups" VALUES ('DIH_FGA_SWH','');
INSERT INTO "tech_groups" VALUES ('DIH_HEW_SWH','');
INSERT INTO "tech_groups" VALUES ('DIH_INC_SWH','');
INSERT INTO "tech_groups" VALUES ('DIH_WOO_SWH','');
-- Transport sector
INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_DSB','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_GSB','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_ELC','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_GHY','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_DHY','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_H2C','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_LCV_H2C','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_LCV_DSB','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_LCV_GSB','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_LCV_ELC','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_HTR_DSB','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_HTR_ELC','');
INSERT INTO "tech_groups" VALUES ('TRA_ROA_HTR_H2C','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_NAT_KER','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_NAT_SKR','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_NAT_AVG','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_NAT_H2C','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_INT_KER','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_INT_SKR','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_INT_H2C','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_FRG_NAT_KER','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_FRG_NAT_SKR','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_FRG_NAT_H2C','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_FRG_INT_KER','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_FRG_INT_SKR','');
INSERT INTO "tech_groups" VALUES ('TRA_AIR_FRG_INT_H2C','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_DSL','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_DSB','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_GSL','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_GSB','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_AVG','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_NGA','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_SNG','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_KER','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_SKR','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_HFO','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_MGO','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_LNG','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_ELC','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_H2C','');
-- INSERT INTO "tech_groups" VALUES ('TRA_FT_LPG','');
-- INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_DSL','');
-- INSERT INTO "tech_groups" VALUES ('TRA_ROA_CAR_GSL','');
-- INSERT INTO "tech_groups" VALUES ('TRA_ROA_LCV_DSL','');
-- INSERT INTO "tech_groups" VALUES ('TRA_ROA_LCV_GSL','');
-- INSERT INTO "tech_groups" VALUES ('TRA_ROA_HTR_DSL','');
-- INSERT INTO "tech_groups" VALUES ('TRA_ROA_HTR_SNG','');

CREATE TABLE "groups" (
	"group_name"	text,
	"notes"	text,
	PRIMARY KEY("group_name")
);
-- Buildings sector
INSERT INTO "groups" VALUES ('BUI_SWH_GRP','');
-- Industry sector
INSERT INTO "groups" VALUES ('IND_MIN_GRP','');
INSERT INTO "groups" VALUES ('IND_FeB_GRP','');
INSERT INTO "groups" VALUES ('IND_TEX_GRP','');
INSERT INTO "groups" VALUES ('IND_WeP_GRP','');
INSERT INTO "groups" VALUES ('IND_PTC_GRP','');
INSERT INTO "groups" VALUES ('IND_MET_GRP','');
INSERT INTO "groups" VALUES ('IND_OTH_GRP','');
INSERT INTO "groups" VALUES ('IND_NEC_GRP','');
-- Power sector
INSERT INTO "groups" VALUES ('ELC_GEN_GRP','');
-- District Heating sector
INSERT INTO "groups" VALUES ('DIH_GEN_GRP','');
-- Transport sector
INSERT INTO "groups" VALUES ('TRA_ROA_CAR_GRP','');
INSERT INTO "groups" VALUES ('TRA_ROA_LCV_GRP','');
INSERT INTO "groups" VALUES ('TRA_ROA_HTR_GRP','');
INSERT INTO "groups" VALUES ('TRA_AIR_ALL_GRP','');
-- INSERT INTO "groups" VALUES ('TRA_FT_DSL_GRP','');
-- INSERT INTO "groups" VALUES ('TRA_FT_GSL_GRP','');
-- INSERT INTO "groups" VALUES ('TRA_FT_NGA_GRP','');
-- INSERT INTO "groups" VALUES ('TRA_FT_KER_GRP','');
-- INSERT INTO "groups" VALUES ('TRA_FT_OIL_GRP','');
-- INSERT INTO "groups" VALUES ('TRA_FT_MGO_GRP','');
-- INSERT INTO "groups" VALUES ('TRA_FT_H2_GRP','');

CREATE TABLE "TechGroupWeight" (
	"tech"		        text,
	"group_name"	    text,
	"weight"        	real,
	"tech_desc"	        text,
	PRIMARY KEY("tech","group_name")
);
-- Buildings sector
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_CEN','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_DSB','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_ELC','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_AHP','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_DIH','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_WST','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_WPL','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_SH_GEO','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_WH_ELC','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_WH_DIH','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_WH_WPL','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_WH_NGA','BUI_SWH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('BUI_WH_AHP','BUI_SWH_GRP',1.0,'');
-- Industry sector
INSERT INTO "TechGroupWeight" VALUES ('IND_MIN_PRO','IND_MIN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('IND_FeB_PRO','IND_FeB_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('IND_TEX_PRO','IND_TEX_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('IND_WeP_PRO','IND_WeP_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('IND_PTC_PRO','IND_PTC_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('IND_MET_PRO','IND_MET_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('IND_OTH_PRO','IND_OTH_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('IND_NEC_PRO','IND_NEC_GRP',1.0,'');
-- Power sector
INSERT INTO "TechGroupWeight" VALUES ('ELC_WIN_ONS','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_WIN_OFF','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_GEO_HEP','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_HYD_ROR','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_HYD_RES','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_SOL_PHV','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_FGA_THE','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_BIO_SLB','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_NUC_SMR','ELC_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('ELC_H2C_PEM','ELC_GEN_GRP',1.0,'');
-- District Heating sector
INSERT INTO "TechGroupWeight" VALUES ('DIH_BIO_SWH','DIH_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('DIH_COA_SWH','DIH_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('DIH_OIL_SWH','DIH_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('DIH_ELC_SWH','DIH_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('DIH_FGA_SWH','DIH_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('DIH_HEW_SWH','DIH_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('DIH_INC_SWH','DIH_GEN_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('DIH_WOO_SWH','DIH_GEN_GRP',1.0,'');
-- Transport sector
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_CAR_DSB','TRA_ROA_CAR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_CAR_GSB','TRA_ROA_CAR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_CAR_ELC','TRA_ROA_CAR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_CAR_GHY','TRA_ROA_CAR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_CAR_DHY','TRA_ROA_CAR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_CAR_H2C','TRA_ROA_CAR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_LCV_DSB','TRA_ROA_LCV_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_LCV_GSB','TRA_ROA_LCV_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_LCV_ELC','TRA_ROA_LCV_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_HTR_DSB','TRA_ROA_HTR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_HTR_ELC','TRA_ROA_HTR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_HTR_H2C','TRA_ROA_HTR_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_NAT_KER','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_NAT_SKR','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_NAT_AVG','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_NAT_H2C','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_INT_KER','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_INT_SKR','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_INT_H2C','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_FRG_NAT_KER','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_FRG_NAT_SKR','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_FRG_NAT_H2C','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_FRG_INT_KER','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_FRG_INT_SKR','TRA_AIR_ALL_GRP',1.0,'');
INSERT INTO "TechGroupWeight" VALUES ('TRA_AIR_FRG_INT_H2C','TRA_AIR_ALL_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_DSL','TRA_FT_DSL_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_DSB','TRA_FT_DSL_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_GSL','TRA_FT_GSL_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_GSB','TRA_FT_GSL_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_AVG','TRA_FT_GSL_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_NGA','TRA_FT_NGA_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_SNG','TRA_FT_NGA_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_KER','TRA_FT_KER_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_SKR','TRA_FT_KER_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_HFO','TRA_FT_OIL_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_MGO','TRA_FT_MGO_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_LNG','TRA_FT_MGO_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_FT_H2C','TRA_FT_H2_GRP',1.0,'');
-- INSERT INTO "TechGroupWeight" VALUES ('TRA_ROA_HTR_SNG','TRA_ROA_HTR_GRP',1.0,'');

CREATE TABLE "MinActivityGroup" (
	"regions"	text,
	"periods"	integer,
	"group_name"	text,
	"min_act_g"	real,
	"notes"	text,
	PRIMARY KEY("periods","group_name","regions")
);
-- District Heating sector
INSERT INTO "MinActivityGroup" VALUES ('NO4',2020,'DIH_GEN_GRP',1.8,''); -- see "C:[...]\Allocations\DistrictHeating\DistrictHeating.xlsx"
INSERT INTO "MinActivityGroup" VALUES ('NO4',2025,'DIH_GEN_GRP',2.25,''); -- see "C:[...]\Allocations\DistrictHeating\DistrictHeating.xlsx"
INSERT INTO "MinActivityGroup" VALUES ('NO4',2050,'DIH_GEN_GRP',2.25,''); -- Assumption

CREATE TABLE "MaxActivityGroup" (
	"regions"	text,
	"periods"	integer,
	"group_name"	text,
	"max_act_g"	real,
	"notes"	text,
	PRIMARY KEY("periods","group_name","regions")
);
-- District Heating sector
INSERT INTO "MaxActivityGroup" VALUES ('NO4',2020,'DIH_GEN_GRP',1.9,''); -- see "C:[...]\Allocations\DistrictHeating\DistrictHeating.xlsx"
INSERT INTO "MaxActivityGroup" VALUES ('NO4',2025,'DIH_GEN_GRP',2.35,''); -- see "C:[...]\Allocations\DistrictHeating\DistrictHeating.xlsx"
-- INSERT INTO "MaxActivityGroup" VALUES ('NO4',2050,'DIH_GEN_GRP',7.0,''); -- Assumption

CREATE TABLE "MinCapacityGroup" (
	"periods"	integer,
	"group_name"	text,
	"min_cap_g"	real,
	"notes"	text,
	PRIMARY KEY("periods","group_name")
);

CREATE TABLE "MaxCapacityGroup" (
	"periods"	integer,
	"group_name"	text,
	"max_cap_g"	real,
	"notes"	text,
	PRIMARY KEY("periods","group_name")
);

CREATE TABLE "MinInputGroup" (
	"regions"	      text,
	"periods"	      integer,
	"input_comm"	  text,
	"group_name" 	  text,
	"gi_min"	      real,
	"gi_min_notes"    text,
	FOREIGN KEY("group_name") REFERENCES "groups"("group_name"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","periods","input_comm","group_name")
);
-- Power sector
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'ELC_HYD','ELC_GEN_GRP',0.87,''); -- "C[..]\Power\gen_cons\gen_consNO4-2019_2025.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'ELC_FGA','ELC_GEN_GRP',0.04,''); -- "C[..]\Power\gen_cons\gen_consNO4-2019_2025.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'ELC_WIN','ELC_GEN_GRP',0.07,''); -- "C[..]\Power\gen_cons\gen_consNO4-2019_2025.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'ELC_HYD','ELC_GEN_GRP',0.83,''); -- "C[..]\Power\gen_cons\gen_consNO4-2019_2025.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'ELC_FGA','ELC_GEN_GRP',0.03,''); -- "C[..]\Power\gen_cons\gen_consNO4-2019_2025.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'ELC_WIN','ELC_GEN_GRP',0.12,''); -- "C[..]\Power\gen_cons\gen_consNO4-2019_2025.xlsx"
-- Industry sector
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_MIN_GRP',0.34,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_MIN_GRP',0.34,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_OIL','IND_MIN_GRP',0.55,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_OIL','IND_MIN_GRP',0.55,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_MIN_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_MIN_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_FeB_GRP',0.60,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_FeB_GRP',0.60,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_OIL','IND_FeB_GRP',0.07,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_OIL','IND_FeB_GRP',0.07,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_FeB_GRP',0.21,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_FeB_GRP',0.21,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_TEX_GRP',0.77,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_TEX_GRP',0.77,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_OIL','IND_TEX_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_OIL','IND_TEX_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_TEX_GRP',0.13,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_TEX_GRP',0.13,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_WeP_GRP',0.54,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_WeP_GRP',0.54,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_OIL','IND_WeP_GRP',0.03,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_OIL','IND_WeP_GRP',0.03,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_WeP_GRP',0.04,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_WeP_GRP',0.04,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_WST','IND_WeP_GRP',0.36,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_WST','IND_WeP_GRP',0.36,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_PTC_GRP',0.32,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_PTC_GRP',0.32,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_OIL','IND_PTC_GRP',0.02,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_OIL','IND_PTC_GRP',0.02,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_PTC_GRP',0.46,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_PTC_GRP',0.46,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_COA','IND_PTC_GRP',0.11,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_COA','IND_PTC_GRP',0.11,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_MET_GRP',0.83,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_MET_GRP',0.83,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_MET_GRP',0.03,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_MET_GRP',0.03,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_COA','IND_MET_GRP',0.13,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_COA','IND_MET_GRP',0.13,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_OTH_GRP',0.76,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_OTH_GRP',0.76,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_OIL','IND_OTH_GRP',0.07,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_OIL','IND_OTH_GRP',0.07,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_OTH_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_OTH_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_ELC','IND_NEC_GRP',0.80,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_ELC','IND_NEC_GRP',0.80,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_NGA','IND_NEC_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_NGA','IND_NEC_GRP',0.05,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'IND_COA','IND_NEC_GRP',0.03,'');
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'IND_COA','IND_NEC_GRP',0.03,'');
-- District Heating sector
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'DIH_BIO','DIH_GEN_GRP',0.01,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'DIH_COA','DIH_GEN_GRP',0.03,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'DIH_ELC','DIH_GEN_GRP',0.12,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'DIH_FGA','DIH_GEN_GRP',0.02,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'DIH_HEW','DIH_GEN_GRP',0.03,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'DIH_WAS','DIH_GEN_GRP',0.50,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'DIH_WST','DIH_GEN_GRP',0.28,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'DIH_BIO','DIH_GEN_GRP',0.03,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'DIH_COA','DIH_GEN_GRP',0.02,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'DIH_ELC','DIH_GEN_GRP',0.11,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'DIH_FGA','DIH_GEN_GRP',0.03,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'DIH_HEW','DIH_GEN_GRP',0.03,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'DIH_WAS','DIH_GEN_GRP',0.42,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'DIH_WST','DIH_GEN_GRP',0.36,''); -- see "C:[...]\Allocations\DistrictHeating\EnergyBuildings.xlsx"
-- Transport sector
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'TRA_DSB','TRA_ROA_HTR_GRP',0.96,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'TRA_DSB','TRA_ROA_LCV_GRP',0.95,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'TRA_GSB','TRA_ROA_LCV_GRP',0.04,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'TRA_DSB','TRA_ROA_CAR_GRP',0.58,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'TRA_GSB','TRA_ROA_CAR_GRP',0.32,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2020,'TRA_ELC','TRA_ROA_CAR_GRP',0.07,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx" electricity + half of others (hybrid)
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'TRA_DSB','TRA_ROA_HTR_GRP',0.96,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'TRA_DSB','TRA_ROA_LCV_GRP',0.94,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'TRA_GSB','TRA_ROA_LCV_GRP',0.03,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'TRA_ELC','TRA_ROA_LCV_GRP',0.02,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'TRA_DSB','TRA_ROA_CAR_GRP',0.50,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'TRA_GSB','TRA_ROA_CAR_GRP',0.24,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx"
INSERT INTO "MinInputGroup" VALUES ('NO4',2025,'TRA_ELC','TRA_ROA_CAR_GRP',0.20,''); -- see "C:[...]\Allocations\Transport\SSB_07849_RegisteredVehiclesNO4.xlsx" electricity + half of others (hybrid)
INSERT INTO "MinInputGroup" VALUES ('NO4',2050,'TRA_ELC','TRA_ROA_CAR_GRP',0.85,''); -- Assumption

CREATE TABLE "MaxInputGroup" (
	"regions"	      text,
	"periods"	      integer,
	"input_comm"	  text,
	"group_name" 	  text,
	"gi_max"	      real,
	"gi_max_notes"    text,
	FOREIGN KEY("group_name") REFERENCES "groups"("group_name"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","periods","input_comm","group_name")
);
-- Building sector
INSERT INTO "MaxInputGroup" VALUES ('NO4',2020,'BUI_NGA','BUI_SWH_GRP',0.02,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2025,'BUI_NGA','BUI_SWH_GRP',0.02,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'BUI_NGA','BUI_SWH_GRP',0.01,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2020,'BUI_GEO','BUI_SWH_GRP',0.09,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'BUI_GEO','BUI_SWH_GRP',0.12,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2020,'BUI_ELC','BUI_SWH_GRP',0.85,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2025,'BUI_ELC','BUI_SWH_GRP',0.85,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2020,'BUI_WST','BUI_SWH_GRP',0.06,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'BUI_WST','BUI_SWH_GRP',0.06,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2020,'BUI_WPL','BUI_SWH_GRP',0.01,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'BUI_WPL','BUI_SWH_GRP',0.01,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2020,'BUI_DSB','BUI_SWH_GRP',0.02,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2025,'BUI_DSB','BUI_SWH_GRP',0.02,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'BUI_DSB','BUI_SWH_GRP',0.01,'');
-- District Heating sector
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_BIO','DIH_GEN_GRP',0.05,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_COA','DIH_GEN_GRP',0.00,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_ELC','DIH_GEN_GRP',0.11,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_FGA','DIH_GEN_GRP',0.00,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_HEW','DIH_GEN_GRP',0.05,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_OIL','DIH_GEN_GRP',0.00,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_WAS','DIH_GEN_GRP',0.45,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2030,'DIH_WST','DIH_GEN_GRP',0.40,''); -- assumptions, without constraints the behaviour is far from realistic

INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_BIO','DIH_GEN_GRP',0.10,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_COA','DIH_GEN_GRP',0.00,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_ELC','DIH_GEN_GRP',0.10,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_FGA','DIH_GEN_GRP',0.00,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_HEW','DIH_GEN_GRP',0.20,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_OIL','DIH_GEN_GRP',0.00,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_WAS','DIH_GEN_GRP',0.50,''); -- assumptions, without constraints the behaviour is far from realistic
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'DIH_WST','DIH_GEN_GRP',0.35,''); -- assumptions, without constraints the behaviour is far from realistic
-- Transport sector
-- INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'TRA_H2C','TRA_AIR_ALL_GRP',0.7,''); -- Assumption
-- INSERT INTO "MaxInputGroup" VALUES ('NO4',2040,'TRA_SKR','TRA_AIR_ALL_GRP',0.2,'');
-- INSERT INTO "MaxInputGroup" VALUES ('NO4',2045,'TRA_SKR','TRA_AIR_ALL_GRP',0.4,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2035,'TRA_DSB','TRA_ROA_LCV_GRP',0.85,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'TRA_DSB','TRA_ROA_LCV_GRP',0.20,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'TRA_GSB','TRA_ROA_LCV_GRP',0.10,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2035,'TRA_DSB','TRA_ROA_HTR_GRP',0.85,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'TRA_DSB','TRA_ROA_HTR_GRP',0.20,'');
INSERT INTO "MaxInputGroup" VALUES ('NO4',2050,'TRA_SKR','TRA_AIR_ALL_GRP',0.5,'');

CREATE TABLE "MinOutputGroup" (
	"regions"	      text,
	"periods"	      integer,
	"output_comm"	text,
	"group_name" 	text,
	"go_min"	      real,
	"go_min_notes"    text,
	FOREIGN KEY("group_name") REFERENCES "groups"("group_name"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","periods","output_comm","group_name")
);
CREATE TABLE "MaxOutputGroup" (
	"regions"	      text,
	"periods"	      integer,
	"output_comm"	  text,
	"group_name" 	  text,
	"go_max"	      real,
	"go_max_notes"    text,
	FOREIGN KEY("group_name") REFERENCES "groups"("group_name"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","periods","output_comm","group_name")
);

CREATE TABLE "MinCapacity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"mincap"	real,
	"mincap_units"	text,
	"mincap_notes"	text,
	PRIMARY KEY("regions","periods","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
);
-- Power sector
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'ELC_WIN_ONS',1.160,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\Power\SSB_ElectricityProdBySource&Region.xlsx-Foglio2"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'ELC_HYD_ROR',0.722,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\Power\SSB_ElectricityProdBySource&Region.xlsx-Foglio2"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'ELC_HYD_RES',4.914,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\Power\SSB_ElectricityProdBySource&Region.xlsx-Foglio2"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'ELC_FGA_THE',0.400,'GW',''); -- 0.256 see "..\TEMOA-Norway\Excel&Data\Data\Allocations\Power\SSB_ElectricityProdBySource&Region.xlsx-Foglio2"
-- District Heating sector
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_BIO_SWH',0.006,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_COA_SWH',0.004,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_OIL_SWH',0.003,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_ELC_SWH',0.014,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_FGA_SWH',0.007,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_HEW_SWH',0.004,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_INC_SWH',0.078,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'DIH_WOO_SWH',0.067,'GW',''); -- see "..\TEMOA-Norway\Excel&Data\Data\Allocations\DistrictHeating\SSB_04729_DHinvestment.xlsx"
-- Transport sector
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_CAR_ELC',4.85E-01,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_CAR_DSB',1.62E+00,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_CAR_GSB',7.72E-01,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_CAR_GHY',3.05E-01,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_CAR_DHY',2.23E-02,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_2WH_GSB',1.29E-01,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_2WH_ELC',3.52E-03,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_LCV_DSB',4.16E-01,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_LCV_GSB',1.40E-01,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_LCV_ELC',7.07E-03,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_HTR_DSB',1.00E-01,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2025,'TRA_ROA_BUS_DSB',8.24E-04,'Bvkm',''); -- see "C:[...]\SSB_11823_ExistingCapacityRoadNO4_2025-12.xlsx"
-- Upstream sector
INSERT INTO "MinCapacity" VALUES ('NO4',2035,'UPS_XTR_FIX',5.07,'GW','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2045,'UPS_XTR_FIX',5.71,'GW','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2030,'UPS_XTR_FPSO',4.44,'GW','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "MinCapacity" VALUES ('NO4',2030,'UPS_XTR_SUB',4.12,'GW','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"

CREATE TABLE "MinActivity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"minact"	real,
	"minact_units"	text,
	"minact_notes"	text,
	PRIMARY KEY("regions","periods","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
);
-- Buildings sector
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'BUI_SH_AHP',13.55,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'BUI_SH_CEN',0.00,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'BUI_SH_ELC',5.00,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'BUI_SH_GEO',2.00,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'BUI_SH_DSB',0.20,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'BUI_WH_AHP',1.44,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'BUI_SH_AHP',13.55,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'BUI_SH_CEN',0.00,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'BUI_SH_ELC',5.00,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'BUI_SH_GEO',2.00,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'BUI_SH_DSB',0.20,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'BUI_WH_AHP',1.44,'PJ','');
-- District heating sector
-- Fuel Technologies
INSERT INTO "MinActivity" VALUES ('NO4',2020,'BUI_FT_DIH',1.44,'PJ',''); -- 80%(leaving some margin wrt 83%) of 90% of total activity
INSERT INTO "MinActivity" VALUES ('NO4',2020,'IND_FT_DIH',0.27,'PJ',''); -- 15%(leaving some margin wrt 17%) of 90% of total activity
-- Power sector
INSERT INTO "MinActivity" VALUES ('NO4',2020,'ELC_HYD_RES',71,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'ELC_FGA_THE',10,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2020,'ELC_WIN_ONS',6,'PJ','');
INSERT INTO "MinActivity" VALUES ('NO4',2025,'ELC_HYD_RES',71,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'ELC_FGA_THE',10,'PJ','');
--INSERT INTO "MinActivity" VALUES ('NO4',2025,'ELC_WIN_ONS',12,'PJ','');
-- Transport sector
-- INSERT INTO "MinActivity" VALUES ('NO4',2015,'TRA_ROA_CAR_DSB',4.94E+00,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'TRA_ROA_CAR_DSB',3.25E+00,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2030,'TRA_ROA_CAR_DSB',7.20E-01,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2050,'TRA_ROA_CAR_DSB',5.18E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2015,'TRA_ROA_CAR_GSB',4.65E+00,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'TRA_ROA_CAR_GSB',3.06E+00,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2030,'TRA_ROA_CAR_GSB',6.78E-01,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2050,'TRA_ROA_CAR_GSB',5.18E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2015,'TRA_ROA_CAR_LPG',6.91E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'TRA_ROA_CAR_LPG',5.18E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2030,'TRA_ROA_CAR_LPG',1.73E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2015,'TRA_ROA_CAR_NGB',6.91E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'TRA_ROA_CAR_NGB',5.18E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2030,'TRA_ROA_CAR_NGB',1.73E-05,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2015,'TRA_ROA_CAR_ELC',1.27E-01,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'TRA_ROA_CAR_ELC',8.32E-02,'Bvkm','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2030,'TRA_ROA_CAR_ELC',1.85E-02,'Bvkm','');
-- Upstream sector
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'UPS_IMP_FGA',10,'PJ','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2025,'UPS_IMP_FGA',10,'PJ','');
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'UPS_XTR_FIX',126,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2035,'UPS_XTR_FIX',158,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2045,'UPS_XTR_FIX',178,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'UPS_XTR_FPSO',108,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2030,'UPS_XTR_FPSO',126,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2035,'UPS_XTR_FPSO',145,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'UPS_XTR_HUB',54,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2020,'UPS_XTR_SUB',90,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
-- INSERT INTO "MinActivity" VALUES ('NO4',2030,'UPS_XTR_SUB',131,'PJ','');  -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx" -10%
--INSERT INTO "MinActivity" VALUES ('NO4',2030,'UPS_FT_WAS',1.24,'PJ',''); -- see "C:[...]\DistrictHeating\SSB_13136_WasteToIncineration.xlsx - Foglio 1" data do not reflect national shares hence I shifted the decrease forward
--INSERT INTO "MinActivity" VALUES ('NO4',2050,'UPS_FT_WAS',0.5,'PJ',''); -- see "C:[...]\DistrictHeating\SSB_13136_WasteToIncineration.xlsx - Foglio 1" assuming a progressive reduction in waste prodiction

CREATE TABLE "MaxCapacity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"maxcap"	real,
	"maxcap_units"	text,
	"maxcap_notes"	text,
	PRIMARY KEY("regions","periods","tech"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Power sector
INSERT INTO "MaxCapacity" VALUES ('NO4',2025,'ELC_IMP_FIN',0.1,'GW','');
INSERT INTO "MaxCapacity" VALUES ('NO4',2025,'ELC_IMP_SWE',0.7,'GW','');
INSERT INTO "MaxCapacity" VALUES ('NO4',2025,'ELC_IMP_NO3',0.2,'GW','');

CREATE TABLE "MaxActivity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"maxact"	real,
	"maxact_units"	text,
	"maxact_notes"	text,
	PRIMARY KEY("regions","periods","tech"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Buildings sector
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_DSB',0.54,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'BUI_SH_DSB',0.54,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_ELC',8.71,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2050,'BUI_SH_ELC',8.71,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_AHP',25.99,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'BUI_SH_AHP',25.99,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_CEN',0.56,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'BUI_SH_CEN',0.56,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_DIH',0.99,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'BUI_SH_DIH',0.99,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_WST',1.00,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'BUI_SH_WST',1.00,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_WPL',0.65,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'BUI_SH_WPL',0.65,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'BUI_SH_GEO',3.71,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'BUI_SH_GEO',3.71,'PJ','');
-- Power sector
-- INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_FT_GEO',1.00,'PJ',''); -- Assumption
-- INSERT INTO "MaxActivity" VALUES ('NO4',2050,'ELC_FT_GEO',8.00,'PJ',''); -- Assumption
INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_FT_HYD',85.00,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2050,'ELC_FT_HYD',90.00,'PJ',''); -- assuming ~+2% every 5 years from 2020 to 2050
INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_FT_SOL',0.50,'PJ',''); -- Assumption
INSERT INTO "MaxActivity" VALUES ('NO4',2045,'ELC_FT_SOL',1.00,'PJ',''); -- Assumption
INSERT INTO "MaxActivity" VALUES ('NO4',2040,'ELC_FT_NUC',5.00,'PJ',''); -- Assumption based on a 150MW module with 0.95 CF
--INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_WIN_ONS',6.50,'PJ','');
--INSERT INTO "MaxActivity" VALUES ('NO4',2025,'ELC_WIN_ONS',12.50,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2030,'ELC_WIN_ONS',15.00,'PJ',''); -- Assumption
INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_H2C_PEM',0.1,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2050,'ELC_H2C_PEM',0.5,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_IMP_FIN',0.5,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2025,'ELC_IMP_FIN',0.5,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_IMP_SWE',3.5,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2025,'ELC_IMP_SWE',3.5,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2020,'ELC_IMP_NO3',1.0,'PJ','');
INSERT INTO "MaxActivity" VALUES ('NO4',2025,'ELC_IMP_NO3',1.0,'PJ','');

CREATE TABLE "LifetimeTech" (
	"regions"	text,
	"tech"	text,
	"life"	real,
	"life_notes"	text,
	PRIMARY KEY("regions","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Buildings sector
-- Fuel technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_FT_DIH',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_FT_DSB',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_FT_ELC',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_FT_GEO',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_FT_NGA',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_FT_WOO',60,'');
-- Production technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SC_ROO',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SC_AHP',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_CEN',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_DSB',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_ELC',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_AHP',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_DIH',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_WST',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_WPL',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_SH_GEO',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_WH_ELC',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_WH_DIH',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_WH_WPL',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_WH_NGA',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_WH_AHP',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_AL_ELA',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_AL_ELB',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','BUI_AL_ELC',15,'');
-- Industry sector
-- Fuel technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_FT_DIH',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_FT_ELC',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_FT_OIL',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_FT_NGA',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_FT_COA',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_FT_WST',60,'');
-- Production technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_DH_DIH',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_MIN_PRO',25,''); -- Assumptions
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_FeB_PRO',10,''); -- Assumptions
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_TEX_PRO',20,''); -- Assumptions
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_WeP_PRO',15,''); -- Assumptions
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_PTC_PRO',20,''); -- Assumptions
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_MET_PRO',25,''); -- Assumptions
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_OTH_PRO',12,''); -- Assumptions
INSERT INTO "LifetimeTech" VALUES ('NO4','IND_NEC_PRO',10,''); -- Assumptions
-- Power sector
-- Fuel technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_HYD',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_WIN',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_SOL',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_GEO',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_NUC',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_FGA',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_H2C',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FT_BIO',60,'');
-- Production technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_DEM_DMY',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_WIN_ONS',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_WIN_OFF',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_GEO_HEP',16,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_HYD_ROR',40,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_HYD_RES',80,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_SOL_PHV',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_FGA_THE',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_BIO_SLB',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_NUC_SMR',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_H2C_PEM',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_EXP_FIN',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_EXP_SWE',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_EXP_NO3',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_IMP_FIN',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_IMP_SWE',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','ELC_IMP_NO3',100,'');
-- District heating sector
-- Fuel technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_BIO',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_COA',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_OIL',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_ELC',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_FGA',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_HEW',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_WAS',60,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FT_WOO',60,'');
-- Production technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_BIO_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_COA_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_OIL_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_ELC_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_FGA_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_HEW_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_INC_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
INSERT INTO "LifetimeTech" VALUES ('NO4','DIH_WOO_SWH',25,''); -- Assumption to loosen the instrinsic constraint of the technology
-- Transport sector
-- Fuel technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_DSB',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_GSB',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_ELC',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_H2C',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_KER',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_SKR',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_AVG',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_MTH',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_HFO',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_MGO',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_FT_LNG',100,'');
-- Road techno1logies
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_CAR_DSB',16,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_CAR_GSB',16,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_CAR_ELC',16,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_CAR_GHY',16,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_CAR_DHY',16,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_CAR_H2C',16,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_2WH_ELC',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_2WH_GSB',15,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_BUS_DSB',8,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_BUS_ELC',8,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_LCV_DSB',14,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_LCV_GSB',14,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_LCV_ELC',11,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_HTR_DSB',6,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_HTR_ELC',6,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_ROA_HTR_H2C',6,'');
-- Non-Road technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_RAI_PAS_DSB',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_RAI_FRG_NAT_DSB',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_RAI_FRG_INT_ELC',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_NAT_KER',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_INT_KER',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_NAT_SKR',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_INT_SKR',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_NAT_AVG',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_NAT_H2C',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_INT_H2C',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_FRG_NAT_KER',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_FRG_INT_KER',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_FRG_INT_SKR',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_FRG_NAT_SKR',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_FRG_INT_H2C',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_AIR_FRG_NAT_H2C',30,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_NAT_HFO',28,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_NAT_MGO',28,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_NAT_LNG',28,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_NAT_GSB',28,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_MGO',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_LNG',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_GSB',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_HFO',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_DOG',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_MTH',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_AMM',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_NAT_H2C',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_MGO',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_LNG',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_GSB',25,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_HFO',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_DOG',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_MTH',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_AMM',20,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','TRA_NAV_FRG_INT_H2C',20,'');
-- Hydrogen technologies
--INSERT INTO "LifetimeTech" VALUES ('NO4','H2_SR_NGA',20,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "LifetimeTech" VALUES ('NO4','H2_GS_COA',20,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "LifetimeTech" VALUES ('NO4','H2_PO_OIL',25,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "LifetimeTech" VALUES ('NO4','H2_SR_BIO',20,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
--INSERT INTO "LifetimeTech" VALUES ('NO4','H2_GS_BIO',20,'Elaboration of data from JRC-EU-TIMES'); -- TEMOA-Italy
-- Storage technologies
INSERT INTO "LifetimeTech" VALUES ('NO4','STG_ELC_BTT',15,'ATB 2022');
INSERT INTO "LifetimeTech" VALUES ('NO4','STG_ELC_VRFB',12,'ATB 2022');
INSERT INTO "LifetimeTech" VALUES ('NO4','STG_H2_TNK',22,'ATB 2022');
-- Upstream sector
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_XTR_FIX',60,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_XTR_FPSO',40,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_XTR_HUB',40,'	'); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_XTR_SUB',30,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_IMP_JTK',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_IMP_AVG',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_IMP_FGA',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_IMP_HFO',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_IMP_DSL',100,'');
INSERT INTO "LifetimeTech" VALUES ('NO4','UPS_IMP_GSL',100,'');

CREATE TABLE "LifetimeProcess" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"life_process"	real,
	"life_process_notes"	text,
	PRIMARY KEY("regions","tech","vintage"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Hydrogen
INSERT INTO "LifetimeProcess" VALUES ('NO4','H2_EL_ALK',2030,11,'');
INSERT INTO "LifetimeProcess" VALUES ('NO4','H2_EL_ALK',2050,14,'');
INSERT INTO "LifetimeProcess" VALUES ('NO4','H2_EL_PEM',2030,8,'');
INSERT INTO "LifetimeProcess" VALUES ('NO4','H2_EL_PEM',2050,14,'');
INSERT INTO "LifetimeProcess" VALUES ('NO4','H2_EL_SOEC',2035,5,'');
INSERT INTO "LifetimeProcess" VALUES ('NO4','H2_EL_SOEC',2050,10,'');
INSERT INTO "LifetimeProcess" VALUES ('NO4','H2_EL_AEM',2050,10,'');

CREATE TABLE "LifetimeLoanTech" (
	"regions"	text,
	"tech"	text,
	"loan"	real,
	"loan_notes"	text,
	PRIMARY KEY("regions","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "GrowthRateSeed" (
	"regions"	text,
	"tech"	text,
	"growthrate_seed"	real,
	"growthrate_seed_units"	text,
	"growthrate_seed_notes"	text,
	PRIMARY KEY("regions","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "GrowthRateMax" (
	"regions"	text,
	"tech"	text,
	"growthrate_max"	real,
	"growthrate_max_notes"	text,
	PRIMARY KEY("regions","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "GlobalDiscountRate" (
	"rate"	real
);
INSERT INTO "GlobalDiscountRate" VALUES (0.05);

CREATE TABLE "ExistingCapacity" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"exist_cap"	real,
	"exist_cap_units"	text,
	"exist_cap_notes"	text,
	PRIMARY KEY("regions","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
);
-- Buildings sector
-- Base year technologies
INSERT INTO "ExistingCapacity" VALUES ('NO4','BUI_AL_ELA',2019,2.00E-04,'GW',''); -- "C[...]\Buildings\EnergyBuildings.xlsx" screenshot decreased from 21 to 15 (RES) and from 12 to 7 (COM)
INSERT INTO "ExistingCapacity" VALUES ('NO4','BUI_AL_ELB',2019,5.00E-04,'GW',''); -- "C[...]\Buildings\EnergyBuildings.xlsx" screenshot decreased from 21 to 15 (RES) and from 12 to 7 (COM)
INSERT INTO "ExistingCapacity" VALUES ('NO4','BUI_AL_ELC',2019,5.00E-04,'GW',''); -- "C[...]\Buildings\EnergyBuildings.xlsx" screenshot decreased from 21 to 15 (RES) and from 12 to 7 (COM)
-- Power sector
-- Base year technologies
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_DEM_DMY',2019,1000,'GW','');
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_WIN_ONS',2019,0.654,'GW','');
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_HYD_ROR',2019,0.465,'GW','');
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_HYD_RES',2019,4.839,'GW','');
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_FGA_THE',2019,0.400,'GW',''); -- 0.270
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_EXP_FIN',2019,0.1,'GW',''); -- "C:[...]Poli\Sources\Norway\2017_ENTSOE_ElcTransferCapacityInNordics.pdf"
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_EXP_SWE',2019,0.8,'GW',''); -- "C:[...]Poli\Sources\Norway\2017_ENTSOE_ElcTransferCapacityInNordics.pdf"
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_EXP_NO3',2019,1.8,'GW',''); -- "C:[...]Poli\Sources\Norway\2017_ENTSOE_ElcTransferCapacityInNordics.pdf"
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_IMP_FIN',2019,0.1,'GW',''); -- "C:[...]Poli\Sources\Norway\2017_ENTSOE_ElcTransferCapacityInNordics.pdf"
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_IMP_SWE',2019,0.7,'GW',''); -- "C:[...]Poli\Sources\Norway\2017_ENTSOE_ElcTransferCapacityInNordics.pdf"
INSERT INTO "ExistingCapacity" VALUES ('NO4','ELC_IMP_NO3',2019,0.2,'GW',''); -- "C:[...]Poli\Sources\Norway\2017_ENTSOE_ElcTransferCapacityInNordics.pdf"
-- District heating sector
-- Base year technologies
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_BIO_SWH',2019,0.002,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_COA_SWH',2019,0.006,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_OIL_SWH',2019,0.001,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_ELC_SWH',2019,0.012,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_FGA_SWH',2019,0.008,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_HEW_SWH',2019,0.003,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_INC_SWH',2019,0.077,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','DIH_WOO_SWH',2019,0.049,'GW','');  -- see "C:[...]DistrictHeating\SSB_04729_DHinvestment.xlsx"
-- Transport sector
-- PASSENGER
-- Base year technologies
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_CAR_ELC',2019,1.04E-01,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_CAR_DSB',2019,1.87E+00,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_CAR_GSB',2019,1.11E+00,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_CAR_GHY',2019,1.16E-01,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_CAR_DHY',2019,6.58E-03,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_2WH_GSB',2019,1.36E-01,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_2WH_ELC',2019,7.33E-04,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_LCV_DSB',2019,4.47E-01,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_LCV_GSB',2019,1.15E-01,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_LCV_ELC',2019,1.89E-03,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_HTR_DSB',2019,9.90E-02,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_ROA_BUS_DSB',2019,2.85E-02,'Bvkm',''); -- see "C:[...]SSB_11823_ExistingCapacityRoadNO4_2025-12"

INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_RAI_PAS_DSB',2019,1.42E-03,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_AIR_NAT_KER',2019,5.78E-02,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_AIR_INT_KER',2019,1.65E-03,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_NAT_MGO',2019,1.70E-03,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_NAT_LNG',2019,2.21E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_NAT_GSB',2019,1.23E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_NAT_HFO',2019,1.11E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_RAI_FRG_NAT_DSB',2019,5.37E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_RAI_FRG_INT_ELC',2019,1.44E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_AIR_FRG_NAT_KER',2019,6.88E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_AIR_FRG_INT_KER',2019,7.92E-05,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_NAT_MGO',2019,1.45E-03,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_NAT_LNG',2019,1.89E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_NAT_GSB',2019,1.06E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_NAT_HFO',2019,9.52E-05,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_INT_MGO',2019,2.31E-03,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_INT_LNG',2019,3.01E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_INT_GSB',2019,1.68E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','TRA_NAV_FRG_INT_HFO',2019,1.52E-04,'Bvkm',''); -- see "C:[...]Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
-- Upstream sector
INSERT INTO "ExistingCapacity" VALUES ('NO4','UPS_XTR_FIX',2019,4.44,'GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','UPS_XTR_FPSO',2019,3.80,'GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','UPS_XTR_HUB',2019,1.90,'GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','UPS_XTR_SUB',2019,3.17,'GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "ExistingCapacity" VALUES ('NO4','UPS_REF_OIL',2019,48.00,'GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"

CREATE TABLE "EmissionLimit" (
	"regions"	text,
	"periods"	integer,
	"emis_comm"	text,
	"emis_limit"	real,
	"emis_limit_units"	text,
	"emis_limit_notes"	text,
	PRIMARY KEY("periods","emis_comm"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name")
);
-- 2030 -> 1710 kt = -55% wrt 1990 (8.25 CO2 t/capita * 460274 pp = 3.8 MtCO2 (ourworldindata.org))
-- 2050 -> 190÷380 kt = -90÷95% wrt 1990 (ourworldindata.org)
INSERT INTO "EmissionLimit" VALUES ('NO4',2030,'TOT_CO2',1710,'kt','');
-- INSERT INTO "EmissionLimit" VALUES ('NO4',2030,'IND_CO2',878,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
-- INSERT INTO "EmissionLimit" VALUES ('NO4',2030,'TRA_CO2',570,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
-- INSERT INTO "EmissionLimit" VALUES ('NO4',2030,'DIH_CO2',200,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
INSERT INTO "EmissionLimit" VALUES ('NO4',2040,'TOT_CO2',1000,'kt','');
-- INSERT INTO "EmissionLimit" VALUES ('NO4',2040,'IND_CO2',315,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
INSERT INTO "EmissionLimit" VALUES ('NO4',2040,'TRA_CO2',500,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
-- INSERT INTO "EmissionLimit" VALUES ('NO4',2040,'DIH_CO2',141,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
INSERT INTO "EmissionLimit" VALUES ('NO4',2050,'TOT_CO2',380,'kt','');
-- INSERT INTO "EmissionLimit" VALUES ('NO4',2050,'IND_CO2',1,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
INSERT INTO "EmissionLimit" VALUES ('NO4',2050,'TRA_CO2',200,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"
-- INSERT INTO "EmissionLimit" VALUES ('NO4',2050,'DIH_CO2',75,'kt',''); -- empirical shares from results "C[...]\provv\postpro_TEMOA-NO4_2026nze.xlsx"

CREATE TABLE "EmissionActivity" (
	"regions"	text,
	"emis_comm"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"emis_act"	real,
	"emis_act_units"	text,
	"emis_act_notes"	text,
	PRIMARY KEY("regions","emis_comm","input_comm","tech","vintage","output_comm"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name")
);
-- Buildings sector
INSERT INTO "EmissionActivity" VALUES ('NO4','BUI_CO2','BIO_DSL','BUI_FT_DSB',2019,'BUI_DSB',-74.07,'[kt/PJ]',''); -- TEMOA-Italy
-- Transport sector
INSERT INTO "EmissionActivity" VALUES ('NO4','TRA_CO2','BIO_MTH','TRA_FT_MTH',2019,'TRA_MTH',-56.10,'[kt/PJ]',''); -- TEMOA-Italy
INSERT INTO "EmissionActivity" VALUES ('NO4','TRA_CO2','BIO_ETH','TRA_FT_GSB',2019,'TRA_GSB',-69.30,'[kt/PJ]',''); -- TEMOA-Italy
INSERT INTO "EmissionActivity" VALUES ('NO4','TRA_CO2','BIO_DSL','TRA_FT_DSB',2019,'TRA_DSB',-74.07,'[kt/PJ]',''); -- TEMOA-Italy
-- Hydrogen
INSERT INTO "EmissionActivity" VALUES ('NO4','UPS_CO2','H2_NGA','H2_SR_NGA',2030,'H2',56.10/0.71,'kt/PJ','');
--INSERT INTO "EmissionActivity" VALUES ('NO4','UPS_CO2','H2_COA','H2_GS_COA',2020,'H2',101.16/0.56,'kt/PJ','');
--INSERT INTO "EmissionActivity" VALUES ('NO4','UPS_CO2','H2_COA','H2_GS_COA',2025,'H2',101.16/0.56,'kt/PJ','');
--INSERT INTO "EmissionActivity" VALUES ('NO4','UPS_CO2','H2_COA','H2_GS_COA',2030,'H2',101.16/0.68,'kt/PJ','');
--INSERT INTO "EmissionActivity" VALUES ('NO4','UPS_CO2','H2_OIL','H2_PO_OIL',2020,'H2',79.55/0.73,'kt/PJ','');
INSERT INTO "EmissionActivity" VALUES ('NO4','UPS_CO2','H2_BIO','H2_SR_BIO',2030,'H2',0.0001/0.71,'kt/PJ','');
INSERT INTO "EmissionActivity" VALUES ('NO4','UPS_CO2','H2_BIO','H2_GS_BIO',2030,'H2',0.0001/0.42,'kt/PJ','');

CREATE TABLE "CommodityEmissionFactor" (
	"input_comm"    text,
	"emis_comm"     text,
	"ef"            real,
	"emis_unit"     text,
	"ef_notes"      text,
	PRIMARY KEY("input_comm","ef","emis_comm"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name")
);
-- Buildings sector
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_DSB','BUI_CO2',74.1,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_NGA','BUI_CO2',56.1,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_WPL','BUI_CO2',112,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_WST','BUI_CO2',112,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_DSB','BUI_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_NGA','BUI_CH4',5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_WPL','BUI_CH4',300,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_WST','BUI_CH4',300,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_DSB','BUI_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_NGA','BUI_N2O',0.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_WPL','BUI_N2O',4,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('BUI_WST','BUI_N2O',4,'[t/PJ]','');
-- Industry sector
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_NGA','IND_CO2',56.1,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_FGA','IND_CO2',126.3,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_WST','IND_CO2',112,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_OIL','IND_CO2',65,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_COA','IND_CO2',100,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_NGA','IND_CH4',5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_FGA','IND_CH4',5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_WST','IND_CH4',300,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_OIL','IND_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_COA','IND_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_NGA','IND_N2O',0.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_FGA','IND_N2O',0.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_WST','IND_N2O',4,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_OIL','IND_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('IND_COA','IND_N2O',1.5,'[t/PJ]','');
-- Power sector
INSERT INTO "CommodityEmissionFactor" VALUES ('ELC_FGA','ELC_CO2',126.3,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('ELC_BIO','ELC_CO2',100,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('ELC_FGA','ELC_CH4',5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('ELC_BIO','ELC_CH4',250,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('ELC_FGA','ELC_N2O',0.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('ELC_BIO','ELC_N2O',2.5,'[t/PJ]','');
-- District heating sector
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_BIO','DIH_CO2',100,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_COA','DIH_CO2',100,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_OIL','DIH_CO2',65,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_FGA','DIH_CO2',126.3,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_WAS','DIH_CO2',95.85,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_WST','DIH_CO2',112,'[kt/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_BIO','DIH_CH4',300,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_COA','DIH_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_OIL','DIH_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_FGA','DIH_CH4',5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_WAS','DIH_CH4',300,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_WST','DIH_CH4',300,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_BIO','DIH_N2O',2.5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_COA','DIH_N2O',1.5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_OIL','DIH_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_FGA','DIH_N2O',0.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_WAS','DIH_N2O',4,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('DIH_WST','DIH_N2O',4,'[t/PJ]','');
-- Transport sector
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_DSB','TRA_CO2',74.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_GSB','TRA_CO2',69.3,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_KER','TRA_CO2',71.5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_SKR','TRA_CO2',71.5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_AVG','TRA_CO2',70,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_MTH','TRA_CO2',69.3,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_HFO','TRA_CO2',77.4,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_MGO','TRA_CO2',73.3,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_LNG','TRA_CO2',56.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_DOG','TRA_CO2',77.4,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_DSB','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_GSB','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_KER','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_SKR','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_AVG','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_MTH','TRA_CH4',6.9,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_HFO','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_MGO','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_LNG','TRA_CH4',5,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_DOG','TRA_CH4',10,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_DSB','TRA_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_GSB','TRA_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_KER','TRA_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_SKR','TRA_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_AVG','TRA_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_MTH','TRA_N2O',6.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_HFO','TRA_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_MGO','TRA_N2O',0.6,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_LNG','TRA_N2O',0.1,'[t/PJ]','');
INSERT INTO "CommodityEmissionFactor" VALUES ('TRA_DOG','TRA_N2O',0.6,'[t/PJ]','');

CREATE TABLE "EmissionAggregation" (
	"emis_comm"	        text,
    "emis_agg"          text,
    "emis_agg_weight"   real,
    "emis_agg_units"     text,
    "emis_agg_notes"    text,
    PRIMARY KEY("emis_comm","emis_agg","emis_agg_weight")
);
INSERT INTO "EmissionAggregation" VALUES ('BUI_CO2','TOT_CO2',1.00,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('IND_CO2','TOT_CO2',1.00,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('ELC_CO2','TOT_CO2',1.00,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('DIH_CO2','TOT_CO2',1.00,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('TRA_CO2','TOT_CO2',1.00,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('UPS_CO2','TOT_CO2',1.00,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('BUI_CH4','TOT_CH4',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('IND_CH4','TOT_CH4',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('ELC_CH4','TOT_CH4',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('DIH_CH4','TOT_CH4',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('TRA_CH4','TOT_CH4',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('UPS_CH4','TOT_CH4',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('BUI_N2O','TOT_N2O',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('IND_N2O','TOT_N2O',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('ELC_N2O','TOT_N2O',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('DIH_N2O','TOT_N2O',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('TRA_N2O','TOT_N2O',1.00E-03,'[kt/act]','');
INSERT INTO "EmissionAggregation" VALUES ('UPS_N2O','TOT_N2O',1.00E-03,'[kt/act]','');

CREATE TABLE "Efficiency" (
	"regions"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"efficiency"	real CHECK("efficiency" > 0),
	"eff_notes"	text,
	PRIMARY KEY("regions","input_comm","tech","vintage","output_comm"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name")
);
-- Buildings sector
-- Fuel technologies
INSERT INTO "Efficiency" VALUES ('NO4','OIL_DSL','BUI_FT_DSB',2019,'BUI_DSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BIO_DSL','BUI_FT_DSB',2019,'BUI_DSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','SYN_DSL','BUI_FT_DSB',2019,'BUI_DSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_NGA','BUI_FT_NGA',2020,'BUI_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','WOO','BUI_FT_WOO',2020,'BUI_WST',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','WOO','BUI_FT_WOO',2020,'BUI_WPL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','GEO','BUI_FT_GEO',2020,'BUI_GEO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_DH','BUI_FT_DIH',2020,'BUI_DH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','BUI_FT_ELC',2020,'BUI_ELC',1.0,'PJ/PJ');
--Production technologies
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_SC_ROO',2020,'BUI_SC',2.43,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_SC_AHP',2020,'BUI_SC',3.30,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_NGA','BUI_SH_CEN',2020,'BUI_SH',0.75,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_NGA','BUI_SH_CEN',2020,'BUI_sSH',0.75,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_DSB','BUI_SH_DSB',2020,'BUI_SH',0.55,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_DSB','BUI_SH_DSB',2020,'BUI_sSH',0.55,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_SH_ELC',2020,'BUI_SH',0.80,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_SH_ELC',2020,'BUI_sSH',0.80,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_SH_AHP',2020,'BUI_SH',3.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_SH_AHP',2020,'BUI_sSH',3.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_DH','BUI_SH_DIH',2020,'BUI_SH',1.00,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_DH','BUI_SH_DIH',2020,'BUI_sSH',1.00,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_WST','BUI_SH_WST',2020,'BUI_SH',0.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_WST','BUI_SH_WST',2020,'BUI_sSH',0.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_WPL','BUI_SH_WPL',2020,'BUI_SH',0.74,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_WPL','BUI_SH_WPL',2020,'BUI_sSH',0.74,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_GEO','BUI_SH_GEO',2020,'BUI_SH',2.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_GEO','BUI_SH_GEO',2020,'BUI_sSH',2.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_WH_ELC',2020,'BUI_WH',0.80,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_WH_ELC',2020,'BUI_sWH',0.80,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_DH','BUI_WH_DIH',2020,'BUI_WH',1.00,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_DH','BUI_WH_DIH',2020,'BUI_sWH',1.00,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_WPL','BUI_WH_WPL',2020,'BUI_WH',0.70,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_WPL','BUI_WH_WPL',2020,'BUI_sWH',0.70,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_NGA','BUI_WH_NGA',2020,'BUI_WH',0.70,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_NGA','BUI_WH_NGA',2020,'BUI_sWH',0.70,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_WH_AHP',2020,'BUI_WH',3.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_WH_AHP',2020,'BUI_sWH',3.50,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_AL_ELA',2019,'BUI_AL',0.90,'PJ/GW');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_AL_ELA',2019,'BUI_sAL',0.90,'PJ/GW');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_AL_ELB',2019,'BUI_AL',0.75,'PJ/GW');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_AL_ELB',2019,'BUI_sAL',0.75,'PJ/GW');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_AL_ELC',2019,'BUI_AL',0.50,'PJ/GW');
INSERT INTO "Efficiency" VALUES ('NO4','BUI_ELC','BUI_AL_ELC',2019,'BUI_sAL',0.50,'PJ/GW');
--Industry sector
-- Fuel technologies
INSERT INTO "Efficiency" VALUES ('NO4','DIH_DH','IND_FT_DIH',2020,'IND_DH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','IND_FT_ELC',2020,'IND_ELC',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_HFO','IND_FT_OIL',2020,'IND_OIL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_FGA','IND_FT_OIL',2020,'IND_FGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_NGA','IND_FT_NGA',2020,'IND_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','COA','IND_FT_COA',2020,'IND_COA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','WOO','IND_FT_WST',2020,'IND_WST',1.0,'PJ/PJ');
-- Production technologies
INSERT INTO "Efficiency" VALUES ('NO4','IND_DH','IND_DH_DIH',2020,'IND_SWH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_DH_DIH',2020,'IND_SWH',1.0,'PJ/PJ'); -- PROVIDING ALTERNATIVES TO HEATING PURPOSES WITHOUT ADDING FURTHER TECHNOLOGIES
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_DH_DIH',2020,'IND_SWH',1.0,'PJ/PJ'); -- PROVIDING ALTERNATIVES TO HEATING PURPOSES WITHOUT ADDING FURTHER TECHNOLOGIES
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_DH_DIH',2020,'IND_SWH',1.0,'PJ/PJ'); -- PROVIDING ALTERNATIVES TO HEATING PURPOSES WITHOUT ADDING FURTHER TECHNOLOGIES
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_DH_DIH',2020,'IND_SWH',1.0,'PJ/PJ'); -- PROVIDING ALTERNATIVES TO HEATING PURPOSES WITHOUT ADDING FURTHER TECHNOLOGIES
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_DH_DIH',2020,'IND_SWH',1.0,'PJ/PJ'); -- PROVIDING ALTERNATIVES TO HEATING PURPOSES WITHOUT ADDING FURTHER TECHNOLOGIES
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_MIN_PRO',2020,'IND_MIN',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_MIN_PRO',2020,'IND_MIN',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_MIN_PRO',2020,'IND_MIN',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_MIN_PRO',2020,'IND_MIN',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_MIN_PRO',2020,'IND_MIN',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_MIN_PRO',2020,'IND_MIN',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_FeB_PRO',2020,'IND_FeB',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_FeB_PRO',2020,'IND_FeB',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_FeB_PRO',2020,'IND_FeB',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_FeB_PRO',2020,'IND_FeB',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_FeB_PRO',2020,'IND_FeB',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_FeB_PRO',2020,'IND_FeB',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_TEX_PRO',2020,'IND_TEX',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_TEX_PRO',2020,'IND_TEX',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_TEX_PRO',2020,'IND_TEX',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_TEX_PRO',2020,'IND_TEX',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_TEX_PRO',2020,'IND_TEX',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_TEX_PRO',2020,'IND_TEX',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_WeP_PRO',2020,'IND_WeP',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_WeP_PRO',2020,'IND_WeP',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_WeP_PRO',2020,'IND_WeP',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_WeP_PRO',2020,'IND_WeP',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_WeP_PRO',2020,'IND_WeP',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_WeP_PRO',2020,'IND_WeP',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_PTC_PRO',2020,'IND_PTC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_PTC_PRO',2020,'IND_PTC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_PTC_PRO',2020,'IND_PTC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_PTC_PRO',2020,'IND_PTC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_PTC_PRO',2020,'IND_PTC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_PTC_PRO',2020,'IND_PTC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_MET_PRO',2020,'IND_MET',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_MET_PRO',2020,'IND_MET',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_MET_PRO',2020,'IND_MET',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_MET_PRO',2020,'IND_MET',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_MET_PRO',2020,'IND_MET',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_MET_PRO',2020,'IND_MET',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_OTH_PRO',2020,'IND_OTH',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_OTH_PRO',2020,'IND_OTH',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_OTH_PRO',2020,'IND_OTH',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_OTH_PRO',2020,'IND_OTH',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_OTH_PRO',2020,'IND_OTH',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_OTH_PRO',2020,'IND_OTH',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_ELC','IND_NEC_PRO',2020,'IND_NEC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_OIL','IND_NEC_PRO',2020,'IND_NEC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_NGA','IND_NEC_PRO',2020,'IND_NEC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_COA','IND_NEC_PRO',2020,'IND_NEC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_WST','IND_NEC_PRO',2020,'IND_NEC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
INSERT INTO "Efficiency" VALUES ('NO4','IND_FGA','IND_NEC_PRO',2020,'IND_NEC',1.0,'PJ/PJ');  -- Industry demands are equal to energy consumption -> Efficiency=1.0
-- Power sector
-- Fuel technologies
INSERT INTO "Efficiency" VALUES ('NO4','HYD','ELC_FT_HYD',2020,'ELC_HYD',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','WIN','ELC_FT_WIN',2020,'ELC_WIN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','SOL','ELC_FT_SOL',2020,'ELC_SOL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','GEO','ELC_FT_GEO',2020,'ELC_GEO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','NUC','ELC_FT_NUC',2040,'ELC_NUC',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_FGA','ELC_FT_FGA',2019,'ELC_FGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2','ELC_FT_H2C',2020,'ELC_H2C',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BIO','ELC_FT_BIO',2020,'ELC_BIO',1.0,'PJ/PJ');
-- Production technologies
INSERT INTO "Efficiency" VALUES ('NO4','ELC_WIN','ELC_WIN_ONS',2019,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_WIN','ELC_WIN_OFF',2035,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_GEO','ELC_GEO_HEP',2040,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_GEO','ELC_GEO_HEP',2040,'ELC_HEW',1.0,'PJ/PJ'); -- TEMOA-Italy corrected for useful heat in DH (from 0.8)
INSERT INTO "Efficiency" VALUES ('NO4','ELC_HYD','ELC_HYD_ROR',2019,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_HYD','ELC_HYD_RES',2019,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_SOL','ELC_SOL_PHV',2020,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_FGA','ELC_FGA_THE',2019,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_FGA','ELC_FGA_THE',2019,'ELC_HEW',1.0,'PJ/PJ'); -- to consider useful heat in DH
INSERT INTO "Efficiency" VALUES ('NO4','ELC_NUC','ELC_NUC_SMR',2040,'ELC_CEN',0.33,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_BIO','ELC_BIO_SLB',2020,'ELC_CEN',0.49,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_H2C','ELC_H2C_PEM',2020,'ELC_CEN',0.45,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_H2C','ELC_H2C_PEM',2030,'ELC_CEN',0.46,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_H2C','ELC_H2C_PEM',2040,'ELC_CEN',0.47,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','ELC_DEM_DMY',2019,'DEM_ELC',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','ELC_EXP_FIN',2019,'DEM_FIN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','ELC_EXP_SWE',2019,'DEM_SWE',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','ELC_EXP_NO3',2019,'DEM_NO3',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','ELC_IMP_FIN',2019,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','ELC_IMP_SWE',2019,'ELC_CEN',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','ELC_IMP_NO3',2019,'ELC_CEN',1.0,'PJ/PJ');
-- Storage sector
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','STG_ELC_HYD',2035,'ELC_CEN',0.72,'PJ/PJ'); -- from TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','STG_ELC_HYD',2050,'ELC_CEN',0.80,'PJ/PJ'); -- from TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','STG_ELC_BTT',2030,'ELC_CEN',0.85,'PJ/PJ'); -- from TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','STG_ELC_VRFB',2030,'ELC_CEN',0.65,'PJ/PJ'); -- from TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','H2','STG_H2_TNK',2030,'H2',1.0,'PJ/PJ'); -- from TEMOA-Italy
-- District heating sector
-- Fuel technologies
INSERT INTO "Efficiency" VALUES ('NO4','BIO','DIH_FT_BIO',2020,'DIH_BIO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','COA','DIH_FT_COA',2020,'DIH_COA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_HFO','DIH_FT_OIL',2020,'DIH_OIL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_FGA','DIH_FT_FGA',2020,'DIH_FGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','WAS','DIH_FT_WAS',2020,'DIH_WAS',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','WOO','DIH_FT_WOO',2020,'DIH_WST',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_HEW','DIH_FT_HEW',2040,'DIH_HEW',0.08,'PJ/PJ'); -- To simulate heat losses in the grid (already reduced from original value in ELC_HEW production)
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','DIH_FT_ELC',2020,'DIH_ELC',1.0,'PJ/PJ');
-- Production technologies
INSERT INTO "Efficiency" VALUES ('NO4','DIH_WAS','DIH_INC_SWH',2019,'DIH_DH',0.76,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_OIL','DIH_OIL_SWH',2019,'DIH_DH',0.82,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_WST','DIH_WOO_SWH',2019,'DIH_DH',0.63,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_BIO','DIH_BIO_SWH',2019,'DIH_DH',0.92,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_COA','DIH_COA_SWH',2019,'DIH_DH',0.34,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_ELC','DIH_ELC_SWH',2019,'DIH_DH',0.76,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_FGA','DIH_FGA_SWH',2019,'DIH_DH',0.92,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','DIH_HEW','DIH_HEW_SWH',2019,'DIH_DH',1.0,'PJ/PJ');
-- Transport sector
-- Fuel technologies
INSERT INTO "Efficiency" VALUES ('NO4','H2','TRA_FT_H2C',2019,'TRA_H2C',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','AMM','TRA_FT_AMM',2019,'TRA_AMM',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_DSL','TRA_FT_DSB',2019,'TRA_DSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BIO_DSL','TRA_FT_DSB',2019,'TRA_DSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','SYN_DSL','TRA_FT_DSB',2019,'TRA_DSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_GSL','TRA_FT_GSB',2019,'TRA_GSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BIO_ETH','TRA_FT_GSB',2019,'TRA_GSB',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','TRA_FT_ELC',2019,'TRA_ELC',0.93,'PJ/PJ'); -- from TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','OIL_JTK','TRA_FT_KER',2019,'TRA_KER',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_JTK','TRA_FT_SKR',2019,'TRA_SKR',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','SYN_KER','TRA_FT_SKR',2019,'TRA_SKR',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_AVG','TRA_FT_AVG',2019,'TRA_AVG',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BIO_MTH','TRA_FT_MTH',2019,'TRA_MTH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','SYN_MTH','TRA_FT_MTH',2019,'TRA_MTH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_HFO','TRA_FT_HFO',2019,'TRA_HFO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_DSL','TRA_FT_MGO',2019,'TRA_MGO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_HFO','TRA_FT_MGO',2019,'TRA_MGO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_NGA','TRA_FT_LNG',2019,'TRA_LNG',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','OIL_HFO','TRA_FT_DOG',2019,'TRA_DOG',1.0,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','IND_CH_MTH','TRA_FT_MTH',2019,'TRA_MTH',19.90,'PJ/Mt'); -- from TEMOA-Italy
-- INSERT INTO "Efficiency" VALUES ('NO4','IND_CH_AMM','TRA_FT_AMM',2019,'TRA_AMM',1.0,'PJ/PJ');
-- Road technologies
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_CAR_DSB',2019,'TRA_PAS_CAR',0.599,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_CAR_DSB',2050,'TRA_PAS_CAR',1.136,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_CAR_DHY',2019,'TRA_PAS_CAR',1.220,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_CAR_DHY',2050,'TRA_PAS_CAR',3.333,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_CAR_GSB',2019,'TRA_PAS_CAR',0.483,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_CAR_GSB',2050,'TRA_PAS_CAR',0.862,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_CAR_GHY',2019,'TRA_PAS_CAR',0.926,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_CAR_GHY',2050,'TRA_PAS_CAR',2.381,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_CAR_ELC',2019,'TRA_PAS_CAR',1.290,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 1.613) - DOE 2024 (Source/Norway directory)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_CAR_ELC',2050,'TRA_PAS_CAR',1.818,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 2.273) - DOE 2024 (Source/Norway directory)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_CAR_DHY',2019,'TRA_PAS_CAR',1.026,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 1.282) - DOE 2024 (Source/Norway directory)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_CAR_DHY',2050,'TRA_PAS_CAR',1.250,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 1.563) - DOE 2024 (Source/Norway directory)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_CAR_GHY',2019,'TRA_PAS_CAR',1.053,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 1.316) - DOE 2024 (Source/Norway directory)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_CAR_GHY',2050,'TRA_PAS_CAR',1.333,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 1.667) - DOE 2024 (Source/Norway directory)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_CAR_H2C',2030,'TRA_PAS_CAR',1.099,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_CAR_H2C',2050,'TRA_PAS_CAR',1.471,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_2WH_GSB',2019,'TRA_PAS_2WH',1.000,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_2WH_GSB',2050,'TRA_PAS_2WH',1.259,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_2WH_ELC',2019,'TRA_PAS_2WH',2.774,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 3.468)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_2WH_ELC',2050,'TRA_PAS_2WH',3.230,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 4.037)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_BUS_DSB',2019,'TRA_PAS_BUS',0.059,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_BUS_DSB',2050,'TRA_PAS_BUS',0.069,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_BUS_H2C',2030,'TRA_PAS_BUS',0.094,'Bvkm/PJ'); -- FROM TEMOA-ITALY
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_BUS_H2C',2050,'TRA_PAS_BUS',0.127,'Bvkm/PJ'); -- FROM TEMOA-ITALY
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_BUS_ELC',2020,'TRA_PAS_BUS',0.148,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_BUS_ELC',2050,'TRA_PAS_BUS',0.172,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_LCV_DSB',2019,'TRA_FRG_LCV',0.311,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_LCV_DSB',2050,'TRA_FRG_LCV',0.362,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_LCV_GSB',2019,'TRA_FRG_LCV',0.271,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_ROA_LCV_GSB',2050,'TRA_FRG_LCV',0.316,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_LCV_ELC',2019,'TRA_FRG_LCV',0.867,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 1.084)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_LCV_ELC',2050,'TRA_FRG_LCV',1.010,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 1.262)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_LCV_H2C',2030,'TRA_FRG_LCV',0.575,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_LCV_H2C',2050,'TRA_FRG_LCV',0.782,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_HTR_DSB',2019,'TRA_FRG_HTR',0.044,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_ROA_HTR_DSB',2050,'TRA_FRG_HTR',0.052,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_HTR_ELC',2020,'TRA_FRG_HTR',0.098,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 0.122)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_ROA_HTR_ELC',2050,'TRA_FRG_HTR',0.114,'Bvkm/PJ'); -- -20% for arctic environment (previous value: 0.142)
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_HTR_H2C',2030,'TRA_FRG_HTR',0.077,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_ROA_HTR_H2C',2050,'TRA_FRG_HTR',0.105,'Bvkm/PJ');
-- Non road technologies
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_RAI_PAS_DSB',2019,'TRA_PAS_RAI_REG',1.39E-02,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_RAI_PAS_DSB',2050,'TRA_PAS_RAI_REG',1.72E-02,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_RAI_PAS_DSB',2019,'TRA_PAS_RAI_NAT',1.39E-02,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_RAI_PAS_DSB',2050,'TRA_PAS_RAI_NAT',1.72E-02,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_RAI_FRG_NAT_DSB',2019,'TRA_FRG_RAI_NAT',9.11E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DSB','TRA_RAI_FRG_NAT_DSB',2050,'TRA_FRG_RAI_NAT',1.12E-02,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_RAI_FRG_INT_ELC',2019,'TRA_FRG_RAI_INT',9.11E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_ELC','TRA_RAI_FRG_INT_ELC',2050,'TRA_FRG_RAI_INT',1.12E-02,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_HFO','TRA_NAV_NAT_HFO',2019,'TRA_PAS_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_HFO','TRA_NAV_NAT_HFO',2050,'TRA_PAS_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_NAT_MGO',2019,'TRA_PAS_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_NAT_MGO',2050,'TRA_PAS_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_LNG','TRA_NAV_NAT_LNG',2019,'TRA_PAS_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_LNG','TRA_NAV_NAT_LNG',2050,'TRA_PAS_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_NAV_NAT_GSB',2019,'TRA_PAS_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_NAV_NAT_GSB',2050,'TRA_PAS_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_AMM','TRA_NAV_NAT_AMM',2030,'TRA_PAS_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_AMM','TRA_NAV_NAT_AMM',2050,'TRA_PAS_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_NAT_MGO',2019,'TRA_FRG_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_NAT_MGO',2050,'TRA_FRG_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_LNG','TRA_NAV_FRG_NAT_LNG',2019,'TRA_FRG_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_LNG','TRA_NAV_FRG_NAT_LNG',2050,'TRA_FRG_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_NAV_FRG_NAT_GSB',2019,'TRA_FRG_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_GSB','TRA_NAV_FRG_NAT_GSB',2050,'TRA_FRG_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_HFO','TRA_NAV_FRG_NAT_HFO',2019,'TRA_FRG_NAV_NAT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_HFO','TRA_NAV_FRG_NAT_HFO',2050,'TRA_FRG_NAV_NAT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MTH','TRA_NAV_FRG_NAT_MTH',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MTH','TRA_NAV_FRG_NAT_MTH',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_NAV_FRG_NAT_H2C',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_NAV_FRG_NAT_H2C',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DOG','TRA_NAV_FRG_NAT_DOG',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DOG','TRA_NAV_FRG_NAT_DOG',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_AMM','TRA_NAV_FRG_NAT_AMM',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_AMM','TRA_NAV_FRG_NAT_AMM',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_INT_MGO',2019,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_INT_MGO',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_INT_LNG',2019,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_INT_LNG',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_INT_GSB',2019,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MGO','TRA_NAV_FRG_INT_GSB',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_HFO','TRA_NAV_FRG_INT_HFO',2019,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_HFO','TRA_NAV_FRG_INT_HFO',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MTH','TRA_NAV_FRG_INT_MTH',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_MTH','TRA_NAV_FRG_INT_MTH',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_NAV_FRG_INT_H2C',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_NAV_FRG_INT_H2C',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DOG','TRA_NAV_FRG_INT_DOG',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_DOG','TRA_NAV_FRG_INT_DOG',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_AMM','TRA_NAV_FRG_INT_AMM',2030,'TRA_FRG_NAV_INT',5.50E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_AMM','TRA_NAV_FRG_INT_AMM',2050,'TRA_FRG_NAV_INT',5.96E-03,'Bvkm/PJ'); -- INCREASED from E-04 to E-03 - TEMOA-Italy
INSERT INTO "Efficiency" VALUES ('NO4','TRA_KER','TRA_AIR_NAT_KER',2019,'TRA_PAS_AVI_NAT',7.87E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_KER','TRA_AIR_INT_KER',2019,'TRA_PAS_AVI_INT',3.35E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_AVG','TRA_AIR_NAT_AVG',2020,'TRA_PAS_AVI_NAT',7.40E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_SKR','TRA_AIR_NAT_SKR',2030,'TRA_PAS_AVI_NAT',7.87E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_SKR','TRA_AIR_INT_SKR',2030,'TRA_PAS_AVI_INT',3.35E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_AIR_NAT_H2C',2040,'TRA_PAS_AVI_NAT',8.18E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_AIR_INT_H2C',2040,'TRA_PAS_AVI_INT',2.36E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_KER','TRA_AIR_FRG_NAT_KER',2019,'TRA_FRG_AVI_NAT',7.87E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_KER','TRA_AIR_FRG_INT_KER',2019,'TRA_FRG_AVI_INT',3.35E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_SKR','TRA_AIR_FRG_NAT_SKR',2030,'TRA_FRG_AVI_NAT',7.87E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_SKR','TRA_AIR_FRG_INT_SKR',2030,'TRA_FRG_AVI_INT',3.35E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_AIR_FRG_NAT_H2C',2040,'TRA_FRG_AVI_NAT',8.18E-03,'Bvkm/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','TRA_H2C','TRA_AIR_FRG_INT_H2C',2040,'TRA_FRG_AVI_INT',2.36E-03,'Bvkm/PJ');
-- Hydrogen sector
-- Fuel technologies
INSERT INTO "Efficiency" VALUES ('NO4','ELC_CEN','H2_FT_ELC',2020,'H2_ELC',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_NGA','H2_FT_NGA',2030,'H2_NGA',1.0,'PJ/PJ');
--INSERT INTO "Efficiency" VALUES ('NO4','COA','H2_FT_COA',2020,'H2_COA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','BIO','H2_FT_BIO',2030,'H2_BIO',1.0,'PJ/PJ');
--INSERT INTO "Efficiency" VALUES ('NO4','OIL_HFO','H2_FT_OIL',2020,'H2_OIL',1.0,'PJ/PJ');
-- Hydrogen production
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_SR_NGA',2030,'H2',0.71,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_NGA','H2_SR_NGA',2030,'H2',0.71,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_GS_COA',2020,'H2',0.56,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_COA','H2_GS_COA',2020,'H2',0.56,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_GS_COA',2025,'H2',0.56,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_COA','H2_GS_COA',2025,'H2',0.56,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_GS_COA',2030,'H2',0.68,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_COA','H2_GS_COA',2030,'H2',0.68,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_PO_OIL',2020,'H2',0.73,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2_OIL','H2_PO_OIL',2020,'H2',0.73,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_SR_BIO',2030,'H2',0.71,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_BIO','H2_SR_BIO',2030,'H2',0.71,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_GS_BIO',2030,'H2',0.32,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_BIO','H2_GS_BIO',2030,'H2',0.32,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_EL_ALK',2030,'H2',0.67,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_EL_ALK',2050,'H2',0.67,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_EL_PEM',2030,'H2',0.68,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_EL_PEM',2050,'H2',0.68,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_EL_SOEC',2035,'H2',0.88,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_EL_SOEC',2050,'H2',0.94,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','H2_ELC','H2_EL_AEM',2050,'H2',0.59,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','H2','H2_SF_DMY',2019,'H2_SF',1.00,'PJ/PJ');
-- Upstream sector
-- Fuel technologies
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_AMM',2020,'AMM',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_COA',2020,'COA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_WAS',2020,'WAS',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_WOO',2020,'WOO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_NUC',2020,'NUC',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_BIO',2020,'BIO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_BIO_DSL',2020,'BIO_DSL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_BIO_ETH',2020,'BIO_ETH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_BIO_MTH',2020,'BIO_MTH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_SYN_MTH',2020,'SYN_MTH',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_SYN_DSL',2020,'SYN_DSL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_SYN_KER',2020,'SYN_KER',1.0,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_SYN_NGA',2020,'SYN_NGA',1.0,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_FT_HET',2020,'HET',1.0,'PJ/PJ');
-- Production technologies
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_XTR_FIX',2019,'UPS_OIL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_XTR_FIX',2019,'UPS_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_XTR_FPSO',2019,'UPS_OIL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_XTR_FPSO',2019,'UPS_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_XTR_HUB',2019,'UPS_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_XTR_SUB',2019,'UPS_OIL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_XTR_SUB',2019,'UPS_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_JTK',2019,'OIL_JTK',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_AVG',2019,'OIL_AVG',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_FGA',2019,'OIL_FGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_HFO',2019,'OIL_HFO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_DSL',2019,'OIL_DSL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_GSL',2019,'OIL_GSL',1.0,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_OIL',2019,'UPS_OIL',1.0,'PJ/PJ');
-- INSERT INTO "Efficiency" VALUES ('NO4','ethos','UPS_IMP_NGA',2019,'UPS_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_OIL','UPS_EXP_OIL',2019,'DEM_OIL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_NGA','UPS_EXP_NGA',2019,'DEM_NGA',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_OIL','UPS_REF_OIL',2019,'OIL_JTK',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_OIL','UPS_REF_OIL',2019,'OIL_AVG',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_OIL','UPS_REF_OIL',2019,'OIL_HFO',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_OIL','UPS_REF_OIL',2019,'OIL_DSL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_OIL','UPS_REF_OIL',2019,'OIL_GSL',1.0,'PJ/PJ');
INSERT INTO "Efficiency" VALUES ('NO4','UPS_OIL','UPS_REF_OIL',2019,'OIL_FGA',1.0,'PJ/PJ');

CREATE TABLE "DiscountRate" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"tech_rate"	real,
	"tech_rate_notes"	text,
	PRIMARY KEY("regions","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
);
-- Power sector
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_WIN_ONS',2020,0.076,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_WIN_OFF',2035,0.086,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_GEO_HEP',2040,0.052,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_HYD_ROR',2020,0.052,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_HYD_RES',2020,0.052,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_SOL_PHV',2020,0.057,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_FGA_THE',2020,0.027,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_BIO_SLB',2020,0.067,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_NUC_SMR',2040,0.1,'');
INSERT INTO "DiscountRate" VALUES ('NO4','ELC_H2C_PEM',2020,0.08,'');
-- Transport sector
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_DSB',2020,0.073,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_GSB',2020,0.073,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_ELC',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_GHY',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_DHY',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_H2C',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_2WH_GSB',2020,0.049,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_2WH_ELC',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_BUS_DSB',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_BUS_ELC',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_BUS_H2C',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_RAI_PAS_DSB',2020,0.042,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_NAT_KER',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_NAT_SKR',2030,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_NAT_AVG',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_INT_KER',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_INT_SKR',2030,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_NAT_H2C',2040,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_INT_H2C',2040,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_NAT_MGO',2020,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_NAT_LNG',2020,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_NAT_GSB',2020,0.073,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_NAT_HFO',2020,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_LCV_DSB',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_LCV_GSB',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_HTR_DSB',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_LCV_ELC',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_HTR_ELC',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_LCV_H2C',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_HTR_H2C',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_RAI_FRG_NAT_DSB',2020,0.042,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_RAI_FRG_INT_ELC',2020,0.24,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_FRG_NAT_KER',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_FRG_INT_KER',2020,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_FRG_NAT_SKR',2030,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_FRG_INT_SKR',2030,0.06,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_FRG_NAT_H2C',2040,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_AIR_FRG_INT_H2C',2040,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_MGO',2020,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_LNG',2020,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_GSB',2020,0.073,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_HFO',2020,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_DOG',2030,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_MTH',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_AMM',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_NAT_H2C',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_MGO',2020,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_LNG',2020,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_GSB',2020,0.073,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_HFO',2020,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_DOG',2030,0.058,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_MTH',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_AMM',2030,0.32,'');
INSERT INTO "DiscountRate" VALUES ('NO4','TRA_NAV_FRG_INT_H2C',2030,0.32,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_DSL',2020,0.073,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_CAR_GSL',2020,0.073,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_2WH_GSL',2020,0.049,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_BUS_DSL',2020,0.06,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_BUS_NGA',2025,0.06,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_LCV_DSL',2020,0.06,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_LCV_GSL',2020,0.06,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_HTR_DSL',2020,0.06,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_ROA_HTR_SNG',2020,0.06,'');
-- INSERT INTO "DiscountRate" VALUES ('NO4','TRA_RAI_FRG_DSL',2020,0.042,'');
--Hydrogen sector
INSERT INTO "DiscountRate" VALUES ('NO4','H2_SR_NGA',2030,0.080,'');
--INSERT INTO "DiscountRate" VALUES ('NO4','H2_GS_COA',2020,0.080,'');
--INSERT INTO "DiscountRate" VALUES ('NO4','H2_PO_OIL',2020,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','H2_SR_BIO',2030,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','H2_GS_BIO',2030,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','H2_EL_ALK',2030,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','H2_EL_PEM',2030,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','H2_EL_SOEC',2035,0.080,'');
INSERT INTO "DiscountRate" VALUES ('NO4','H2_EL_AEM',2050,0.080,'');
-- Storage sector
INSERT INTO "DiscountRate" VALUES ('NO4','STG_ELC_BTT',2030,0.080,''); -- TEMOA-Italy
INSERT INTO "DiscountRate" VALUES ('NO4','STG_ELC_VRFB',2030,0.080,''); -- TEMOA-Italy
INSERT INTO "DiscountRate" VALUES ('NO4','STG_H2_TNK',2030,0.080,''); -- TEMOA-Italy


CREATE TABLE "DemandSpecificDistribution" (
	"regions"	text,
	"season_name"	text,
	"time_of_day_name"	text,
	"demand_name"	text,
	"dds"	real CHECK("dds" >= 0 AND "dds" <= 1),
	"dds_notes"	text,
	PRIMARY KEY("regions","season_name","time_of_day_name","demand_name"),
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("demand_name") REFERENCES "commodities"("comm_name")
);
-- Building services Space heating
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','BUI_sSH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','BUI_sSH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','BUI_sSH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','BUI_sSH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','BUI_sSH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','BUI_sSH',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','BUI_sSH',1.76E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','BUI_sSH',2.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','BUI_sSH',2.65E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','BUI_sSH',2.98E-02,''); -- 4.40E-04 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','BUI_sSH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','BUI_sSH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','BUI_sSH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','BUI_sSH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','BUI_sSH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','BUI_sSH',2.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','BUI_sSH',1.76E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','BUI_sSH',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','BUI_sSH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','BUI_sSH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','BUI_sSH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','BUI_sSH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','BUI_sSH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','BUI_sSH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','BUI_sSH',8.40E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','BUI_sSH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','BUI_sSH',1.89E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','BUI_sSH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','BUI_sSH',6.30E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','BUI_sSH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','BUI_sSH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','BUI_sSH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','BUI_sSH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','BUI_sSH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','BUI_sSH',5.04E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','BUI_sSH',7.56E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','BUI_sSH',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','BUI_sSH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','BUI_sSH',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','BUI_sSH',7.56E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','BUI_sSH',3.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','BUI_sSH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','BUI_sSH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','BUI_sSH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','BUI_sSH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','BUI_sSH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','BUI_sSH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','BUI_sSH',8.40E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','BUI_sSH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','BUI_sSH',1.89E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','BUI_sSH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','BUI_sSH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','BUI_sSH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','BUI_sSH',6.30E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','BUI_sSH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','BUI_sSH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','BUI_sSH',2.10E-03,'');
-- Building services water heating
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','BUI_sWH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','BUI_sWH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','BUI_sWH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','BUI_sWH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','BUI_sWH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','BUI_sWH',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','BUI_sWH',1.76E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','BUI_sWH',2.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','BUI_sWH',2.65E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','BUI_sWH',2.98E-02,''); -- 4.40E-04 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','BUI_sWH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','BUI_sWH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','BUI_sWH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','BUI_sWH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','BUI_sWH',2.94E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','BUI_sWH',2.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','BUI_sWH',1.76E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','BUI_sWH',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','BUI_sWH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','BUI_sWH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','BUI_sWH',5.88E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','BUI_sWH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','BUI_sWH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','BUI_sWH',2.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','BUI_sWH',8.40E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','BUI_sWH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','BUI_sWH',1.89E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','BUI_sWH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','BUI_sWH',6.30E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','BUI_sWH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','BUI_sWH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','BUI_sWH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','BUI_sWH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','BUI_sWH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','BUI_sWH',5.04E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','BUI_sWH',7.56E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','BUI_sWH',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','BUI_sWH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','BUI_sWH',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','BUI_sWH',7.56E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','BUI_sWH',3.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','BUI_sWH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','BUI_sWH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','BUI_sWH',2.52E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','BUI_sWH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','BUI_sWH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','BUI_sWH',1.26E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','BUI_sWH',8.40E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','BUI_sWH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','BUI_sWH',1.89E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','BUI_sWH',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','BUI_sWH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','BUI_sWH',1.26E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','BUI_sWH',6.30E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','BUI_sWH',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','BUI_sWH',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','BUI_sWH',2.10E-03,'');
-- Building services appliances
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','BUI_sAL',4.90E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','BUI_sAL',4.90E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','BUI_sAL',4.90E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','BUI_sAL',4.90E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','BUI_sAL',7.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','BUI_sAL',1.47E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','BUI_sAL',1.96E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','BUI_sAL',2.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','BUI_sAL',2.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','BUI_sAL',2.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','BUI_sAL',2.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','BUI_sAL',2.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','BUI_sAL',2.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','BUI_sAL',2.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','BUI_sAL',2.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','BUI_sAL',2.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','BUI_sAL',1.71E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','BUI_sAL',1.22E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','BUI_sAL',9.79E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','BUI_sAL',7.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','BUI_sAL',7.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','BUI_sAL',7.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','BUI_sAL',7.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','BUI_sAL',4.90E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','BUI_sAL',1.40E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','BUI_sAL',1.57E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','BUI_sAL',1.57E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','BUI_sAL',1.22E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','BUI_sAL',8.74E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','BUI_sAL',6.99E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','BUI_sAL',1.75E-03,''); -- -3.50E-04 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','BUI_sAL',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','BUI_sAL',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','BUI_sAL',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','BUI_sAL',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','BUI_sAL',6.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','BUI_sAL',8.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','BUI_sAL',9.44E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','BUI_sAL',9.44E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','BUI_sAL',7.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','BUI_sAL',4.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','BUI_sAL',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','BUI_sAL',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','BUI_sAL',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','BUI_sAL',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','BUI_sAL',2.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','BUI_sAL',3.50E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','BUI_sAL',1.05E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','BUI_sAL',1.40E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','BUI_sAL',1.57E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','BUI_sAL',1.75E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','BUI_sAL',1.57E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','BUI_sAL',1.22E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','BUI_sAL',8.74E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','BUI_sAL',6.99E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','BUI_sAL',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','BUI_sAL',3.50E-03,'');
-- Building residential space heating
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','BUI_SH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','BUI_SH',8.90E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','BUI_SH',7.91E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','BUI_SH',7.91E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','BUI_SH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','BUI_SH',1.29E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','BUI_SH',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','BUI_SH',1.88E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','BUI_SH',2.00E-02,''); -- 2.00E-04 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','BUI_SH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','BUI_SH',1.48E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','BUI_SH',1.38E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','BUI_SH',1.48E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','BUI_SH',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','BUI_SH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','BUI_SH',1.78E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','BUI_SH',1.88E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','BUI_SH',1.98E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','BUI_SH',1.88E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','BUI_SH',1.78E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','BUI_SH',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','BUI_SH',1.38E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','BUI_SH',1.19E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','BUI_SH',1.09E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','BUI_SH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','BUI_SH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','BUI_SH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','BUI_SH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','BUI_SH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','BUI_SH',9.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','BUI_SH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','BUI_SH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','BUI_SH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','BUI_SH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','BUI_SH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','BUI_SH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','BUI_SH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','BUI_SH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','BUI_SH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','BUI_SH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','BUI_SH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','BUI_SH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','BUI_SH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','BUI_SH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','BUI_SH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','BUI_SH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','BUI_SH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','BUI_SH',7.77E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','BUI_SH',4.24E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','BUI_SH',3.81E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','BUI_SH',3.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','BUI_SH',3.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','BUI_SH',4.24E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','BUI_SH',5.51E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','BUI_SH',6.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','BUI_SH',8.05E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','BUI_SH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','BUI_SH',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','BUI_SH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','BUI_SH',5.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','BUI_SH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','BUI_SH',6.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','BUI_SH',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','BUI_SH',7.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','BUI_SH',8.05E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','BUI_SH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','BUI_SH',8.05E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','BUI_SH',7.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','BUI_SH',6.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','BUI_SH',5.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','BUI_SH',5.09E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','BUI_SH',4.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','BUI_SH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','BUI_SH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','BUI_SH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','BUI_SH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','BUI_SH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','BUI_SH',9.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','BUI_SH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','BUI_SH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','BUI_SH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','BUI_SH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','BUI_SH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','BUI_SH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','BUI_SH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','BUI_SH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','BUI_SH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','BUI_SH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','BUI_SH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','BUI_SH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','BUI_SH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','BUI_SH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','BUI_SH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','BUI_SH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','BUI_SH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','BUI_SH',7.77E-03,'');
-- Building residential water heating
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','BUI_WH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','BUI_WH',8.90E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','BUI_WH',7.91E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','BUI_WH',7.91E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','BUI_WH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','BUI_WH',1.29E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','BUI_WH',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','BUI_WH',1.88E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','BUI_WH',2.00E-02,''); -- 2.00E-04 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','BUI_WH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','BUI_WH',1.48E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','BUI_WH',1.38E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','BUI_WH',1.48E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','BUI_WH',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','BUI_WH',1.68E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','BUI_WH',1.78E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','BUI_WH',1.88E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','BUI_WH',1.98E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','BUI_WH',1.88E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','BUI_WH',1.78E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','BUI_WH',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','BUI_WH',1.38E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','BUI_WH',1.19E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','BUI_WH',1.09E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','BUI_WH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','BUI_WH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','BUI_WH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','BUI_WH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','BUI_WH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','BUI_WH',9.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','BUI_WH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','BUI_WH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','BUI_WH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','BUI_WH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','BUI_WH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','BUI_WH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','BUI_WH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','BUI_WH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','BUI_WH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','BUI_WH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','BUI_WH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','BUI_WH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','BUI_WH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','BUI_WH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','BUI_WH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','BUI_WH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','BUI_WH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','BUI_WH',7.77E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','BUI_WH',4.24E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','BUI_WH',3.81E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','BUI_WH',3.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','BUI_WH',3.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','BUI_WH',4.24E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','BUI_WH',5.51E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','BUI_WH',6.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','BUI_WH',8.05E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','BUI_WH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','BUI_WH',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','BUI_WH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','BUI_WH',5.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','BUI_WH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','BUI_WH',6.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','BUI_WH',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','BUI_WH',7.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','BUI_WH',8.05E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','BUI_WH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','BUI_WH',8.05E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','BUI_WH',7.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','BUI_WH',6.78E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','BUI_WH',5.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','BUI_WH',5.09E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','BUI_WH',4.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','BUI_WH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','BUI_WH',6.36E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','BUI_WH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','BUI_WH',5.65E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','BUI_WH',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','BUI_WH',9.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','BUI_WH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','BUI_WH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','BUI_WH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','BUI_WH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','BUI_WH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','BUI_WH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','BUI_WH',1.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','BUI_WH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','BUI_WH',1.20E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','BUI_WH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','BUI_WH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','BUI_WH',1.41E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','BUI_WH',1.34E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','BUI_WH',1.27E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','BUI_WH',1.13E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','BUI_WH',9.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','BUI_WH',8.48E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','BUI_WH',7.77E-03,'');
-- Building residential appliances
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','BUI_AL',1.44E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','BUI_AL',1.24E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','BUI_AL',1.24E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','BUI_AL',1.44E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','BUI_AL',1.65E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','BUI_AL',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','BUI_AL',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','BUI_AL',1.65E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','BUI_AL',1.24E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','BUI_AL',1.24E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','BUI_AL',1.44E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','BUI_AL',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','BUI_AL',2.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','BUI_AL',2.06E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','BUI_AL',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','BUI_AL',1.65E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','BUI_AL',1.44E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','BUI_AL',1.24E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','BUI_AL',1.24E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','BUI_AL',1.24E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','BUI_AL',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','BUI_AL',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','BUI_AL',1.47E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','BUI_AL',1.47E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','BUI_AL',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','BUI_AL',6.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','BUI_AL',5.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','BUI_AL',4.26E-03,''); -- -1.50E-04 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','BUI_AL',4.41E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','BUI_AL',5.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','BUI_AL',6.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','BUI_AL',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','BUI_AL',7.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','BUI_AL',7.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','BUI_AL',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','BUI_AL',5.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','BUI_AL',4.41E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','BUI_AL',4.41E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','BUI_AL',5.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','BUI_AL',6.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','BUI_AL',7.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','BUI_AL',7.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','BUI_AL',7.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','BUI_AL',6.18E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','BUI_AL',5.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','BUI_AL',5.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','BUI_AL',5.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','BUI_AL',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','BUI_AL',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','BUI_AL',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','BUI_AL',1.47E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','BUI_AL',1.47E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','BUI_AL',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','BUI_AL',1.18E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','BUI_AL',1.03E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','BUI_AL',8.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','BUI_AL',8.82E-03,'');
-- Primary industries
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','DEM_ELC',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','DEM_ELC',6.74E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','DEM_ELC',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','DEM_ELC',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','DEM_ELC',8.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','DEM_ELC',1.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','DEM_ELC',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','DEM_ELC',2.12E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','DEM_ELC',2.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','DEM_ELC',2.21E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','DEM_ELC',2.09E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','DEM_ELC',2.02E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','DEM_ELC',2.04E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','DEM_ELC',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','DEM_ELC',2.17E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','DEM_ELC',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','DEM_ELC',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','DEM_ELC',1.51E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','DEM_ELC',1.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','DEM_ELC',1.14E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','DEM_ELC',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','DEM_ELC',8.69E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','DEM_ELC',8.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','DEM_ELC',7.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','DEM_ELC',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','DEM_ELC',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','DEM_ELC',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','DEM_ELC',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','DEM_ELC',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','DEM_ELC',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','DEM_ELC',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','DEM_ELC',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','DEM_ELC',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','DEM_ELC',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','DEM_ELC',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','DEM_ELC',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','DEM_ELC',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','DEM_ELC',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','DEM_ELC',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','DEM_ELC',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','DEM_ELC',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','DEM_ELC',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','DEM_ELC',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','DEM_ELC',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','DEM_ELC',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','DEM_ELC',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','DEM_ELC',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','DEM_ELC',5.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','DEM_ELC',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','DEM_ELC',2.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','DEM_ELC',2.62E-03,''); -- -8.0E-06 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','DEM_ELC',2.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','DEM_ELC',3.83E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','DEM_ELC',5.80E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','DEM_ELC',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','DEM_ELC',9.09E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','DEM_ELC',9.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','DEM_ELC',9.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','DEM_ELC',8.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','DEM_ELC',8.67E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','DEM_ELC',8.76E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','DEM_ELC',9.02E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','DEM_ELC',9.28E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','DEM_ELC',9.01E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','DEM_ELC',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','DEM_ELC',6.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','DEM_ELC',5.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','DEM_ELC',4.87E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','DEM_ELC',4.32E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','DEM_ELC',3.72E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','DEM_ELC',3.55E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','DEM_ELC',3.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','DEM_ELC',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','DEM_ELC',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','DEM_ELC',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','DEM_ELC',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','DEM_ELC',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','DEM_ELC',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','DEM_ELC',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','DEM_ELC',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','DEM_ELC',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','DEM_ELC',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','DEM_ELC',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','DEM_ELC',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','DEM_ELC',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','DEM_ELC',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','DEM_ELC',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','DEM_ELC',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','DEM_ELC',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','DEM_ELC',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','DEM_ELC',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','DEM_ELC',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','DEM_ELC',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','DEM_ELC',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','DEM_ELC',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','DEM_ELC',5.10E-03,'');
-- Export Finland
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','DEM_FIN',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','DEM_FIN',6.74E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','DEM_FIN',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','DEM_FIN',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','DEM_FIN',8.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','DEM_FIN',1.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','DEM_FIN',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','DEM_FIN',2.12E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','DEM_FIN',2.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','DEM_FIN',2.21E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','DEM_FIN',2.09E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','DEM_FIN',2.02E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','DEM_FIN',2.04E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','DEM_FIN',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','DEM_FIN',2.17E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','DEM_FIN',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','DEM_FIN',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','DEM_FIN',1.51E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','DEM_FIN',1.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','DEM_FIN',1.14E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','DEM_FIN',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','DEM_FIN',8.69E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','DEM_FIN',8.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','DEM_FIN',7.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','DEM_FIN',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','DEM_FIN',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','DEM_FIN',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','DEM_FIN',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','DEM_FIN',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','DEM_FIN',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','DEM_FIN',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','DEM_FIN',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','DEM_FIN',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','DEM_FIN',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','DEM_FIN',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','DEM_FIN',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','DEM_FIN',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','DEM_FIN',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','DEM_FIN',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','DEM_FIN',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','DEM_FIN',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','DEM_FIN',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','DEM_FIN',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','DEM_FIN',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','DEM_FIN',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','DEM_FIN',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','DEM_FIN',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','DEM_FIN',5.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','DEM_FIN',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','DEM_FIN',2.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','DEM_FIN',2.62E-03,''); -- -8.0E-06 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','DEM_FIN',2.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','DEM_FIN',3.83E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','DEM_FIN',5.80E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','DEM_FIN',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','DEM_FIN',9.09E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','DEM_FIN',9.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','DEM_FIN',9.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','DEM_FIN',8.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','DEM_FIN',8.67E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','DEM_FIN',8.76E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','DEM_FIN',9.02E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','DEM_FIN',9.28E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','DEM_FIN',9.01E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','DEM_FIN',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','DEM_FIN',6.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','DEM_FIN',5.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','DEM_FIN',4.87E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','DEM_FIN',4.32E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','DEM_FIN',3.72E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','DEM_FIN',3.55E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','DEM_FIN',3.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','DEM_FIN',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','DEM_FIN',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','DEM_FIN',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','DEM_FIN',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','DEM_FIN',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','DEM_FIN',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','DEM_FIN',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','DEM_FIN',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','DEM_FIN',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','DEM_FIN',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','DEM_FIN',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','DEM_FIN',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','DEM_FIN',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','DEM_FIN',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','DEM_FIN',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','DEM_FIN',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','DEM_FIN',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','DEM_FIN',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','DEM_FIN',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','DEM_FIN',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','DEM_FIN',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','DEM_FIN',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','DEM_FIN',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','DEM_FIN',5.10E-03,'');
-- Export Sweden
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','DEM_SWE',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','DEM_SWE',6.74E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','DEM_SWE',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','DEM_SWE',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','DEM_SWE',8.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','DEM_SWE',1.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','DEM_SWE',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','DEM_SWE',2.12E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','DEM_SWE',2.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','DEM_SWE',2.21E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','DEM_SWE',2.09E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','DEM_SWE',2.02E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','DEM_SWE',2.04E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','DEM_SWE',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','DEM_SWE',2.17E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','DEM_SWE',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','DEM_SWE',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','DEM_SWE',1.51E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','DEM_SWE',1.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','DEM_SWE',1.14E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','DEM_SWE',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','DEM_SWE',8.69E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','DEM_SWE',8.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','DEM_SWE',7.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','DEM_SWE',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','DEM_SWE',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','DEM_SWE',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','DEM_SWE',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','DEM_SWE',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','DEM_SWE',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','DEM_SWE',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','DEM_SWE',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','DEM_SWE',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','DEM_SWE',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','DEM_SWE',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','DEM_SWE',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','DEM_SWE',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','DEM_SWE',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','DEM_SWE',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','DEM_SWE',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','DEM_SWE',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','DEM_SWE',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','DEM_SWE',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','DEM_SWE',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','DEM_SWE',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','DEM_SWE',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','DEM_SWE',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','DEM_SWE',5.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','DEM_SWE',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','DEM_SWE',2.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','DEM_SWE',2.62E-03,''); -- -8.0E-06 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','DEM_SWE',2.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','DEM_SWE',3.83E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','DEM_SWE',5.80E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','DEM_SWE',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','DEM_SWE',9.09E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','DEM_SWE',9.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','DEM_SWE',9.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','DEM_SWE',8.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','DEM_SWE',8.67E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','DEM_SWE',8.76E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','DEM_SWE',9.02E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','DEM_SWE',9.28E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','DEM_SWE',9.01E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','DEM_SWE',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','DEM_SWE',6.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','DEM_SWE',5.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','DEM_SWE',4.87E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','DEM_SWE',4.32E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','DEM_SWE',3.72E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','DEM_SWE',3.55E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','DEM_SWE',3.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','DEM_SWE',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','DEM_SWE',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','DEM_SWE',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','DEM_SWE',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','DEM_SWE',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','DEM_SWE',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','DEM_SWE',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','DEM_SWE',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','DEM_SWE',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','DEM_SWE',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','DEM_SWE',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','DEM_SWE',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','DEM_SWE',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','DEM_SWE',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','DEM_SWE',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','DEM_SWE',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','DEM_SWE',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','DEM_SWE',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','DEM_SWE',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','DEM_SWE',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','DEM_SWE',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','DEM_SWE',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','DEM_SWE',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','DEM_SWE',5.10E-03,'');
-- Export NO3
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','DEM_NO3',7.35E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','DEM_NO3',6.74E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','DEM_NO3',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','DEM_NO3',6.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','DEM_NO3',8.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','DEM_NO3',1.35E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','DEM_NO3',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','DEM_NO3',2.12E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','DEM_NO3',2.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','DEM_NO3',2.21E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','DEM_NO3',2.09E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','DEM_NO3',2.02E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','DEM_NO3',2.04E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','DEM_NO3',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','DEM_NO3',2.17E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','DEM_NO3',2.10E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','DEM_NO3',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','DEM_NO3',1.51E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','DEM_NO3',1.25E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','DEM_NO3',1.14E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','DEM_NO3',1.01E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','DEM_NO3',8.69E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','DEM_NO3',8.29E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','DEM_NO3',7.14E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','DEM_NO3',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','DEM_NO3',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','DEM_NO3',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','DEM_NO3',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','DEM_NO3',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','DEM_NO3',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','DEM_NO3',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','DEM_NO3',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','DEM_NO3',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','DEM_NO3',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','DEM_NO3',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','DEM_NO3',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','DEM_NO3',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','DEM_NO3',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','DEM_NO3',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','DEM_NO3',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','DEM_NO3',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','DEM_NO3',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','DEM_NO3',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','DEM_NO3',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','DEM_NO3',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','DEM_NO3',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','DEM_NO3',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','DEM_NO3',5.10E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','DEM_NO3',3.15E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','DEM_NO3',2.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','DEM_NO3',2.62E-03,''); -- -8.0E-06 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','DEM_NO3',2.63E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','DEM_NO3',3.83E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','DEM_NO3',5.80E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','DEM_NO3',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','DEM_NO3',9.09E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','DEM_NO3',9.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','DEM_NO3',9.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','DEM_NO3',8.94E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','DEM_NO3',8.67E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','DEM_NO3',8.76E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','DEM_NO3',9.02E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','DEM_NO3',9.28E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','DEM_NO3',9.01E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','DEM_NO3',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','DEM_NO3',6.46E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','DEM_NO3',5.34E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','DEM_NO3',4.87E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','DEM_NO3',4.32E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','DEM_NO3',3.72E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','DEM_NO3',3.55E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','DEM_NO3',3.06E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','DEM_NO3',5.25E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','DEM_NO3',4.82E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','DEM_NO3',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','DEM_NO3',4.38E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','DEM_NO3',6.39E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','DEM_NO3',9.66E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','DEM_NO3',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','DEM_NO3',1.52E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','DEM_NO3',1.61E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','DEM_NO3',1.58E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','DEM_NO3',1.49E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','DEM_NO3',1.45E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','DEM_NO3',1.46E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','DEM_NO3',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','DEM_NO3',1.55E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','DEM_NO3',1.50E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','DEM_NO3',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','DEM_NO3',1.08E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','DEM_NO3',8.89E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','DEM_NO3',8.11E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','DEM_NO3',7.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','DEM_NO3',6.20E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','DEM_NO3',5.92E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','DEM_NO3',5.10E-03,'');
-- Industrial space and water heating
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','1','IND_SWH',4.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','2','IND_SWH',4.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','3','IND_SWH',4.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','4','IND_SWH',4.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','5','IND_SWH',9.27E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','6','IND_SWH',1.39E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','7','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','8','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','9','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','10','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','11','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','12','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','13','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','14','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','15','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','16','IND_SWH',2.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','17','IND_SWH',1.85E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','18','IND_SWH',1.39E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','19','IND_SWH',9.27E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','20','IND_SWH',9.27E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','21','IND_SWH',6.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','22','IND_SWH',6.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','23','IND_SWH',6.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','winter','24','IND_SWH',4.64E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','1','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','2','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','3','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','4','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','5','IND_SWH',6.62E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','6','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','7','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','8','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','9','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','10','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','11','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','12','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','13','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','14','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','15','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','16','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','17','IND_SWH',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','18','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','19','IND_SWH',6.62E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','20','IND_SWH',6.62E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','21','IND_SWH',4.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','22','IND_SWH',4.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','23','IND_SWH',4.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','spring','24','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','1','IND_SWH',1.10E-03,''); -- -8.90E-04 is the correction factor to match the total demand
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','2','IND_SWH',1.99E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','3','IND_SWH',1.99E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','4','IND_SWH',1.99E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','5','IND_SWH',3.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','6','IND_SWH',5.96E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','7','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','8','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','9','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','10','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','11','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','12','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','13','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','14','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','15','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','16','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','17','IND_SWH',7.95E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','18','IND_SWH',5.96E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','19','IND_SWH',3.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','20','IND_SWH',3.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','21','IND_SWH',2.98E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','22','IND_SWH',2.98E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','23','IND_SWH',2.98E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','summer','24','IND_SWH',1.99E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','1','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','2','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','3','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','4','IND_SWH',3.31E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','5','IND_SWH',6.62E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','6','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','7','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','8','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','9','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','10','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','11','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','12','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','13','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','14','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','15','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','16','IND_SWH',1.66E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','17','IND_SWH',1.32E-02,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','18','IND_SWH',9.93E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','19','IND_SWH',6.62E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','20','IND_SWH',6.62E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','21','IND_SWH',4.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','22','IND_SWH',4.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','23','IND_SWH',4.97E-03,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('NO4','fall','24','IND_SWH',3.31E-03,'');

CREATE TABLE "Driver" (
    "regions"       text,
    "periods"   	integer,
	"driver_name"	text,
	"driver"        real,
	"driver_notes"  text,
	PRIMARY KEY("regions", "periods", "driver_name"),
	FOREIGN KEY("regions") REFERENCES "regions"("regions"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
);
INSERT INTO "Driver" VALUES ('NO4',2019,'GDP',1.000,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2020,'GDP',0.884,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2025,'GDP',1.183,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2030,'GDP',1.260,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2035,'GDP',1.341,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2040,'GDP',1.428,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2045,'GDP',1.521,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2050,'GDP',1.620,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2055,'GDP',1.724,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2019,'POP',1.000,''); -- 1.000 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2020,'POP',0.996,''); -- 1.000 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2025,'POP',1.010,''); -- 1.006 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2030,'POP',1.018,''); -- 1.008 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2035,'POP',1.021,''); -- 1.011 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2040,'POP',1.022,''); -- 1.013 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2045,'POP',1.020,''); -- 1.012 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2050,'POP',1.015,''); -- 1.008 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2055,'POP',1.015,''); -- 1.008 - SSB table 13600 - Main Alternative Normalized, see "C:[...]\Allocations\Population\SSB_13600_PopProjectionsNO4.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2019,'GDP_FIN',1.000,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2020,'GDP_FIN',1.011,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2025,'GDP_FIN',1.119,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2030,'GDP_FIN',1.126,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2035,'GDP_FIN',1.134,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2040,'GDP_FIN',1.142,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2045,'GDP_FIN',1.149,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2050,'GDP_FIN',1.157,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2055,'GDP_FIN',1.165,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2019,'GDP_SWE',1.000,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2020,'GDP_SWE',1.025,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2025,'GDP_SWE',1.137,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2030,'GDP_SWE',1.164,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2035,'GDP_SWE',1.191,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2040,'GDP_SWE',1.219,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2045,'GDP_SWE',1.248,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2050,'GDP_SWE',1.277,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"
INSERT INTO "Driver" VALUES ('NO4',2055,'GDP_SWE',1.307,''); -- "C[...]\Excel&Data\Data\TEMOA-NO.xlsx"

CREATE TABLE "Allocation" (
    "regions"       text,
	"demand_comm"	text,
	"driver_name"	text,
	"allocation_notes"  text,
	PRIMARY KEY("regions", "demand_comm", "driver_name"),
	FOREIGN KEY("regions") REFERENCES "regions"("regions"),
	FOREIGN KEY("demand_comm") REFERENCES "commodities"("comm_name")
);
-- Buildings sector
INSERT INTO "Allocation" VALUES ('NO4','BUI_SC','POP','');
INSERT INTO "Allocation" VALUES ('NO4','BUI_SH','POP','');
INSERT INTO "Allocation" VALUES ('NO4','BUI_WH','POP','');
INSERT INTO "Allocation" VALUES ('NO4','BUI_AL','POP','');
INSERT INTO "Allocation" VALUES ('NO4','BUI_sSH','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','BUI_sWH','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','BUI_sAL','GDP','');
-- Industry sector
INSERT INTO "Allocation" VALUES ('NO4','IND_SWH','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_MIN','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_FeB','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_TEX','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_WeP','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_PTC','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_MET','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_OTH','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','IND_NEC','GDP','');
-- INSERT INTO "Allocation" VALUES ('NO4','IND_AL','GDP','');
-- Power sector
INSERT INTO "Allocation" VALUES ('NO4','DEM_ELC','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','DEM_FIN','GDP_FIN','');
INSERT INTO "Allocation" VALUES ('NO4','DEM_SWE','GDP_SWE','');
INSERT INTO "Allocation" VALUES ('NO4','DEM_NO3','GDP','');
-- Transport sector
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_CAR','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_2WH','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_BUS','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_RAI_REG','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_RAI_NAT','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_NAV_NAT','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_AVI_NAT','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_PAS_AVI_INT','POP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_LCV','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_HTR','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_RAI_NAT','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_RAI_INT','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_NAV_NAT','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_NAV_INT','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_AVI_INT','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','TRA_FRG_AVI_NAT','GDP','');
-- Upstream sector
INSERT INTO "Allocation" VALUES ('NO4','DEM_OIL','GDP','');
INSERT INTO "Allocation" VALUES ('NO4','DEM_NGA','GDP','');

CREATE TABLE "Elasticity" (
    "regions"       text,
    "periods"   	integer,
	"demand_comm"	text,
	"elasticity"    real,
	"elaticity_notes"  text,
	PRIMARY KEY("regions", "periods", "demand_comm"),
	FOREIGN KEY("regions") REFERENCES "regions"("regions"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("demand_comm") REFERENCES "commodities"("comm_name")
);
-- Buildings sector
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_SC',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_SC',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_SC',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_SC',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_SC',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_SC',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_SC',1.441,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_SH',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_SH',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_SH',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_SH',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_SH',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_SH',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_SH',1.441,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_sSH',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_sSH',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_sSH',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_sSH',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_sSH',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_sSH',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_sSH',1.441,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_WH',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_WH',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_WH',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_WH',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_WH',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_WH',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_WH',1.441,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_sWH',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_sWH',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_sWH',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_sWH',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_sWH',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_sWH',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_sWH',1.441,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_AL',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_AL',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_AL',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_AL',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_AL',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_AL',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_AL',1.441,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_sAL',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_sAL',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_sAL',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_sAL',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_sAL',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_sAL',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_sAL',1.441,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'BUI_SDH',0.958,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'BUI_SDH',1.108,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'BUI_SDH',1.144,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'BUI_SDH',1.220,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'BUI_SDH',1.296,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'BUI_SDH',1.372,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'BUI_SDH',1.441,'');
-- Industry sector
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_SWH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_SWH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_SWH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_SWH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_SWH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_SWH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_SWH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_MIN',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_MIN',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_MIN',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_MIN',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_MIN',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_MIN',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_MIN',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_FeB',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_FeB',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_FeB',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_FeB',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_FeB',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_FeB',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_FeB',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_TEX',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_TEX',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_TEX',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_TEX',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_TEX',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_TEX',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_TEX',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_WeP',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_WeP',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_WeP',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_WeP',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_WeP',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_WeP',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_WeP',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_PTC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_PTC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_PTC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_PTC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_PTC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_PTC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_PTC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_MET',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_MET',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_MET',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_MET',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_MET',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_MET',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_MET',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_OTH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_OTH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_OTH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_OTH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_OTH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_OTH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_OTH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'IND_NEC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'IND_NEC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'IND_NEC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'IND_NEC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'IND_NEC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'IND_NEC',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'IND_NEC',1.000,'');
-- Power sector
INSERT INTO "Elasticity" VALUES ('NO4',2020,'DEM_ELC',0.901,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'DEM_ELC',0.745,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2030,'DEM_ELC',1.112,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2035,'DEM_ELC',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2040,'DEM_ELC',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2045,'DEM_ELC',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2050,'DEM_ELC',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2020,'DEM_FIN',37.20,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'DEM_FIN',-3.40,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2030,'DEM_FIN',1.112,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2035,'DEM_FIN',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2040,'DEM_FIN',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2045,'DEM_FIN',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2050,'DEM_FIN',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2020,'DEM_SWE',32.60,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'DEM_SWE',-3.00,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2030,'DEM_SWE',1.112,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2035,'DEM_SWE',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2040,'DEM_SWE',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2045,'DEM_SWE',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2050,'DEM_SWE',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2020,'DEM_NO3',3.300,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'DEM_NO3',1.600,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2030,'DEM_NO3',1.112,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2035,'DEM_NO3',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2040,'DEM_NO3',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2045,'DEM_NO3',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
INSERT INTO "Elasticity" VALUES ('NO4',2050,'DEM_NO3',1.000,''); -- "C:[...]\Excel&Data\Data\TEMOA-NO.xlsx - DRIVER Projection"
-- Transport sector
-- Passenger
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_CAR',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_CAR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_CAR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_CAR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_CAR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_CAR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_CAR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_2WH',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_2WH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_2WH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_2WH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_2WH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_2WH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_2WH',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_BUS',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_BUS',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_BUS',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_BUS',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_BUS',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_BUS',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_BUS',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_RAI_REG',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_RAI_REG',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_RAI_REG',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_RAI_REG',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_RAI_REG',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_RAI_REG',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_RAI_REG',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_RAI_NAT',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_NAV_NAT',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_AVI_NAT',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_PAS_AVI_INT',0.852,''); -- -14.8% wrt 2019 see "C:[...]\Allocations\Transport\SSB_12576_TrafficVolumesAvg-Abs.xlsx"
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_PAS_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_PAS_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_PAS_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_PAS_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_PAS_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_PAS_AVI_INT',1.000,'');
-- Freight
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_LCV',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_LCV',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_LCV',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_LCV',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_LCV',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_LCV',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_LCV',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_HTR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_HTR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_HTR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_HTR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_HTR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_HTR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_HTR',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_RAI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_RAI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_RAI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_RAI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_RAI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_RAI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_RAI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_RAI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_NAV_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_NAV_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_NAV_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_NAV_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_NAV_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_NAV_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_NAV_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_NAV_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_AVI_INT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'TRA_FRG_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'TRA_FRG_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'TRA_FRG_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'TRA_FRG_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'TRA_FRG_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'TRA_FRG_AVI_NAT',1.000,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'TRA_FRG_AVI_NAT',1.000,'');
-- Upstream sector
INSERT INTO "Elasticity" VALUES ('NO4',2020,'DEM_OIL',0.212,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'DEM_OIL',-0.306,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'DEM_OIL',-1.003,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'DEM_OIL',-1.117,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'DEM_OIL',-1.615,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'DEM_OIL',-1.839,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'DEM_OIL',-2.149,'');
INSERT INTO "Elasticity" VALUES ('NO4',2020,'DEM_NGA',0.212,'');
INSERT INTO "Elasticity" VALUES ('NO4',2025,'DEM_NGA',-0.306,'');
INSERT INTO "Elasticity" VALUES ('NO4',2030,'DEM_NGA',-1.003,'');
INSERT INTO "Elasticity" VALUES ('NO4',2035,'DEM_NGA',-1.117,'');
INSERT INTO "Elasticity" VALUES ('NO4',2040,'DEM_NGA',-1.615,'');
INSERT INTO "Elasticity" VALUES ('NO4',2045,'DEM_NGA',-1.839,'');
INSERT INTO "Elasticity" VALUES ('NO4',2050,'DEM_NGA',-2.149,'');

CREATE TABLE "Demand" (
	"regions"	text,
	"periods"	integer,
	"demand_comm"	text,
	"demand"	real,
	"demand_units"	text,
	"demand_notes"	text,
	PRIMARY KEY("regions","periods","demand_comm"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("demand_comm") REFERENCES "commodities"("comm_name")
);
-- Buildings sector
INSERT INTO "Demand" VALUES ('NO4',2019,'BUI_SC',1.0E-06,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx - NO4data"
INSERT INTO "Demand" VALUES ('NO4',2019,'BUI_SH',26.72,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx - NO4data"
INSERT INTO "Demand" VALUES ('NO4',2019,'BUI_WH',2.78,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx - NO4data"
INSERT INTO "Demand" VALUES ('NO4',2019,'BUI_AL',2.60,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx - NO4data"
INSERT INTO "Demand" VALUES ('NO4',2019,'BUI_sSH',13.43,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx - NO4data"
INSERT INTO "Demand" VALUES ('NO4',2019,'BUI_sWH',2.69,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx - NO4data"
INSERT INTO "Demand" VALUES ('NO4',2019,'BUI_sAL',5.36,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx - NO4data"
-- Industry sector
-- INSERT INTO "Demand" VALUES ('NO4',2019,'IND_AL',33.96,'PJ','');
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_SWH',3.42,'PJ',''); -- "C:[...]\EnergyBuildings.xlsx" considering only district heating towards industry
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_MIN',1.08,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_FeB',3.55,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_TEX',0.27,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_WeP',5.20,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_PTC',20.24,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_MET',23.28,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_OTH',1.35,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'IND_NEC',2.29,'PJ',''); -- "C:[...]\Industry\Demands.xlsx"
-- Power sector
INSERT INTO "Demand" VALUES ('NO4',2019,'DEM_ELC',1.63,'PJ',''); -- See "EnergyBuildings" considering only primary industries demand (the others are contained in BUI_AL and Industry sector)
INSERT INTO "Demand" VALUES ('NO4',2019,'DEM_FIN',0.70,'PJ',''); -- "C:[...]Power\imp_exp\imp_expNO4_2019-2025.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'DEM_SWE',2.70,'PJ',''); -- "C:[...]Power\imp_exp\imp_expNO4_2019-2025.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'DEM_NO3',18.0,'PJ',''); -- "C:[...]Power\imp_exp\imp_expNO4_2019-2025.xlsx"
-- Transport sector
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_CAR',3.172,'Bvkm',''); -- up - road traffic volumes "C:[...]\Transport\SSB_12576_TrafficVolumes_Mkm_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_2WH',0.137,'Bvkm',''); -- up - national passenger km by regional mileage ratio for cars - "C:\Transport\SSB_12576_TrafficVolumes_Mkm_2025-12.xlsx - Norway"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_BUS',0.029,'Bvkm',''); -- up - road traffic volumes "C:[...]\Transport\SSB_12576_TrafficVolumes_Mkm_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_RAI_REG',1.03E-03,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_RAI_NAT',3.76E-04,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_NAV_NAT',2.13E-03,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_AVI_NAT',1.3E-02,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_PAS_AVI_INT',6.02E-04,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_LCV',0.558,'Bvkm',''); -- up - road traffic volumes "C:[...]\Transport\SSB_12576_TrafficVolumes_Mkm_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_HTR',0.103,'Bvkm',''); -- up - road traffic volumes "C:[...]\Transport\SSB_12576_TrafficVolumes_Mkm_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_RAI_NAT',5.31E-04,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_RAI_INT',1.42E-04,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_NAV_NAT',1.83E-03,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_NAV_INT',2.91E-03,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_AVI_INT',6.81E-04,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'TRA_FRG_AVI_NAT',7.84E-05,'Bvkm',''); -- up - "C:[...]\Transport\TEMOA-NO4_NonRoadTransport_2025-12.xlsx"
-- Upstream sector
INSERT INTO "Demand" VALUES ('NO4',2019,'DEM_OIL',35,'PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "Demand" VALUES ('NO4',2019,'DEM_NGA',284,'PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"

CREATE TABLE "CostVariable" (
	"regions"	text NOT NULL,
	"periods"	integer NOT NULL,
	"tech"	text NOT NULL,
	"vintage"	integer NOT NULL,
	"cost_variable"	real,
	"cost_variable_units"	text,
	"cost_variable_notes"	text,
	PRIMARY KEY("regions","periods","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
);
-- Building sector
-- Fuel technologies
INSERT INTO "CostVariable" VALUES ('NO4',2020,'BUI_FT_ELC',2020,19.498,'M€/PJ',''); -- TEMOA-NO FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2020,'BUI_FT_NGA',2020,3.259,'M€/PJ',''); -- TEMOA-NO FuelPrices
-- Industry sector
-- Fuel technologies
INSERT INTO "CostVariable" VALUES ('NO4',2020,'IND_FT_ELC',2020,7.7,'M€/PJ',''); -- SSB_08205_PricePerFuelInIndustry.xlsx  -  M€/PJ
INSERT INTO "CostVariable" VALUES ('NO4',2020,'IND_FT_OIL',2020,13.1,'M€/PJ',''); -- SSB_08205_PricePerFuelInIndustry.xlsx  -  M€/PJ
INSERT INTO "CostVariable" VALUES ('NO4',2020,'IND_FT_NGA',2020,7.5,'M€/PJ',''); -- SSB_08205_PricePerFuelInIndustry.xlsx  -  M€/PJ
INSERT INTO "CostVariable" VALUES ('NO4',2020,'IND_FT_COA',2020,4.9,'M€/PJ',''); -- SSB_08205_PricePerFuelInIndustry.xlsx  -  M€/PJ
INSERT INTO "CostVariable" VALUES ('NO4',2020,'IND_FT_WST',2020,13.7,'M€/PJ',''); -- SSB_08205_PricePerFuelInIndustry.xlsx  -  M€/PJ
-- Power sector
-- Fuel technologies
INSERT INTO "CostVariable" VALUES ('NO4',2040,'ELC_FT_NUC',2040,1.672,'M€/PJ',''); -- https://www.nei.org/CorporateSite/media/filefolder/resources/reports-and-briefs/2023-Costs-in-Context_r1.pdf
INSERT INTO "CostVariable" VALUES ('NO4',2020,'ELC_FT_H2C',2020,34.905,'M€/PJ','');
INSERT INTO "CostVariable" VALUES ('NO4',2020,'ELC_FT_BIO',2020,3.0,'M€/PJ',''); -- TEMOA-Italy for Municipal Waste
INSERT INTO "CostVariable" VALUES ('NO4',2019,'ELC_EXP_FIN',2019,-14.7,'M€/PJ',''); -- "C:[...]\Power\imp_exp\costs&prices.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'ELC_EXP_SWE',2019,-13.9,'M€/PJ',''); -- "C:[...]\Power\imp_exp\costs&prices.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'ELC_IMP_FIN',2019,12.45,'M€/PJ',''); -- "C:[...]\Power\imp_exp\costs&prices.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'ELC_IMP_SWE',2019,11.8,'M€/PJ',''); -- "C:[...]\Power\imp_exp\costs&prices.xlsx"
-- INSERT INTO "CostVariable" VALUES ('NO4',2019,'ELC_IMP_NO3',2019,12.0,'M€/PJ',''); -- Fictitious value to avoid imbalance in the model
-- District heating sector
-- Fuel technologies
INSERT INTO "CostVariable" VALUES ('NO4',2019,'DIH_FT_BIO',2020,3.0,'M€/PJ',''); -- Industry and Power sectors data
INSERT INTO "CostVariable" VALUES ('NO4',2019,'DIH_FT_COA',2020,4.9,'M€/PJ',''); -- Industry and Power sectors data
INSERT INTO "CostVariable" VALUES ('NO4',2019,'DIH_FT_OIL',2020,13.1,'M€/PJ',''); -- Industry and Power sectors data
INSERT INTO "CostVariable" VALUES ('NO4',2019,'DIH_FT_ELC',2020,7.7,'M€/PJ',''); -- Industry and Power sectors data
INSERT INTO "CostVariable" VALUES ('NO4',2019,'DIH_FT_FGA',2020,3.259,'M€/PJ',''); -- Industry and Power sectors data
INSERT INTO "CostVariable" VALUES ('NO4',2019,'DIH_FT_WOO',2020,13.7,'M€/PJ',''); -- Industry and Power sectors data
-- Transport sector
-- Fuel technologies
INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_ELC',2020,19.498,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2030,'TRA_FT_H2C',2030,34.905,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_DOG',2020,6.616,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_MGO',2020,19.552,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_SKR',2020,12.412,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_MTH',2020,17.151,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_KER',2020,9.413,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_HFO',2020,5.446,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_AVG',2020,9.413,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_DSB',2020,33.312,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_GSB',2020,38.612,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_DSL',2020,33.658,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_GSL',2020,40.126,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_LPG',2020,7.396,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_NGA',2020,3.259,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_SNG',2020,6.566,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2020,'TRA_FT_AMM',2020,22.280,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- Upstream sector
-- Fuel technologies
INSERT INTO "CostVariable" VALUES ('NO4',2020,'UPS_FT_BIO_DSL',2020,22.94,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2020,'UPS_FT_BIO_ETH',2020,38.42,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2020,'UPS_FT_BIO_MTH',2020,17.15,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices (2021)
INSERT INTO "CostVariable" VALUES ('NO4',2020,'UPS_FT_SYN_DSL',2020,30.5,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2020,'UPS_FT_SYN_KER',2020,69.4,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2020,'UPS_FT_SYN_MTH',2020,30.5,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- Production technologies
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_XTR_FIX',2019,5.0,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_XTR_FPSO',2019,6.0,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_XTR_FPSO',2035,6.9,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_XTR_HUB',2019,4.0,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_XTR_SUB',2019,4.5,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_XTR_SUB',2035,4.95,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_JTK',2020,9.413,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_AVG',2020,9.413,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_FGA',2020,9.413,'M€/PJ',''); -- *
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_HFO',2020,5.446,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_DSL',2020,33.658,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_GSL',2020,40.126,'M€/PJ',''); -- TEMOA-NO4_TRA_FuelPrices
-- INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_OIL',2019,4.5,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
-- INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_OIL',2025,5.0,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
-- INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_NGA',2019,3.8,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
-- INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_IMP_NGA',2025,4.3,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_EXP_OIL',2019,-5.7,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_EXP_OIL',2025,-2.9,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_EXP_NGA',2019,-5.7,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_EXP_NGA',2025,-2.9,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostVariable" VALUES ('NO4',2019,'UPS_REF_OIL',2019,5.0,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
-- Hydrogen sector
INSERT INTO "CostVariable" VALUES ('NO4',2030,'H2_SR_NGA',2030,0.05,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostVariable" VALUES ('NO4',2020,'H2_GS_COA',2020,0.19,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostVariable" VALUES ('NO4',2025,'H2_GS_COA',2025,0.19,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostVariable" VALUES ('NO4',2030,'H2_GS_COA',2030,0.17,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostVariable" VALUES ('NO4',2020,'H2_PO_OIL',2020,0.14,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
INSERT INTO "CostVariable" VALUES ('NO4',2020,'H2_SR_BIO',2030,0.18,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
INSERT INTO "CostVariable" VALUES ('NO4',2020,'H2_GS_BIO',2030,1.14,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
-- Storage sector
INSERT INTO "CostVariable" VALUES ('NO4',2035,'STG_ELC_HYD',2035,0.51,'M$/PJ','ATB 2022'); -- TEMOA-Italy

CREATE TABLE "CostEmission" (
	"regions"	text NOT NULL,
	"periods"	integer NOT NULL,
	"emis_comm" text,
	"cost_emission"	real,
	"cost_emission_units"	text,
	"cost_emission_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name"),
	PRIMARY KEY("regions","periods","emis_comm")
);

CREATE TABLE "CostInvest" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"cost_invest"	real,
	"cost_invest_units"	text,
	"cost_invest_notes"	text,
	PRIMARY KEY("regions","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
);
-- Building sector
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SC_ROO',2020,57.52,'M€/GW',''); -- TEMOA-Italy 'RES_SC_ROOM_ELC_NEW_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SC_AHP',2020,50.49,'M€/GW',''); -- TEMOA-Italy 'RES_SC_AHP_ELC_ADV_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SH_CEN',2020,5.00,'M€/GW',''); -- Assumed
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SH_DSB',2020,12.00,'M€/GW',''); -- Assumed
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SH_ELC',2020,20.00,'M€/GW',''); -- Assumed
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SH_AHP',2020,41.18,'M€/GW',''); -- TEMOA-Italy 'RES_SH_HPTS_SN_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SH_WST',2020,3.00,'M€/GW',''); -- TEMOA-Italy 'RES_SH_WST_BIO_SO_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SH_WPL',2020,15.85,'M€/GW',''); -- TEMOA-Italy 'RES_SH_WPL_BIO_SO_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_SH_GEO',2020,50.74,'M€/GW',''); -- TEMOA-Italy 'RES_SH_HNS_ELC_SN_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_WH_ELC',2020,1.70,'M€/GW',''); -- TEMOA-Italy 'RES_WH_ELC_RES_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_WH_WPL',2020,5.00,'M€/GW',''); -- TEMOA-Italy 'RES_WH_WPL_BIO_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_WH_NGA',2020,2.82,'M€/GW',''); -- TEMOA-Italy 'RES_WH_NGA_COND_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_WH_AHP',2020,19.63,'M€/GW',''); -- TEMOA-Italy 'RES_WH_AHP_ELC_N'
INSERT INTO "CostInvest" VALUES ('NO4','BUI_AL_ELA',2020,(7700+3954+3835+9000+5300+184+63.42)/1000,'M€/GW',''); --TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','BUI_AL_ELB',2020,(5000+2568+3158+7500+3900+184+23.78+7.93)/1000,'M€/GW',''); --TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','BUI_AL_ELC',2020,(3700+1900+2707+6000+3400+92+0.42+0.79)/1000,'M€/GW',''); --TEMOA-Italy
-- Industry sector
INSERT INTO "CostInvest" VALUES ('NO4','IND_MIN_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
INSERT INTO "CostInvest" VALUES ('NO4','IND_FeB_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
INSERT INTO "CostInvest" VALUES ('NO4','IND_TEX_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
INSERT INTO "CostInvest" VALUES ('NO4','IND_WeP_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
INSERT INTO "CostInvest" VALUES ('NO4','IND_PTC_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
INSERT INTO "CostInvest" VALUES ('NO4','IND_MET_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
INSERT INTO "CostInvest" VALUES ('NO4','IND_OTH_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
INSERT INTO "CostInvest" VALUES ('NO4','IND_NEC_PRO',2020,1000,'M€/GW',''); -- NOT RELEVANT AT THIS POINT SINCE THERE IS NO TECHNOLOGICAL COMPETITION BUT ONLY COMMODITIES COMPETITION
-- INSERT INTO "CostInvest" VALUES ('NO4','IND_AL_ELA',2020,7700+3954+3835+9000+5300+184+63.42,'-',''); --TEMOA-Italy
-- INSERT INTO "CostInvest" VALUES ('NO4','IND_AL_ELB',2020,5000+2568+3158+7500+3900+184+23.78+7.93,'-',''); --TEMOA-Italy
-- INSERT INTO "CostInvest" VALUES ('NO4','IND_AL_ELC',2020,3700+1900+2707+6000+3400+92+0.42+0.79,'-',''); --TEMOA-Italy
-- Power sector
INSERT INTO "CostInvest" VALUES ('NO4','ELC_WIN_ONS',2020,1462,'M€/GW','');-- TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','ELC_WIN_OFF',2035,3739,'M€/GW','');-- TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','ELC_GEO_HEP',2040,3500,'M€/GW','');-- TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','ELC_HYD_ROR',2020,4000,'M€/GW','');-- Assumption
INSERT INTO "CostInvest" VALUES ('NO4','ELC_HYD_RES',2020,2000,'M€/GW','');-- Assumption
INSERT INTO "CostInvest" VALUES ('NO4','ELC_SOL_PHV',2020,1333,'M€/GW','');-- TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','ELC_FGA_THE',2020,1000,'M€/GW','');-- TEMOA-Italy for NGA
INSERT INTO "CostInvest" VALUES ('NO4','ELC_BIO_SLB',2020,4416,'M€/GW','');-- TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','ELC_NUC_SMR',2040,6820,'M€/GW','1.10*6200 -> Including Decommissioning');-- TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','ELC_H2C_PEM',2020,3000,'M€/GW','');-- TEMOA-Italy
INSERT INTO "CostInvest" VALUES ('NO4','ELC_EXP_NO3',2020,160,'M€/GW',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','ELC_EXP_FIN',2020,140,'M€/GW',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','ELC_EXP_SWE',2020,147,'M€/GW',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','ELC_IMP_NO3',2020,160,'M€/GW',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','ELC_IMP_FIN',2020,140,'M€/GW',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','ELC_IMP_SWE',2020,147,'M€/GW',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
-- District heating
INSERT INTO "CostInvest" VALUES ('NO4','DIH_BIO_SWH',2020,75.0,'M€/GW',''); -- EnergyBuildings.xlsx
INSERT INTO "CostInvest" VALUES ('NO4','DIH_COA_SWH',2020,55.9,'M€/GW',''); -- EnergyBuildings.xlsx
INSERT INTO "CostInvest" VALUES ('NO4','DIH_OIL_SWH',2020,55.9,'M€/GW',''); -- EnergyBuildings.xlsx
INSERT INTO "CostInvest" VALUES ('NO4','DIH_ELC_SWH',2020,109.3,'M€/GW',''); -- EnergyBuildings.xlsx
INSERT INTO "CostInvest" VALUES ('NO4','DIH_FGA_SWH',2020,55.9,'M€/GW',''); -- EnergyBuildings.xlsx
INSERT INTO "CostInvest" VALUES ('NO4','DIH_HEW_SWH',2020,89.0,'M€/GW',''); -- EnergyBuildings.xlsx
INSERT INTO "CostInvest" VALUES ('NO4','DIH_INC_SWH',2020,75.0,'M€/GW',''); -- EnergyBuildings.xlsx
INSERT INTO "CostInvest" VALUES ('NO4','DIH_WOO_SWH',2020,75.0,'M€/GW',''); -- EnergyBuildings.xlsx
-- Transport sector
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_ELC',2020,1437,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_DSB',2020,1193,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_GSB',2020,1100,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_GHY',2020,1247,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_DHY',2020,1247,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_H2C',2030,1745,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_2WH_GSB',2020,1100,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_2WH_ELC',2020,1865,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_2WH_ELC',2030,1615,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_2WH_ELC',2050,1445,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_ELC',2020,4160,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_ELC',2030,3350,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_ELC',2050,2990,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_DSB',2020,2480,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_H2C',2030,3310,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_H2C',2050,2920,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_DSB',2020,1420,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_GSB',2020,1150,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_ELC',2020,2380,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_ELC',2030,2070,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_ELC',2050,1850,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_H2C',2030,2710,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_H2C',2050,2390,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_DSB',2020,2480,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_ELC',2020,4160,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_ELC',2030,3350,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_ELC',2050,2990,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_H2C',2030,4740,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_H2C',2050,4180,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_RAI_PAS_DSB',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_NAT_KER',2020,92000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_NAT_SKR',2030,92000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_NAT_AVG',2020,92000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_NAT_H2C',2040,120000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_INT_KER',2020,115000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_INT_SKR',2030,115000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_INT_H2C',2040,160000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_NAT_MGO',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_NAT_LNG',2020,1100,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_NAT_GSB',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_NAT_HFO',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_RAI_FRG_NAT_DSB',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_RAI_FRG_INT_ELC',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_FRG_NAT_KER',2020,92000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_FRG_INT_KER',2020,115000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_FRG_NAT_SKR',2030,92000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_FRG_INT_SKR',2030,115000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_FRG_NAT_H2C',2040,120000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_AIR_FRG_INT_H2C',2040,160000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_MGO',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_LNG',2020,1100,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_GSB',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_HFO',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_DOG',2030,1200,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_MTH',2030,1900,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_AMM',2030,2200,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_NAT_H2C',2030,1800,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_MGO',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_LNG',2020,1100,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_GSB',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_HFO',2020,1000,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_DOG',2030,1200,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_MTH',2030,1900,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_AMM',2030,2200,'M€/Bvkm','');
INSERT INTO "CostInvest" VALUES ('NO4','TRA_NAV_FRG_INT_H2C',2030,1800,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_DSL',2020,1193,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_CAR_GSL',2020,1100,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_2WH_GSL',2020,1100,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_DSL',2020,2480,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_BUS_NGA',2025,3040,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_DSL',2020,1420,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_LCV_GSL',2020,1150,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_DSL',2020,2480,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_ROA_HTR_SNG',2020,3040,'M€/Bvkm','');
-- INSERT INTO "CostInvest" VALUES ('NO4','TRA_RAI_FRG_DSL',2020,1000,'M€/Bvkm','');
-- Hydrogen sector
INSERT INTO "CostInvest" VALUES ('NO4','H2_SR_NGA',2030,16.15,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostInvest" VALUES ('NO4','H2_GS_COA',2020,16.42,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostInvest" VALUES ('NO4','H2_GS_COA',2025,16.42,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostInvest" VALUES ('NO4','H2_GS_COA',2030,14.65,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
--INSERT INTO "CostInvest" VALUES ('NO4','H2_PO_OIL',2020,13.69,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
INSERT INTO "CostInvest" VALUES ('NO4','H2_SR_BIO',2030,16.47,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
INSERT INTO "CostInvest" VALUES ('NO4','H2_GS_BIO',2030,69.60,'M€/PJ','Elaboration of data from JRC-EU-TIMES');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_ALK',2030,28.42,'M€/PJ','');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_ALK',2050,23.57,'M€/PJ','');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_PEM',2030,35.28,'M€/PJ','');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_PEM',2040,25.74,'M€/PJ','');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_PEM',2050,22.54,'M€/PJ','');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_SOEC',2035,36.58,'M€/PJ','');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_SOEC',2050,32.50,'M€/PJ','');
INSERT INTO "CostInvest" VALUES ('NO4','H2_EL_AEM',2050,35.92,'M€/PJ','');
--Storage sector
INSERT INTO "CostInvest" VALUES ('NO4','STG_ELC_HYD',2035,2000,'M$/GW','ATB 2022'); -- Assuming equal to HYD_RES
INSERT INTO "CostInvest" VALUES ('NO4','STG_ELC_BTT',2030,1337,'M$/GW','ATB 2022'); -- TEMOA-Italy for DST version
INSERT INTO "CostInvest" VALUES ('NO4','STG_ELC_BTT',2050,1002,'M$/GW','ATB 2022'); -- TEMOA-Italy for DST version
INSERT INTO "CostInvest" VALUES ('NO4','STG_ELC_VRFB',2030,2037,'M$/GW','10.1016/j.mtener.2025.101805'); -- TEMOA-Italy for DST version
INSERT INTO "CostInvest" VALUES ('NO4','STG_ELC_VRFB',2050,1528,'M$/GW','10.1016/j.mtener.2025.101805'); -- TEMOA-Italy for DST version
INSERT INTO "CostInvest" VALUES ('NO4','STG_H2_TNK',2030,6*10.3/0.0036/31.536,'M$/GW','JRC-EU-TIMES'); -- TEMOA-Italy
-- Upstream sector
INSERT INTO "CostInvest" VALUES ('NO4','UPS_XTR_FIX',2020,50.0,'M€/GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','UPS_XTR_FPSO',2020,65.0,'M€/GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','UPS_XTR_FPSO',2035,74.75,'M€/GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','UPS_XTR_HUB',2020,30.0,'M€/GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','UPS_XTR_SUB',2020,40.0,'M€/GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','UPS_XTR_SUB',2030,44.0,'M€/GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostInvest" VALUES ('NO4','UPS_REF_OIL',2020,5.0,'M€/GW',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"

CREATE TABLE "CostFixed" (
	"regions"	text NOT NULL,
	"periods"	integer NOT NULL,
	"tech"	text NOT NULL,
	"vintage"	integer NOT NULL,
	"cost_fixed"	real,
	"cost_fixed_units"	text,
	"cost_fixed_notes"	text,
	PRIMARY KEY("regions","periods","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
);
-- Building sector
-- Production technologies
INSERT INTO "CostFixed" VALUES ('NO4',2020,'BUI_SH_AHP',2020,2.08,'M€/PJ',''); -- TEMOA-Italy 'RES_SH_HPTS_SN_N'
INSERT INTO "CostFixed" VALUES ('NO4',2020,'BUI_SH_GEO',2020,3.47,'M€/PJ',''); -- TEMOA-Italy 'RES_SH_HPTS_SN_N'
-- Power sector
-- Fuel technologies
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_FT_H2C',2020,1.57,'M€/PJ','');
-- Production technologies
INSERT INTO "CostFixed" VALUES ('NO4',2019,'ELC_WIN_ONS',2019,40.00,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_WIN_OFF',2035,104.00,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2040,'ELC_GEO_HEP',2040,75.00,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2019,'ELC_HYD_ROR',2019,33.65,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2019,'ELC_HYD_RES',2019,13.29,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_SOL_PHV',2020,23.00,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2019,'ELC_FGA_THE',2019,26.24,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_BIO_SLB',2020,140.83,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2040,'ELC_NUC_SMR',2040,114.00,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_H2C_PEM',2020,1.88,'M€/PJ','');-- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_EXP_NO3',2020,1.5,'M€/PJ',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_EXP_FIN',2020,1.4,'M€/PJ',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_EXP_SWE',2020,1.5,'M€/PJ',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_IMP_NO3',2020,1.5,'M€/PJ',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_IMP_FIN',2020,1.4,'M€/PJ',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2020,'ELC_IMP_SWE',2020,1.5,'M€/PJ',''); -- subdivided by imp&exp "C:[...]\Power\imp_exp\new_lines_costs.xlsx"
-- District heating
-- Production technologies
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_BIO_SWH',2019,0.75,'M€/PJ',''); -- 1% of capital costs
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_COA_SWH',2019,0.55,'M€/PJ',''); -- 1% of capital costs
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_OIL_SWH',2019,0.55,'M€/PJ',''); -- 1% of capital costs
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_ELC_SWH',2019,1.09,'M€/PJ',''); -- 1% of capital costs
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_FGA_SWH',2019,0.55,'M€/PJ',''); -- 1% of capital costs
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_HEW_SWH',2019,0.89,'M€/PJ',''); -- 1% of capital costs
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_INC_SWH',2019,0.75,'M€/PJ',''); -- 1% of capital costs
INSERT INTO "CostFixed" VALUES ('NO4',2019,'DIH_WOO_SWH',2019,0.75,'M€/PJ',''); -- 1% of capital costs
-- Transport sector
-- Fuel technologies
-- INSERT INTO "CostFixed" VALUES ('IT',2014,'TRA_FT_H2C_N',2014,3.25,'M€/PJ','');
-- New technologies
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_AIR_NAT_KER',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_AIR_NAT_SKR',2030,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_AIR_NAT_AVG',2020,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2040,'TRA_AIR_NAT_H2C',2040,29.40,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_AIR_INT_KER',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_AIR_INT_SKR',2030,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2040,'TRA_AIR_INT_H2C',2040,29.40,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_AIR_FRG_NAT_KER',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_AIR_FRG_INT_KER',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_AIR_FRG_NAT_SKR',2030,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_AIR_FRG_INT_SKR',2030,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_AIR_FRG_NAT_H2C',2040,29.40,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_AIR_FRG_INT_H2C',2040,29.40,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_RAI_FRG_NAT_DSB',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_RAI_FRG_INT_ELC',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_RAI_PAS_DSB',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_NAT_MGO',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_NAT_LNG',2019,22.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_NAT_GSB',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_NAT_HFO',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_NAT_DOG',2030,24.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_NAT_MTH',2030,38.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_NAT_AMM',2030,44.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_NAT_H2C',2030,36.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_INT_MGO',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_INT_LNG',2019,22.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_INT_GSB',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_FRG_INT_HFO',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_INT_DOG',2030,24.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_INT_MTH',2030,38.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_INT_AMM',2030,44.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2030,'TRA_NAV_FRG_INT_H2C',2030,42.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_NAT_MGO',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_NAT_LNG',2019,22.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_NAT_GSB',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_NAV_NAT_HFO',2019,20.00,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_2WH_GSB',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_2WH_ELC',2020,51.33,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_BUS_ELC',2025,51.33,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_BUS_DSB',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2025,'TRA_ROA_BUS_H2C',2030,60.89,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_CAR_ELC',2019,51.33,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_CAR_DSB',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_CAR_GSB',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_CAR_GHY',2020,61.76,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_CAR_DHY',2020,61.76,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2025,'TRA_ROA_CAR_H2C',2030,70.03,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_LCV_DSB',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_LCV_GSB',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_LCV_ELC',2020,51.33,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2025,'TRA_ROA_LCV_H2C',2030,60.89,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_HTR_DSB',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_HTR_ELC',2020,51.33,'M€/Bvkm',''); -- from TEMOA-ITALY
INSERT INTO "CostFixed" VALUES ('NO4',2025,'TRA_ROA_HTR_H2C',2030,60.89,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_RAI_FRG_DSL',2020,20.00,'M€/PJ',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_2WH_GSL',2020,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_BUS_DSL',2020,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2025,'TRA_ROA_BUS_NGA',2025,64.37,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_CAR_DSL',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_CAR_GSL',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_LCV_DSL',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2019,'TRA_ROA_LCV_GSL',2019,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_HTR_DSL',2020,62.63,'M€/Bvkm',''); -- from TEMOA-ITALY
-- INSERT INTO "CostFixed" VALUES ('NO4',2020,'TRA_ROA_HTR_SNG',2020,64.37,'M€/Bvkm',''); -- from TEMOA-ITALY
-- Hydrogen sector
-- Hydrogen
INSERT INTO "CostFixed" VALUES ('NO4',2030,'H2_SR_NGA',2030,0.68,'M€/PJ','JRC-EU-TIMES');
--INSERT INTO "CostFixed" VALUES ('NO4',2020,'H2_GS_COA',2020,0.66,'M€/PJ','JRC-EU-TIMES');
--INSERT INTO "CostFixed" VALUES ('NO4',2030,'H2_GS_COA',2030,0.58,'M€/PJ','JRC-EU-TIMES');
--INSERT INTO "CostFixed" VALUES ('NO4',2020,'H2_PO_OIL',2020,0.68,'M€/PJ','JRC-EU-TIMES');
INSERT INTO "CostFixed" VALUES ('NO4',2030,'H2_SR_BIO',2030,0.66,'M€/PJ','JRC-EU-TIMES');
INSERT INTO "CostFixed" VALUES ('NO4',2030,'H2_GS_BIO',2030,2.31,'M€/PJ','JRC-EU-TIMES');
INSERT INTO "CostFixed" VALUES ('NO4',2030,'H2_EL_ALK',2030,0.85,'M€/PJ','');
INSERT INTO "CostFixed" VALUES ('NO4',2050,'H2_EL_ALK',2050,0.71,'M€/PJ','');
INSERT INTO "CostFixed" VALUES ('NO4',2030,'H2_EL_PEM',2030,1.06,'M€/PJ','');
INSERT INTO "CostFixed" VALUES ('NO4',2040,'H2_EL_PEM',2040,0.77,'M€/PJ','');
INSERT INTO "CostFixed" VALUES ('NO4',2050,'H2_EL_PEM',2050,0.68,'M€/PJ','');
INSERT INTO "CostFixed" VALUES ('NO4',2030,'H2_EL_SOEC',2035,1.41,'M€/PJ','');
INSERT INTO "CostFixed" VALUES ('NO4',2050,'H2_EL_SOEC',2050,0.98,'M€/PJ','');
INSERT INTO "CostFixed" VALUES ('NO4',2050,'H2_EL_AEM',2050,1.08,'M€/PJ','');
--Storage sector
INSERT INTO "CostFixed" VALUES ('NO4',2035,'STG_ELC_HYD',2035,17.82,'M$/GW','ATB 2022'); -- TEMOA-Italy
INSERT INTO "CostFixed" VALUES ('NO4',2030,'STG_ELC_BTT',2030,33,'M$/GW','ATB 2022'); -- TEMOA-Italy for DST version
INSERT INTO "CostFixed" VALUES ('NO4',2030,'STG_ELC_BTT',2050,25,'M$/GW','ATB 2022'); -- TEMOA-Italy for DST version
INSERT INTO "CostFixed" VALUES ('NO4',2030,'STG_ELC_VRFB',2030,5.9,'M$/GW','ATB 2022'); -- TEMOA-Italy for DST version
INSERT INTO "CostFixed" VALUES ('NO4',2030,'STG_ELC_VRFB',2050,4.5,'M$/GW','ATB 2022'); -- TEMOA-Italy for DST version
INSERT INTO "CostFixed" VALUES ('NO4',2030,'STG_H2_TNK',2030,6*0.47/0.0036/31.536,'M$/GW','ATB 2022'); -- TEMOA-Italy
-- Upstream sector
INSERT INTO "CostFixed" VALUES ('NO4',2019,'UPS_XTR_FIX',2019,2.00,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2019,'UPS_XTR_FPSO',2019,3.00,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2035,'UPS_XTR_FPSO',2035,3.45,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2019,'UPS_XTR_HUB',2019,1.50,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2019,'UPS_XTR_SUB',2019,2.50,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2030,'UPS_XTR_SUB',2030,2.75,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CostFixed" VALUES ('NO4',2019,'UPS_REF_OIL',2019,2.0,'M€/PJ',''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"


CREATE TABLE "Currency" (
	"curr"	text,
	"value"	real,
	"ref"   text,
	PRIMARY KEY("curr","value")
);
INSERT INTO "Currency" VALUES ('EUR00',1.45,'');
INSERT INTO "Currency" VALUES ('EUR01',1.40,'');
INSERT INTO "Currency" VALUES ('EUR02',1.36,'');
INSERT INTO "Currency" VALUES ('EUR03',1.33,'');
INSERT INTO "Currency" VALUES ('EUR04',1.30,'');
INSERT INTO "Currency" VALUES ('EUR05',1.27,'');
INSERT INTO "Currency" VALUES ('EUR06',1.24,'');
INSERT INTO "Currency" VALUES ('EUR07',1.21,'');
INSERT INTO "Currency" VALUES ('EUR08',1.17,'');
INSERT INTO "Currency" VALUES ('EUR09',1.16,'');
INSERT INTO "Currency" VALUES ('EUR10',1.14,'');
INSERT INTO "Currency" VALUES ('EUR11',1.11,'');
INSERT INTO "Currency" VALUES ('EUR12',1.08,'');
INSERT INTO "Currency" VALUES ('EUR13',1.06,'');
INSERT INTO "Currency" VALUES ('EUR14',1.06,'');
INSERT INTO "Currency" VALUES ('EUR15',1.06,'');
INSERT INTO "Currency" VALUES ('EUR16',1.06,'');
INSERT INTO "Currency" VALUES ('EUR17',1.04,'');
INSERT INTO "Currency" VALUES ('EUR18',1.02,'');
INSERT INTO "Currency" VALUES ('EUR19',1.01,'');
INSERT INTO "Currency" VALUES ('EUR20',1.00,'REF');
INSERT INTO "Currency" VALUES ('EUR21',0.97,'');
INSERT INTO "Currency" VALUES ('EUR22',0.92,'');
INSERT INTO "Currency" VALUES ('EUR23',0.87,'');
INSERT INTO "Currency" VALUES ('USD00',1.57,'');
INSERT INTO "Currency" VALUES ('USD06',0.98,'');
INSERT INTO "Currency" VALUES ('USD07',0.88,'');
INSERT INTO "Currency" VALUES ('USD08',0.79,'');
INSERT INTO "Currency" VALUES ('USD10',0.85,'');
INSERT INTO "Currency" VALUES ('USD11',0.80,'');
INSERT INTO "Currency" VALUES ('USD12',0.83,'');
INSERT INTO "Currency" VALUES ('USD13',0.80,'');
INSERT INTO "Currency" VALUES ('USD14',0.80,'');
INSERT INTO "Currency" VALUES ('USD16',0.95,'');
INSERT INTO "Currency" VALUES ('USD20',0.88,'');

CREATE TABLE "CurrencyTech" (
	"tech"	text,
	"curr"	text,
	PRIMARY KEY("tech","curr")
);
-- Building sector
INSERT INTO "CurrencyTech" VALUES ('BUI_FT_DIH','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_FT_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_FT_GEO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_FT_NGA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_FT_WOO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_SC_ROO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_SC_AHP','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_SH_CEN','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_SH_DIH','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_SH_WST','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_SH_WPL','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_SH_GEO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_BIO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_COA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_OIL','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_FGA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_HEW','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_INC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_DH_WOO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_WH_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_WH_WPL','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_WH_NGA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_WH_AHP','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_AL_ELA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_AL_ELB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('BUI_AL_ELC','EUR23');
-- Industry sector
INSERT INTO "CurrencyTech" VALUES ('IND_FT_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_FT_DIH','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_DH_DIH','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_FT_OIL','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_FT_NGA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_FT_FGA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_FT_COA','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_FT_WST','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_MIN_PRO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_FeB_PRO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_TEX_PRO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_WeP_PRO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_PTC_PRO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_MET_PRO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_OTH_PRO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('IND_NEC_PRO','EUR23');
-- INSERT INTO "CurrencyTech" VALUES ('IND_AL_ELA','EUR23');
-- INSERT INTO "CurrencyTech" VALUES ('IND_AL_ELB','EUR23');
-- INSERT INTO "CurrencyTech" VALUES ('IND_AL_ELC','EUR23');
-- Power sector
INSERT INTO "CurrencyTech" VALUES ('ELC_WIN_ONS','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_WIN_OFF','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_GEO_HEP','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_HYD_ROR','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_HYD_RES','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_SOL_PHV','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_FGA_THE','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_BIO_SLB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_NUC_SMR','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_H2C_PEM','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_EXP_FIN','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_EXP_SWE','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_EXP_NO3','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_IMP_FIN','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_IMP_SWE','EUR23');
INSERT INTO "CurrencyTech" VALUES ('ELC_IMP_NO3','EUR23');
-- Transport sector
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_CAR_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_CAR_DSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_CAR_GSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_CAR_GHY','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_CAR_DHY','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_CAR_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_2WH_GSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_2WH_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_BUS_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_BUS_DSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_BUS_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_LCV_DSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_LCV_GSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_LCV_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_LCV_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_HTR_DSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_HTR_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_ROA_HTR_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_RAI_PAS_DSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_NAT_KER','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_NAT_SKR','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_NAT_AVG','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_NAT_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_INT_KER','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_INT_SKR','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_INT_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_NAT_MGO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_NAT_LNG','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_NAT_GSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_NAT_HFO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_RAI_FRG_NAT_DSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_RAI_FRG_INT_ELC','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_FRG_NAT_KER','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_FRG_INT_KER','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_FRG_NAT_SKR','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_FRG_INT_SKR','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_FRG_NAT_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_AIR_FRG_INT_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_MGO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_LNG','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_GSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_HFO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_DOG','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_MTH','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_AMM','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_NAT_H2C','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_MGO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_LNG','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_GSB','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_HFO','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_DOG','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_MTH','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_AMM','EUR23');
INSERT INTO "CurrencyTech" VALUES ('TRA_NAV_FRG_INT_H2C','EUR23');
-- Hydrogen sector
INSERT INTO "CurrencyTech" VALUES ('H2_SR_NGA','EUR10');
--INSERT INTO "CurrencyTech" VALUES ('H2_GS_COA','EUR10');
--INSERT INTO "CurrencyTech" VALUES ('H2_PO_OIL','EUR10');
INSERT INTO "CurrencyTech" VALUES ('H2_SR_BIO','EUR10');
INSERT INTO "CurrencyTech" VALUES ('H2_GS_BIO','EUR10');
-- Storage sector
INSERT INTO "CurrencyTech" VALUES ('STG_ELC_HYD','USD20');
INSERT INTO "CurrencyTech" VALUES ('STG_ELC_BTT','USD20');
INSERT INTO "CurrencyTech" VALUES ('STG_ELC_VRFB','USD20');
INSERT INTO "CurrencyTech" VALUES ('STG_H2_TNK','USD20');

CREATE TABLE "CapacityToActivity" (
	"regions"	text,
	"tech"	text,
	"c2a"	real,
	"c2a_notes"	TEXT,
	PRIMARY KEY("regions","tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Building sector
INSERT INTO "CapacityToActivity" VALUES ('NO4','BUI_AL_ELA',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','BUI_AL_ELB',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','BUI_AL_ELC',31.536,'PJ/GW');
-- Power sector
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_DEM_DMY',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_WIN_ONS',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_WIN_OFF',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_GEO_HEP',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_HYD_ROR',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_HYD_RES',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_SOL_PHV',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_FGA_THE',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_BIO_SLB',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_NUC_SMR',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_H2C_PEM',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_EXP_FIN',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_EXP_SWE',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_EXP_NO3',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_IMP_FIN',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_IMP_SWE',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','ELC_IMP_NO3',31.536,'PJ/GW');
-- District heating
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_BIO_SWH',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_COA_SWH',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_OIL_SWH',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_ELC_SWH',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_FGA_SWH',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_HEW_SWH',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_INC_SWH',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','DIH_WOO_SWH',31.536,'PJ/GW');
-- Storage sector
INSERT INTO "CapacityToActivity" VALUES ('NO4','STG_ELC_HYD',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','STG_ELC_BTT',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','STG_ELC_VRFB',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','STG_H2_TNK',31.536,'PJ/GW');
-- Upstream sector
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_XTR_FIX',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_XTR_FPSO',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_XTR_HUB',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_XTR_SUB',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_REF_OIL',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_IMP_JTK',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_IMP_AVG',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_IMP_FGA',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_IMP_HFO',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_IMP_DSL',31.536,'PJ/GW');
INSERT INTO "CapacityToActivity" VALUES ('NO4','UPS_IMP_GSL',31.536,'PJ/GW');

CREATE TABLE "CapacityFactor" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"cf"	real,
	"cf_notes"	text,
	PRIMARY KEY("regions","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
);
-- Building sector
INSERT INTO "CapacityFactor" VALUES ('NO4','BUI_SH_AHP',2020,0.4,'');
-- Transport sector
-- Fuel technologies
INSERT INTO "CapacityFactor" VALUES ('NO4','TRA_FT_H2C',2030,0.75,'');
-- Power sector
-- Production technologies
INSERT INTO "CapacityFactor" VALUES ('NO4','ELC_GEO_HEP',2040,0.90,''); -- TEMOA-Italy
INSERT INTO "CapacityFactor" VALUES ('NO4','ELC_SOL_PHV',2020,0.228,''); -- TEMOA-Italy
INSERT INTO "CapacityFactor" VALUES ('NO4','ELC_FGA_THE',2019,0.95,'TIMES-Italy'); -- TEMOA-Italy
INSERT INTO "CapacityFactor" VALUES ('NO4','ELC_BIO_SLB',2020,0.68,'TIMES-Italy'); -- TEMOA-Italy
INSERT INTO "CapacityFactor" VALUES ('NO4','ELC_NUC_SMR',2040,0.94,'ATB 2022'); -- TEMOA-Italy
INSERT INTO "CapacityFactor" VALUES ('NO4','ELC_H2C_PEM',2020,0.90,'Assumption'); -- TEMOA-Italy
-- Hydrogen sector
-- Hydrogen
INSERT INTO "CapacityFactor" VALUES ('NO4','H2_SR_NGA',2030,0.90,'Assumption');
--INSERT INTO "CapacityFactor" VALUES ('NO4','H2_GS_COA',2020,0.90,'Assumption');
--INSERT INTO "CapacityFactor" VALUES ('NO4','H2_PO_OIL',2020,0.90,'Assumption');
INSERT INTO "CapacityFactor" VALUES ('NO4','H2_SR_BIO',2030,0.90,'Assumption');
INSERT INTO "CapacityFactor" VALUES ('NO4','H2_GS_BIO',2030,0.90,'Assumption');
INSERT INTO "CapacityFactor" VALUES ('NO4','H2_EL_ALK',2030,0.90,'Assumption');
INSERT INTO "CapacityFactor" VALUES ('NO4','H2_EL_PEM',2030,0.90,'Assumption');
INSERT INTO "CapacityFactor" VALUES ('NO4','H2_EL_SOEC',2035,0.90,'Assumption');
INSERT INTO "CapacityFactor" VALUES ('NO4','H2_EL_AEM',2050,0.90,'Assumption');
-- Storage sector
INSERT INTO "CapacityFactor" VALUES ('NO4','STG_ELC_HYD',2035,0.11,'TIMES-Italy'); -- TEMOA-Italy
INSERT INTO "CapacityFactor" VALUES ('NO4','STG_ELC_BTT',2030,0.95,'TIMES-Italy');
INSERT INTO "CapacityFactor" VALUES ('NO4','STG_ELC_VRFB',2030,0.95,'TIMES-Italy');
INSERT INTO "CapacityFactor" VALUES ('NO4','STG_H2_TNK',2030,0.98,'JRC-EU-TIMES'); -- TEMOA-Italy
-- Upstream sector
INSERT INTO "CapacityFactor" VALUES ('NO4','UPS_XTR_FIX',2019,0.90,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CapacityFactor" VALUES ('NO4','UPS_XTR_FPSO',2019,0.85,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CapacityFactor" VALUES ('NO4','UPS_XTR_HUB',2019,0.95,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"
INSERT INTO "CapacityFactor" VALUES ('NO4','UPS_XTR_SUB',2019,0.80,''); -- "C:[...]\Sectors\Upstream\oil&gas_NO4.xlsx"

CREATE TABLE "CapacityFactorTech" (
	"regions"	text,
	"season_name"	text,
	"time_of_day_name"	text,
	"tech"	text,
	"cf_tech"	real CHECK("cf_tech" >= 0 AND "cf_tech" <= 1),
	"cf_tech_notes"	text,
	PRIMARY KEY("regions","season_name","time_of_day_name","tech"),
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
-- Production technologies															see "C[...]\Excel&Data\Data\Eurelectric\Eurelectric_250610_112155.xlsx"
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','1','ELC_HYD_RES',0.563,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','2','ELC_HYD_RES',0.555,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','3','ELC_HYD_RES',0.546,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','4','ELC_HYD_RES',0.540,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','5','ELC_HYD_RES',0.544,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','6','ELC_HYD_RES',0.560,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','7','ELC_HYD_RES',0.590,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','8','ELC_HYD_RES',0.620,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','9','ELC_HYD_RES',0.625,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','10','ELC_HYD_RES',0.624,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','11','ELC_HYD_RES',0.615,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','12','ELC_HYD_RES',0.604,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','13','ELC_HYD_RES',0.592,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','14','ELC_HYD_RES',0.586,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','15','ELC_HYD_RES',0.591,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','16','ELC_HYD_RES',0.608,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','17','ELC_HYD_RES',0.625,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','18','ELC_HYD_RES',0.642,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','19','ELC_HYD_RES',0.644,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','20','ELC_HYD_RES',0.636,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','21','ELC_HYD_RES',0.622,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','22','ELC_HYD_RES',0.610,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','23','ELC_HYD_RES',0.596,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','24','ELC_HYD_RES',0.578,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','1','ELC_HYD_RES',0.451,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','2','ELC_HYD_RES',0.438,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','3','ELC_HYD_RES',0.429,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','4','ELC_HYD_RES',0.424,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','5','ELC_HYD_RES',0.424,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','6','ELC_HYD_RES',0.435,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','7','ELC_HYD_RES',0.455,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','8','ELC_HYD_RES',0.469,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','9','ELC_HYD_RES',0.457,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','10','ELC_HYD_RES',0.430,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','11','ELC_HYD_RES',0.402,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','12','ELC_HYD_RES',0.380,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','13','ELC_HYD_RES',0.360,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','14','ELC_HYD_RES',0.352,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','15','ELC_HYD_RES',0.350,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','16','ELC_HYD_RES',0.361,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','17','ELC_HYD_RES',0.384,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','18','ELC_HYD_RES',0.422,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','19','ELC_HYD_RES',0.468,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','20','ELC_HYD_RES',0.496,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','21','ELC_HYD_RES',0.506,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','22','ELC_HYD_RES',0.504,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','23','ELC_HYD_RES',0.490,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','24','ELC_HYD_RES',0.472,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','1','ELC_HYD_RES',0.397,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','2','ELC_HYD_RES',0.384,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','3','ELC_HYD_RES',0.378,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','4','ELC_HYD_RES',0.374,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','5','ELC_HYD_RES',0.371,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','6','ELC_HYD_RES',0.377,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','7','ELC_HYD_RES',0.398,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','8','ELC_HYD_RES',0.422,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','9','ELC_HYD_RES',0.433,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','10','ELC_HYD_RES',0.422,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','11','ELC_HYD_RES',0.401,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','12','ELC_HYD_RES',0.377,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','13','ELC_HYD_RES',0.358,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','14','ELC_HYD_RES',0.347,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','15','ELC_HYD_RES',0.347,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','16','ELC_HYD_RES',0.366,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','17','ELC_HYD_RES',0.396,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','18','ELC_HYD_RES',0.430,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','19','ELC_HYD_RES',0.448,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','20','ELC_HYD_RES',0.456,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','21','ELC_HYD_RES',0.449,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','22','ELC_HYD_RES',0.440,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','23','ELC_HYD_RES',0.426,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','24','ELC_HYD_RES',0.411,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','1','ELC_HYD_RES',0.463,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','2','ELC_HYD_RES',0.450,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','3','ELC_HYD_RES',0.440,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','4','ELC_HYD_RES',0.433,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','5','ELC_HYD_RES',0.435,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','6','ELC_HYD_RES',0.453,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','7','ELC_HYD_RES',0.488,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','8','ELC_HYD_RES',0.522,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','9','ELC_HYD_RES',0.535,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','10','ELC_HYD_RES',0.541,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','11','ELC_HYD_RES',0.543,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','12','ELC_HYD_RES',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','13','ELC_HYD_RES',0.533,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','14','ELC_HYD_RES',0.531,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','15','ELC_HYD_RES',0.537,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','16','ELC_HYD_RES',0.547,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','17','ELC_HYD_RES',0.557,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','18','ELC_HYD_RES',0.562,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','19','ELC_HYD_RES',0.556,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','20','ELC_HYD_RES',0.543,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','21','ELC_HYD_RES',0.529,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','22','ELC_HYD_RES',0.517,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','23','ELC_HYD_RES',0.500,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','24','ELC_HYD_RES',0.480,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','1','ELC_HYD_ROR',0.563,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','2','ELC_HYD_ROR',0.555,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','3','ELC_HYD_ROR',0.546,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','4','ELC_HYD_ROR',0.540,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','5','ELC_HYD_ROR',0.544,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','6','ELC_HYD_ROR',0.560,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','7','ELC_HYD_ROR',0.590,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','8','ELC_HYD_ROR',0.620,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','9','ELC_HYD_ROR',0.625,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','10','ELC_HYD_ROR',0.624,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','11','ELC_HYD_ROR',0.615,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','12','ELC_HYD_ROR',0.604,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','13','ELC_HYD_ROR',0.592,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','14','ELC_HYD_ROR',0.586,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','15','ELC_HYD_ROR',0.591,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','16','ELC_HYD_ROR',0.608,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','17','ELC_HYD_ROR',0.625,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','18','ELC_HYD_ROR',0.642,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','19','ELC_HYD_ROR',0.644,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','20','ELC_HYD_ROR',0.636,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','21','ELC_HYD_ROR',0.622,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','22','ELC_HYD_ROR',0.610,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','23','ELC_HYD_ROR',0.596,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','24','ELC_HYD_ROR',0.578,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','1','ELC_HYD_ROR',0.451,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','2','ELC_HYD_ROR',0.438,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','3','ELC_HYD_ROR',0.429,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','4','ELC_HYD_ROR',0.424,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','5','ELC_HYD_ROR',0.424,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','6','ELC_HYD_ROR',0.435,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','7','ELC_HYD_ROR',0.455,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','8','ELC_HYD_ROR',0.469,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','9','ELC_HYD_ROR',0.457,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','10','ELC_HYD_ROR',0.430,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','11','ELC_HYD_ROR',0.402,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','12','ELC_HYD_ROR',0.380,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','13','ELC_HYD_ROR',0.360,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','14','ELC_HYD_ROR',0.352,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','15','ELC_HYD_ROR',0.350,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','16','ELC_HYD_ROR',0.361,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','17','ELC_HYD_ROR',0.384,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','18','ELC_HYD_ROR',0.422,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','19','ELC_HYD_ROR',0.468,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','20','ELC_HYD_ROR',0.496,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','21','ELC_HYD_ROR',0.506,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','22','ELC_HYD_ROR',0.504,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','23','ELC_HYD_ROR',0.490,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','24','ELC_HYD_ROR',0.472,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','1','ELC_HYD_ROR',0.397,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','2','ELC_HYD_ROR',0.384,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','3','ELC_HYD_ROR',0.378,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','4','ELC_HYD_ROR',0.374,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','5','ELC_HYD_ROR',0.371,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','6','ELC_HYD_ROR',0.377,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','7','ELC_HYD_ROR',0.398,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','8','ELC_HYD_ROR',0.422,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','9','ELC_HYD_ROR',0.433,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','10','ELC_HYD_ROR',0.422,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','11','ELC_HYD_ROR',0.401,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','12','ELC_HYD_ROR',0.377,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','13','ELC_HYD_ROR',0.358,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','14','ELC_HYD_ROR',0.347,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','15','ELC_HYD_ROR',0.347,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','16','ELC_HYD_ROR',0.366,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','17','ELC_HYD_ROR',0.396,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','18','ELC_HYD_ROR',0.430,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','19','ELC_HYD_ROR',0.448,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','20','ELC_HYD_ROR',0.456,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','21','ELC_HYD_ROR',0.449,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','22','ELC_HYD_ROR',0.440,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','23','ELC_HYD_ROR',0.426,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','24','ELC_HYD_ROR',0.411,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','1','ELC_HYD_ROR',0.463,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','2','ELC_HYD_ROR',0.450,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','3','ELC_HYD_ROR',0.440,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','4','ELC_HYD_ROR',0.433,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','5','ELC_HYD_ROR',0.435,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','6','ELC_HYD_ROR',0.453,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','7','ELC_HYD_ROR',0.488,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','8','ELC_HYD_ROR',0.522,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','9','ELC_HYD_ROR',0.535,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','10','ELC_HYD_ROR',0.541,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','11','ELC_HYD_ROR',0.543,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','12','ELC_HYD_ROR',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','13','ELC_HYD_ROR',0.533,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','14','ELC_HYD_ROR',0.531,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','15','ELC_HYD_ROR',0.537,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','16','ELC_HYD_ROR',0.547,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','17','ELC_HYD_ROR',0.557,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','18','ELC_HYD_ROR',0.562,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','19','ELC_HYD_ROR',0.556,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','20','ELC_HYD_ROR',0.543,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','21','ELC_HYD_ROR',0.529,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','22','ELC_HYD_ROR',0.517,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','23','ELC_HYD_ROR',0.500,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','24','ELC_HYD_ROR',0.480,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','1','ELC_WIN_ONS',0.392,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','2','ELC_WIN_ONS',0.381,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','3','ELC_WIN_ONS',0.385,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','4','ELC_WIN_ONS',0.379,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','5','ELC_WIN_ONS',0.378,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','6','ELC_WIN_ONS',0.379,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','7','ELC_WIN_ONS',0.377,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','8','ELC_WIN_ONS',0.381,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','9','ELC_WIN_ONS',0.381,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','10','ELC_WIN_ONS',0.377,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','11','ELC_WIN_ONS',0.370,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','12','ELC_WIN_ONS',0.369,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','13','ELC_WIN_ONS',0.367,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','14','ELC_WIN_ONS',0.369,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','15','ELC_WIN_ONS',0.371,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','16','ELC_WIN_ONS',0.376,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','17','ELC_WIN_ONS',0.383,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','18','ELC_WIN_ONS',0.386,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','19','ELC_WIN_ONS',0.387,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','20','ELC_WIN_ONS',0.391,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','21','ELC_WIN_ONS',0.392,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','22','ELC_WIN_ONS',0.394,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','23','ELC_WIN_ONS',0.396,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','24','ELC_WIN_ONS',0.393,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','1','ELC_WIN_ONS',0.350,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','2','ELC_WIN_ONS',0.340,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','3','ELC_WIN_ONS',0.346,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','4','ELC_WIN_ONS',0.343,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','5','ELC_WIN_ONS',0.340,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','6','ELC_WIN_ONS',0.339,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','7','ELC_WIN_ONS',0.337,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','8','ELC_WIN_ONS',0.337,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','9','ELC_WIN_ONS',0.334,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','10','ELC_WIN_ONS',0.327,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','11','ELC_WIN_ONS',0.320,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','12','ELC_WIN_ONS',0.320,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','13','ELC_WIN_ONS',0.322,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','14','ELC_WIN_ONS',0.329,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','15','ELC_WIN_ONS',0.338,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','16','ELC_WIN_ONS',0.345,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','17','ELC_WIN_ONS',0.348,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','18','ELC_WIN_ONS',0.353,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','19','ELC_WIN_ONS',0.355,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','20','ELC_WIN_ONS',0.356,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','21','ELC_WIN_ONS',0.356,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','22','ELC_WIN_ONS',0.358,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','23','ELC_WIN_ONS',0.358,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','24','ELC_WIN_ONS',0.353,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','1','ELC_WIN_ONS',0.310,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','2','ELC_WIN_ONS',0.303,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','3','ELC_WIN_ONS',0.306,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','4','ELC_WIN_ONS',0.300,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','5','ELC_WIN_ONS',0.298,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','6','ELC_WIN_ONS',0.298,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','7','ELC_WIN_ONS',0.294,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','8','ELC_WIN_ONS',0.291,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','9','ELC_WIN_ONS',0.286,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','10','ELC_WIN_ONS',0.279,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','11','ELC_WIN_ONS',0.274,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','12','ELC_WIN_ONS',0.281,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','13','ELC_WIN_ONS',0.288,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','14','ELC_WIN_ONS',0.302,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','15','ELC_WIN_ONS',0.314,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','16','ELC_WIN_ONS',0.320,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','17','ELC_WIN_ONS',0.317,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','18','ELC_WIN_ONS',0.318,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','19','ELC_WIN_ONS',0.322,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','20','ELC_WIN_ONS',0.319,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','21','ELC_WIN_ONS',0.315,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','22','ELC_WIN_ONS',0.321,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','23','ELC_WIN_ONS',0.321,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','24','ELC_WIN_ONS',0.316,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','1','ELC_WIN_ONS',0.260,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','2','ELC_WIN_ONS',0.255,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','3','ELC_WIN_ONS',0.253,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','4','ELC_WIN_ONS',0.251,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','5','ELC_WIN_ONS',0.251,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','6','ELC_WIN_ONS',0.251,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','7','ELC_WIN_ONS',0.250,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','8','ELC_WIN_ONS',0.246,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','9','ELC_WIN_ONS',0.239,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','10','ELC_WIN_ONS',0.233,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','11','ELC_WIN_ONS',0.234,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','12','ELC_WIN_ONS',0.240,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','13','ELC_WIN_ONS',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','14','ELC_WIN_ONS',0.258,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','15','ELC_WIN_ONS',0.269,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','16','ELC_WIN_ONS',0.279,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','17','ELC_WIN_ONS',0.281,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','18','ELC_WIN_ONS',0.284,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','19','ELC_WIN_ONS',0.285,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','20','ELC_WIN_ONS',0.276,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','21','ELC_WIN_ONS',0.265,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','22','ELC_WIN_ONS',0.265,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','23','ELC_WIN_ONS',0.264,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','24','ELC_WIN_ONS',0.261,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','1','ELC_WIN_OFF',0.431,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','2','ELC_WIN_OFF',0.419,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','3','ELC_WIN_OFF',0.423,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','4','ELC_WIN_OFF',0.417,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','5','ELC_WIN_OFF',0.416,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','6','ELC_WIN_OFF',0.417,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','7','ELC_WIN_OFF',0.415,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','8','ELC_WIN_OFF',0.419,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','9','ELC_WIN_OFF',0.419,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','10','ELC_WIN_OFF',0.414,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','11','ELC_WIN_OFF',0.407,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','12','ELC_WIN_OFF',0.405,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','13','ELC_WIN_OFF',0.404,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','14','ELC_WIN_OFF',0.406,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','15','ELC_WIN_OFF',0.408,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','16','ELC_WIN_OFF',0.414,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','17','ELC_WIN_OFF',0.422,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','18','ELC_WIN_OFF',0.424,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','19','ELC_WIN_OFF',0.426,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','20','ELC_WIN_OFF',0.430,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','21','ELC_WIN_OFF',0.431,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','22','ELC_WIN_OFF',0.434,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','23','ELC_WIN_OFF',0.435,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','24','ELC_WIN_OFF',0.433,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','1','ELC_WIN_OFF',0.385,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','2','ELC_WIN_OFF',0.374,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','3','ELC_WIN_OFF',0.381,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','4','ELC_WIN_OFF',0.377,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','5','ELC_WIN_OFF',0.374,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','6','ELC_WIN_OFF',0.373,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','7','ELC_WIN_OFF',0.370,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','8','ELC_WIN_OFF',0.371,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','9','ELC_WIN_OFF',0.367,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','10','ELC_WIN_OFF',0.360,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','11','ELC_WIN_OFF',0.352,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','12','ELC_WIN_OFF',0.352,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','13','ELC_WIN_OFF',0.354,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','14','ELC_WIN_OFF',0.361,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','15','ELC_WIN_OFF',0.372,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','16','ELC_WIN_OFF',0.379,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','17','ELC_WIN_OFF',0.383,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','18','ELC_WIN_OFF',0.388,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','19','ELC_WIN_OFF',0.390,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','20','ELC_WIN_OFF',0.391,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','21','ELC_WIN_OFF',0.392,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','22','ELC_WIN_OFF',0.394,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','23','ELC_WIN_OFF',0.393,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','24','ELC_WIN_OFF',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','1','ELC_WIN_OFF',0.341,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','2','ELC_WIN_OFF',0.333,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','3','ELC_WIN_OFF',0.337,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','4','ELC_WIN_OFF',0.330,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','5','ELC_WIN_OFF',0.328,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','6','ELC_WIN_OFF',0.327,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','7','ELC_WIN_OFF',0.323,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','8','ELC_WIN_OFF',0.320,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','9','ELC_WIN_OFF',0.315,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','10','ELC_WIN_OFF',0.307,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','11','ELC_WIN_OFF',0.302,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','12','ELC_WIN_OFF',0.309,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','13','ELC_WIN_OFF',0.316,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','14','ELC_WIN_OFF',0.332,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','15','ELC_WIN_OFF',0.346,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','16','ELC_WIN_OFF',0.352,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','17','ELC_WIN_OFF',0.348,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','18','ELC_WIN_OFF',0.349,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','19','ELC_WIN_OFF',0.354,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','20','ELC_WIN_OFF',0.351,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','21','ELC_WIN_OFF',0.346,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','22','ELC_WIN_OFF',0.353,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','23','ELC_WIN_OFF',0.353,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','24','ELC_WIN_OFF',0.347,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','1','ELC_WIN_OFF',0.286,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','2','ELC_WIN_OFF',0.281,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','3','ELC_WIN_OFF',0.279,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','4','ELC_WIN_OFF',0.276,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','5','ELC_WIN_OFF',0.277,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','6','ELC_WIN_OFF',0.276,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','7','ELC_WIN_OFF',0.275,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','8','ELC_WIN_OFF',0.271,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','9','ELC_WIN_OFF',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','10','ELC_WIN_OFF',0.256,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','11','ELC_WIN_OFF',0.257,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','12','ELC_WIN_OFF',0.264,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','13','ELC_WIN_OFF',0.271,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','14','ELC_WIN_OFF',0.284,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','15','ELC_WIN_OFF',0.296,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','16','ELC_WIN_OFF',0.307,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','17','ELC_WIN_OFF',0.309,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','18','ELC_WIN_OFF',0.313,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','19','ELC_WIN_OFF',0.313,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','20','ELC_WIN_OFF',0.304,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','21','ELC_WIN_OFF',0.291,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','22','ELC_WIN_OFF',0.291,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','23','ELC_WIN_OFF',0.291,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','24','ELC_WIN_OFF',0.287,'');
-- Import technologies																see "C[...]Power\LoadCurves\Eurelectric\Eurelectric_250708_153751_tradetotal.xlsx"
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','1','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','2','ELC_IMP_FIN',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','3','ELC_IMP_FIN',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','4','ELC_IMP_FIN',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','5','ELC_IMP_FIN',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','6','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','7','ELC_IMP_FIN',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','8','ELC_IMP_FIN',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','9','ELC_IMP_FIN',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','10','ELC_IMP_FIN',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','11','ELC_IMP_FIN',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','12','ELC_IMP_FIN',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','13','ELC_IMP_FIN',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','14','ELC_IMP_FIN',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','15','ELC_IMP_FIN',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','16','ELC_IMP_FIN',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','17','ELC_IMP_FIN',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','18','ELC_IMP_FIN',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','19','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','20','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','21','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','22','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','23','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','24','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','1','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','2','ELC_IMP_FIN',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','3','ELC_IMP_FIN',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','4','ELC_IMP_FIN',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','5','ELC_IMP_FIN',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','6','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','7','ELC_IMP_FIN',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','8','ELC_IMP_FIN',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','9','ELC_IMP_FIN',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','10','ELC_IMP_FIN',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','11','ELC_IMP_FIN',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','12','ELC_IMP_FIN',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','13','ELC_IMP_FIN',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','14','ELC_IMP_FIN',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','15','ELC_IMP_FIN',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','16','ELC_IMP_FIN',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','17','ELC_IMP_FIN',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','18','ELC_IMP_FIN',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','19','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','20','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','21','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','22','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','23','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','24','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','1','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','2','ELC_IMP_FIN',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','3','ELC_IMP_FIN',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','4','ELC_IMP_FIN',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','5','ELC_IMP_FIN',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','6','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','7','ELC_IMP_FIN',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','8','ELC_IMP_FIN',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','9','ELC_IMP_FIN',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','10','ELC_IMP_FIN',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','11','ELC_IMP_FIN',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','12','ELC_IMP_FIN',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','13','ELC_IMP_FIN',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','14','ELC_IMP_FIN',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','15','ELC_IMP_FIN',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','16','ELC_IMP_FIN',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','17','ELC_IMP_FIN',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','18','ELC_IMP_FIN',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','19','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','20','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','21','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','22','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','23','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','24','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','1','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','2','ELC_IMP_FIN',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','3','ELC_IMP_FIN',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','4','ELC_IMP_FIN',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','5','ELC_IMP_FIN',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','6','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','7','ELC_IMP_FIN',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','8','ELC_IMP_FIN',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','9','ELC_IMP_FIN',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','10','ELC_IMP_FIN',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','11','ELC_IMP_FIN',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','12','ELC_IMP_FIN',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','13','ELC_IMP_FIN',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','14','ELC_IMP_FIN',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','15','ELC_IMP_FIN',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','16','ELC_IMP_FIN',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','17','ELC_IMP_FIN',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','18','ELC_IMP_FIN',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','19','ELC_IMP_FIN',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','20','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','21','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','22','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','23','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','24','ELC_IMP_FIN',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','1','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','2','ELC_IMP_NO3',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','3','ELC_IMP_NO3',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','4','ELC_IMP_NO3',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','5','ELC_IMP_NO3',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','6','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','7','ELC_IMP_NO3',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','8','ELC_IMP_NO3',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','9','ELC_IMP_NO3',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','10','ELC_IMP_NO3',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','11','ELC_IMP_NO3',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','12','ELC_IMP_NO3',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','13','ELC_IMP_NO3',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','14','ELC_IMP_NO3',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','15','ELC_IMP_NO3',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','16','ELC_IMP_NO3',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','17','ELC_IMP_NO3',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','18','ELC_IMP_NO3',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','19','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','20','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','21','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','22','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','23','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','24','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','1','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','2','ELC_IMP_NO3',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','3','ELC_IMP_NO3',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','4','ELC_IMP_NO3',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','5','ELC_IMP_NO3',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','6','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','7','ELC_IMP_NO3',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','8','ELC_IMP_NO3',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','9','ELC_IMP_NO3',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','10','ELC_IMP_NO3',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','11','ELC_IMP_NO3',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','12','ELC_IMP_NO3',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','13','ELC_IMP_NO3',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','14','ELC_IMP_NO3',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','15','ELC_IMP_NO3',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','16','ELC_IMP_NO3',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','17','ELC_IMP_NO3',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','18','ELC_IMP_NO3',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','19','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','20','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','21','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','22','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','23','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','24','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','1','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','2','ELC_IMP_NO3',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','3','ELC_IMP_NO3',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','4','ELC_IMP_NO3',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','5','ELC_IMP_NO3',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','6','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','7','ELC_IMP_NO3',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','8','ELC_IMP_NO3',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','9','ELC_IMP_NO3',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','10','ELC_IMP_NO3',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','11','ELC_IMP_NO3',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','12','ELC_IMP_NO3',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','13','ELC_IMP_NO3',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','14','ELC_IMP_NO3',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','15','ELC_IMP_NO3',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','16','ELC_IMP_NO3',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','17','ELC_IMP_NO3',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','18','ELC_IMP_NO3',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','19','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','20','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','21','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','22','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','23','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','24','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','1','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','2','ELC_IMP_NO3',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','3','ELC_IMP_NO3',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','4','ELC_IMP_NO3',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','5','ELC_IMP_NO3',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','6','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','7','ELC_IMP_NO3',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','8','ELC_IMP_NO3',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','9','ELC_IMP_NO3',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','10','ELC_IMP_NO3',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','11','ELC_IMP_NO3',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','12','ELC_IMP_NO3',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','13','ELC_IMP_NO3',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','14','ELC_IMP_NO3',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','15','ELC_IMP_NO3',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','16','ELC_IMP_NO3',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','17','ELC_IMP_NO3',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','18','ELC_IMP_NO3',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','19','ELC_IMP_NO3',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','20','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','21','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','22','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','23','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','24','ELC_IMP_NO3',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','1','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','2','ELC_IMP_SWE',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','3','ELC_IMP_SWE',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','4','ELC_IMP_SWE',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','5','ELC_IMP_SWE',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','6','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','7','ELC_IMP_SWE',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','8','ELC_IMP_SWE',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','9','ELC_IMP_SWE',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','10','ELC_IMP_SWE',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','11','ELC_IMP_SWE',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','12','ELC_IMP_SWE',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','13','ELC_IMP_SWE',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','14','ELC_IMP_SWE',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','15','ELC_IMP_SWE',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','16','ELC_IMP_SWE',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','17','ELC_IMP_SWE',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','18','ELC_IMP_SWE',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','19','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','20','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','21','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','22','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','23','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','winter','24','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','1','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','2','ELC_IMP_SWE',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','3','ELC_IMP_SWE',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','4','ELC_IMP_SWE',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','5','ELC_IMP_SWE',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','6','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','7','ELC_IMP_SWE',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','8','ELC_IMP_SWE',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','9','ELC_IMP_SWE',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','10','ELC_IMP_SWE',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','11','ELC_IMP_SWE',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','12','ELC_IMP_SWE',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','13','ELC_IMP_SWE',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','14','ELC_IMP_SWE',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','15','ELC_IMP_SWE',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','16','ELC_IMP_SWE',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','17','ELC_IMP_SWE',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','18','ELC_IMP_SWE',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','19','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','20','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','21','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','22','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','23','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','spring','24','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','1','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','2','ELC_IMP_SWE',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','3','ELC_IMP_SWE',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','4','ELC_IMP_SWE',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','5','ELC_IMP_SWE',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','6','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','7','ELC_IMP_SWE',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','8','ELC_IMP_SWE',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','9','ELC_IMP_SWE',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','10','ELC_IMP_SWE',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','11','ELC_IMP_SWE',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','12','ELC_IMP_SWE',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','13','ELC_IMP_SWE',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','14','ELC_IMP_SWE',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','15','ELC_IMP_SWE',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','16','ELC_IMP_SWE',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','17','ELC_IMP_SWE',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','18','ELC_IMP_SWE',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','19','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','20','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','21','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','22','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','23','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','summer','24','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','1','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','2','ELC_IMP_SWE',0.209,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','3','ELC_IMP_SWE',0.241,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','4','ELC_IMP_SWE',0.263,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','5','ELC_IMP_SWE',0.266,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','6','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','7','ELC_IMP_SWE',0.205,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','8','ELC_IMP_SWE',0.247,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','9','ELC_IMP_SWE',0.389,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','10','ELC_IMP_SWE',0.594,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','11','ELC_IMP_SWE',0.789,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','12','ELC_IMP_SWE',0.901,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','13','ELC_IMP_SWE',0.980,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','14','ELC_IMP_SWE',1.000,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','15','ELC_IMP_SWE',0.989,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','16','ELC_IMP_SWE',0.915,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','17','ELC_IMP_SWE',0.788,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','18','ELC_IMP_SWE',0.538,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','19','ELC_IMP_SWE',0.228,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','20','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','21','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','22','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','23','ELC_IMP_SWE',0.200,'');
INSERT INTO "CapacityFactorTech" VALUES ('NO4','fall','24','ELC_IMP_SWE',0.200,'');

CREATE TABLE "CapacityFactorProcess" (
	"regions"	text,
	"season_name"	text,
	"time_of_day_name"	text,
	"tech"	text,
	"vintage"	integer,
	"cf_process"	real CHECK("cf_process" >= 0 AND "cf_process" <= 1),
	"cf_process_notes"	text,
	PRIMARY KEY("regions","season_name","time_of_day_name","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day")
);
CREATE TABLE "CapacityCredit" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"vintage" integer,
	"cf_tech"	real CHECK("cf_tech" >= 0 AND "cf_tech" <= 1),
	"cf_tech_notes"	text,
	PRIMARY KEY("regions","periods","tech","vintage")
);
INSERT INTO "CapacityCredit" VALUES ('NO4',2030,'STG_ELC_BTT',2030,0.70,'Assumption');
INSERT INTO "CapacityCredit" VALUES ('NO4',2030,'STG_ELC_VRFB',2030,0.70,'Assumption');

CREATE TABLE "MaxResource" (
	"regions"	text,
	"tech"	text,
	"maxres"	real,
	"maxres_units"	text,
	"maxres_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);

CREATE TABLE "MaxMaterialReserve" (
	"regions"	text,
	"tech"	text,
	"maxres"	real,
	"maxres_units"	text,
	"maxres_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);

CREATE TABLE "MaterialIntensity" (
	"regions"	text,
	"comm_name" text,
	"tech"	text,
	"vintage"	integer,
	"mat_int"	real,
	"mat_int_units"	text,
	"mat_int_notes"	text,
	PRIMARY KEY("regions","tech","comm_name","vintage"),
	FOREIGN KEY("comm_name") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
);

CREATE TABLE "Output_V_Capacity" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"tech"	text,
	"vintage"	integer,
	"capacity"	real,
	PRIMARY KEY("regions","scenario","tech","vintage"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
);
CREATE TABLE "Output_VFlow_Out" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"t_season"	text,
	"t_day"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"vflow_out"	real,
	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name")
);
CREATE TABLE "Output_VFlow_In" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"t_season"	text,
	"t_day"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"vflow_in"	real,
	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "Output_VMat_Cons" (
    "regions"   text,
    "scenario"  text,
    "sector"    text,
    "material_comm" text,
    "tech"  text,
    "vintage"   integer,
    "vmat_cons" real,
    PRIMARY KEY("regions","scenario","material_comm","tech","vintage"),
    FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
    FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
    FOREIGN KEY("material_comm") REFERENCES "commodities"("comm_name")
);
CREATE TABLE "Output_Objective" (
	"scenario"	text,
	"objective_name"	text,
	"total_system_cost"	real
);
CREATE TABLE "Output_Emissions" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"emissions_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"emissions"	real,
	PRIMARY KEY("regions","scenario","t_periods","emissions_comm","tech","vintage"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("emissions_comm") REFERENCES "EmissionActivity"("emis_comm"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods")
);
CREATE TABLE "Output_Curtailment" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"t_season"	text,
	"t_day"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"curtailment"	real,
	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day")
);
CREATE TABLE "Output_Costs" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"output_name"	text,
	"tech"	text,
	"vintage"	integer,
	"output_cost"	real,
	PRIMARY KEY("regions","scenario","output_name","tech","vintage"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "Output_Duals" (
	"constraint_name"	text,
	"scenario"	text,
	"dual"	real,
	PRIMARY KEY("constraint_name","scenario")
);
CREATE TABLE "Output_CapacityByPeriodAndTech" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"tech"	text,
	"capacity"	real,
	PRIMARY KEY("regions","scenario","t_periods","tech"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "tech_mga" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);
CREATE TABLE "tech_imports" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);
CREATE TABLE "tech_exports" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);
CREATE TABLE "tech_domestic" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);
CREATE TABLE "DiscreteCapacity" (
	"tech"			text,
	"dsccap"		real,
	"dsccap_units"	text,
	"dsccap_notes"	text,
	PRIMARY KEY("tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);
CREATE TABLE "commodities_e_moo" (
	"comm_name"	text,
	"notes"		text,
	PRIMARY KEY("comm_name"),
	FOREIGN KEY("comm_name") REFERENCES "commodities"("comm_name")
);
CREATE TABLE "MultiObjectiveSlacked" (
	"objective_name"		text,
	"objective_slack"		real,
	"notes"					text
);
CREATE TABLE "EnergyCommodityConcentrationIndex" (
    "regions"                   text,
    "comm_name"                 text,
    "periods"                   integer,
    "concentration_index"       real,
    "concentration_index_units" text,
    "concentration_index_notes" text,
	PRIMARY KEY("regions","comm_name","periods"),
	FOREIGN KEY("comm_name") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
);
CREATE TABLE "TechnologyMaterialSupplyRisk" (
	"regions"	        text,
	"tech"	            text,
	"vintage"	        integer,
	"tech_msr"	        real,
	"tech_msr_units"	text,
	"tech_msr_notes"	text,
	PRIMARY KEY("regions","tech","vintage"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
);
CREATE TABLE "Output_MaterialSupplyRisk" (
    "regions"   text,
	"scenario"	text,
	"t_periods" integer,
	"materialSR"	real,
	PRIMARY KEY("regions","scenario","t_periods"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("regions") REFERENCES "regions"("regions")
);
CREATE TABLE "Output_EnergySupplyRisk" (
    "regions"   text,
	"scenario"	text,
	"t_periods" integer,
	"energySR"	real,
	PRIMARY KEY("regions","scenario","t_periods"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("regions") REFERENCES "regions"("regions")
);
CREATE TABLE "Output_TotalCosts" (
    "regions"   text,
	"scenario"	text,
	"t_periods" integer,
	"total_costs"	real,
	PRIMARY KEY("regions","scenario","t_periods"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("regions") REFERENCES "regions"("regions")
);
CREATE TABLE "Output_TotalEmissions" (
    "regions"   text,
	"scenario"	text,
	"t_periods" integer,
	"total_emissions"	real,
	PRIMARY KEY("regions","scenario","t_periods"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("regions") REFERENCES "regions"("regions")
);
CREATE TABLE "Output_VSlack" (
	"scenario"	text,
	"moo_f"		text,
	"slack"		real,
	PRIMARY KEY("scenario","moo_f")
);