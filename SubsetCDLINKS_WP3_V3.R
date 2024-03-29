# create data

#data_cd <- read.csv('data/cdlinks_compare_20170503-215606.csv')
#data_cd_V3 <- read.csv('data/cdlinks_compare_20170508-141900.csv')
#data_cd_V3 <- read.csv('data/cdlinks_compare_20170519-124306.csv')
#data_cd_V3 <- read.csv('data/cdlinks_compare_20170619-142049.csv')
data_cd_V3 <- read.csv('data/cdlinks_compare_20170712-110026.csv')
#data_cd_proc <- read.csv('data/processed_data_1305.csv')

# determine values in database for models, scenario, regions
models <- unique(data_cd_V3[1])
scenarios <- unique(data_cd_V3[2])
regions <- unique(data_cd_V3[3])

#COPPE, DNE, GEM3 hebben tweede submissie niet met V2 benoemd, de scenario's zonder V2 zijn de tweede versie
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="NoPolicy", "SCENARIO"] <- "NoPolicy_V3"

data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="INDCi", "SCENARIO"] <- "INDCi_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="INDCi", "SCENARIO"] <- "INDCi_V3"

data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="NPi", "SCENARIO"]            <- "NPi_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="NPip", "SCENARIO"]           <- "NPip_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="INDCi", "SCENARIO"]          <- "INDCi_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="INDC2030i_1000", "SCENARIO"] <- "INDC2030i_1000_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="INDC2030i_1600", "SCENARIO"] <- "INDC2030i_1600_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="NPi2020_400", "SCENARIO"]    <- "NPi2020_400_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="NPi2020_1000", "SCENARIO"]   <- "NPi2020_1000_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="COPPE-COFFEE 1.0" & data_cd_V3[,"SCENARIO"]=="NPi2020_1600", "SCENARIO"]   <- "NPi2020_1600_V3"

data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="NoPolicy", "SCENARIO"]            <- "NoPolicy_V3"

data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="NPi", "SCENARIO"]            <- "NPi_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="NPip", "SCENARIO"]           <- "NPip_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="INDCi", "SCENARIO"]          <- "INDCi_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="INDC2030i_1000", "SCENARIO"] <- "INDC2030i_1000_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="INDC2030i_1600", "SCENARIO"] <- "INDC2030i_1600_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="NPi2020_400", "SCENARIO"]    <- "NPi2020_400_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="NPi2020_1000", "SCENARIO"]   <- "NPi2020_1000_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="DNE21+ V.14" & data_cd_V3[,"SCENARIO"]=="NPi2020_1600", "SCENARIO"]   <- "NPi2020_1600_V3"

data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="NoPolicy", "SCENARIO"] <- "NoPolicy_V3"

data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="NPi", "SCENARIO"]            <- "NPi_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="NPip", "SCENARIO"]           <- "NPip_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="INDCi", "SCENARIO"]          <- "INDCi_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="INDC2030i_1000", "SCENARIO"] <- "INDC2030i_1000_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="INDC2030i_1600", "SCENARIO"] <- "INDC2030i_1600_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="NPi2020_400", "SCENARIO"]    <- "NPi2020_400_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="NPi2020_1000", "SCENARIO"]   <- "NPi2020_1000_V3"
data_cd_V3[data_cd_V3[,"MODEL"]=="GEM-E3_V1" & data_cd_V3[,"SCENARIO"]=="NPi2020_1600", "SCENARIO"]   <- "NPi2020_1600_V3"

# make separate csv files for each model
data_AIM <- subset(data_cd_V3, MODEL=="AIM/CGE")
data_COPPE <- subset(data_cd_V3, MODEL=="COPPE-COFFEE 1.0")
data_DNE <- subset(data_cd_V3, MODEL=="DNE21+ V.14")
#data_DNE_proc <- subset(data_cd_V3_proc, model=="DNE21+ V.14")
data_GEM3 <- subset(data_cd_V3, MODEL=="GEM-E3_V1")
data_IMAGE <- subset(data_cd_V3, MODEL=="IMAGE 3.0")
data_MESSAGE <- subset(data_cd_V3, MODEL=="MESSAGEix-GLOBIOM_1.0" | MODEL=="MESSAGE-GLOBIOM_1.0")
data_REMIND <- subset(data_cd_V3, MODEL=="REMIND-MAgPIE 1.7-3.0")
data_WITCH <- subset(data_cd_V3, MODEL=="WITCH2016")
write.table(data_AIM, file = "data_V3/data_AIM.csv", sep=";", row.names = F)
write.table(data_DNE, file = "data_V3/data_DNE.csv", sep=";", row.names = F)
write.table(data_COPPE, file = "data_V3/data_COPPE.csv", sep=";", row.names = F)
write.table(data_DNE, file = "data_V3/data_DNE.csv", sep=";", row.names = F)
write.table(data_GCAM, file = "data_V3/data_GCAM.csv", sep=";", row.names = F)
write.table(data_GEM3, file = "data_V3/data_GEM3.csv", sep=";", row.names = F)
write.table(data_IMAGE, file = "data_V3/data_IMAGE.csv", sep=";", row.names = F)
write.table(data_MESSAGE, file = "data_V3/data_MESSAGE.csv", sep=";", row.names = F)
write.table(data_REMIND, file = "data_V3/data_REMIND.csv", sep=";", row.names = F)
write.table(data_WITCH, file = "data_V3/data_WITCH.csv", sep=";", row.names = F)

# make separate csv files for each scenario
data_NPi_V3 <- subset(data_cd_V3, SCENARIO=="NPi_V3" & VARIABLE=="Emissions|CO2")
data_NPip_V3 <- subset(data_cd_V3, SCENARIO=="NPip_V3" & VARIABLE=="Emissions|CO2")
data_INDCi_V3 <- subset(data_cd_V3, SCENARIO=="INDCi_V3")
write.table(data_NPi_V3, file = "data_V3/data_NPi_V3.csv", sep=";", row.names = F)
write.table(data_NPip_V3, file = "data_V3/data_NPip_V3.csv", sep=";", row.names = F)
write.table(data_INDCi_V3, file = "data_V3/data_INDCi_V3.csv", sep=";", row.names = F)

data_NPi2020_400_V3 <- subset(data_cd_V3, SCENARIO=="NPi2020_400_V3" & VARIABLE=="Emissions|CO2")
data_NPi2020_1000_V3 <- subset(data_cd_V3, SCENARIO=="NPi2020_1000_V3" & VARIABLE=="Emissions|CO2")
data_NPi2020_1600_V3 <- subset(data_cd_V3, SCENARIO=="NPi2020_1600_V3" & VARIABLE=="Emissions|CO2")
data_INDCi2030_1000_V3 <- subset(data_cd_V3, SCENARIO=="INDCi2030_1000_V3" & VARIABLE=="Emissions|CO2")
data_INDCi2030_1600_V3 <- subset(data_cd_V3, SCENARIO=="INDCi2030_1600_V3" & VARIABLE=="Emissions|CO2")
write.table(data_NPi2020_400_V3, file = "data_V3/data_INDCi_V3.csv", sep=";", row.names = F)
write.table(data_NPi2020_1000_V3, file = "data_V3/data_INDCi_V3.csv", sep=";", row.names = F)
write.table(data_NPi2020_1600_V3, file = "data_V3/data_INDCi_V3.csv", sep=";", row.names = F)
write.table(data_INDCi2030_1000_V3, file = "data_V3/data_INDCi_V3.csv", sep=";", row.names = F)
write.table(data_INDCi2030_1600_V3, file = "data_V3/data_INDCi_V3.csv", sep=";", row.names = F)

# specify regions, scenario and variables that will be used for presentation of results carbon budget
regs <- c("BRA","CHN","IND","EU","JPN","USA","RUS", "RoW","World")
scens <- c("NoPolicy", "INDCi", "NPi", "NPip")
scens_V3 <- c("NoPolicy_V3", "INDCi_V3", "NPi_V3", "NPip_V3")
scens_ext_V3 <- c("NoPolicy_V3", "INDCi_V3", "NPi_V3", "NPip_V3", "NPi2020_400_V3", "NPi2020_1000_V3", "NPi2020_1600_V3", "INDC2030i_1000_V3", "INDC2030i_1600_V3")
vars <- c("Emissions|CO2", "Emissions|CO2|AFOLU", "Emissions|Kyoto Gases")
models <- c("AIM/CGE", "COPPE-COFFEE 1.0", "DNE21+ V.14", "GEM-E3_V1", "IMAGE 3.0", "MESSAGEix-GLOBIOM_1.0", "REMIND-MAgPIE 1.7-3.0", "WITCH2016")

# first round, includes CO2, CO2|AFOLU and Kyoto emissions
data_carbon_budget <- subset(data_cd_V3, REGION %in% regs)
data_carbon_budget <- subset(data_carbon_budget, SCENARIO %in% scens)
data_carbon_budget <- subset(data_carbon_budget, VARIABLE %in% vars)
write.table(data_carbon_budget, file = "data_V3/data_carbon_budget.csv", sep=";", row.names = F)

# second round, includes CO2, CO2|AFOLU and Kyoto emissions
data_carbon_budget_V3 <- subset(data_cd_V3, REGION %in% regs)
data_carbon_budget_V3 <- subset(data_carbon_budget_V3, SCENARIO %in% scens_V3)
data_carbon_budget_V3 <- subset(data_carbon_budget_V3, VARIABLE %in% vars)
write.table(data_carbon_budget_V3, file = "data_V3/data_carbon_budget_V3.csv", sep=";", row.names = F)

# this file also include the mitigation scenario
data_carbon_budget_ext_V3 <- subset(data_cd_V3, REGION %in% regs)
data_carbon_budget_ext_V3 <- subset(data_carbon_budget_ext_V3, SCENARIO %in% scens_ext_V3)
data_carbon_budget_ext_V3 <- subset(data_carbon_budget_ext_V3, VARIABLE %in% vars)
write.table(data_carbon_budget_ext_V3, file = "data_V3/data_carbon_budget_ext_V3.csv", sep=";", row.names = F)

# specify regions, scenario and variables that will be used for presentation of results Kaya indicators
regs_kaya <- c("CHN","IND","EU","USA","World")
scens_kaya <- c("INDCi_V3", "NPi_V3", "NPi2020_1000_V3", "INDC2030i_1000_V3")
vars_kaya <- c("Population", "GDP|MER", "GDP|PPP", "Emissions|CO2", "Emissions|CO2|AFOLU", "Emissions|Kyoto Gases", "Final Energy")

# kaya data for export
data_kaya <- subset(data_cd_V3, REGION %in% regs_kaya)
data_kaya <- subset(data_kaya, SCENARIO %in% scens_kaya)
data_kaya <- subset(data_kaya, VARIABLE %in% vars_kaya)
#data_kaya <- subset(data_kaya, MODEL %in% models)
write.table(data_kaya, file = "data_V3/data_kaya.csv", sep=";", row.names = F)

regs_REN <- c("CHN", "IND")
scens_REN <- c("NoPolicy_V3", "NPi_V3", "NPip_V3", "INDCi_V3")
vars_electricity <- c("Secondary Energy|Electricity", "Secondary Energy|Electricity|Biomass", "Secondary Energy|Electricity|Biomass|w/ CCS", "Secondary Energy|Electricity|Biomass|w/o CCS", "Secondary Energy|Electricity|Coal", "Secondary Energy|Electricity|Coal|w/ CCS", "Secondary Energy|Electricity|Coal|w/o CCS", "Secondary Energy|Electricity|Fossil", "Secondary Energy|Electricity|Fossil|w/ CCS", "Secondary Energy|Electricity|Fossil|w/o CCS", "Secondary Energy|Electricity|Gas", "Secondary Energy|Electricity|Gas|w/ CCS", "Secondary Energy|Electricity|Gas|w/o CCS", "Secondary Energy|Electricity|Hydro", "Secondary Energy|Electricity|Non-Biomass Renewables", "Secondary Energy|Electricity|Nuclear", "Secondary Energy|Electricity|Oil", "Secondary Energy|Electricity|Oil|w/ CCS", "Secondary Energy|Electricity|Oil|w/o CCS", "Secondary Energy|Electricity|Secondary Energy Trade", "Secondary Energy|Electricity|Solar", "Secondary Energy|Electricity|Wind")
vars_transport <- c("Final Energy|Transportation", "Emissions|CO2|Energy|Demand|Transportation")
vars_capacity <- c("Capacity|Electricity", "Capacity|Electricity|Biomass|w/ CCS", "Capacity|Electricity|Biomass|w/o CCS", "Capacity|Electricity|Coal|w/ CCS", "Capacity|Electricity|Coal|w/o CCS", "Capacity|Electricity|Gas|w/ CCS", "Capacity|Electricity|Gas|w/o CCS", "Capacity|Electricity|Hydro", "Capacity|Electricity|Nuclear", "Capacity|Electricity|Solar|PV", "Capacity|Electricity|Wind", "Capacity|Electricity|Wind|Onshore")
vars_primary <- c("Primary Energy", "Primary Energy|Biomass", "Primary Energy|Biomass|w/ CCS", "Primary Energy|Biomass|w/o CCS", "Primary Energy|Coal", "Primary Energy|Coal|w/ CCS", "Primary Energy|Coal|w/o CCS", "Primary Energy|Fossil", "Primary Energy|Fossil|w/ CCS", "Primary Energy|Fossil|w/o CCS", "Primary Energy|Gas", "Primary Energy|Gas|w/ CCS", "Primary Energy|Gas|w/o CCS", "Primary Energy|Hydro", "Primary Energy|Non-Biomass Renewables", "Primary Energy|Nuclear", "Primary Energy|Oil", "Primary Energy|Oil|w/ CCS", "Primary Energy|Oil|w/o CCS", "Primary Energy|Secondary Energy Trade", "Primary Energy|Solar", "Primary Energy|Wind")
vars_AFOLU <- c("Emissions|CO2|AFOLU", "Emissions|CH4|AFOLU", "Emissions|N2O|AFOLU")

# get electricity supply
data_electricity <- subset(data_cd_V3, REGION %in% regs)
data_electricity <- subset(data_electricity, SCENARIO %in% scens_REN)
data_electricity <- subset(data_electricity, VARIABLE %in% vars_transport)
write.table(data_electricity, file = "data_V3/data_electricity.csv", sep=";", row.names = F)

# get transport data
data_transport <- subset(data_cd_V3, REGION %in% regs)
data_transport <- subset(data_transport, SCENARIO %in% scens_REN)
data_transport <- subset(data_transport, VARIABLE %in% vars_transport)
write.table(data_transport, file = "data_V3/data_transport.csv", sep=";", row.names = F)

# get capacity data to check IND NF target
data_capacity <- subset(data_cd_V3, REGION %in% regs_REN)
data_capacity <- subset(data_capacity, SCENARIO %in% scens_REN)
data_capacity <- subset(data_capacity, VARIABLE %in% vars_capacity)
write.table(data_capacity, file = "data_V3/data_capacity.csv", sep=";", row.names = F)
# AFOLU
data_AFOLU <- subset(data_cd_V3, REGION %in% regs_REN)
data_AFOLU <- subset(data_AFOLU, SCENARIO %in% scens_REN)
data_AFOLU <- subset(data_AFOLU, VARIABLE %in% vars_AFOLU)
write.table(data_AFOLU, file = "data_V3/data_AFOLU.csv", sep=";", row.names = F)

# get primary energy data to check CHN NF target
data_primary <- subset(data_cd_V3, REGION %in% regs_REN)
data_primary <- subset(data_primary, SCENARIO %in% scens_REN)
data_primary <- subset(data_primary, VARIABLE %in% vars_primary)
write.table(data_primary, file = "data_V3/data_primary.csv", sep=";", row.names = F)

# get emissions data per sector
vars_emis_co2 <- c("Emissions|CO2", "Emissions|CO2|Energy and Industrial Processes", "Emissions|CO2|Energy|Supply", "Emissions|CO2|Energy|Supply|Other Sector", "Emissions|CO2|Energy|Demand", "Emissions|CO2|Energy|Demand|AFOFI", "Emissions|CO2|Energy|Demand|Industry", "Emissions|CO2|Energy|Demand|Residential and Commercial", "Emissions|CO2|Energy|Demand|Transportation", "Emissions|CO2|Industrial Processes", "Emissions|CO2|AFOLU")
vars_emis_ch4 <- c("Emissions|CH4", "Emissions|CH4|Energy", "Emissions|CH4|Energy|Supply", "Emissions|CH4|Energy|Demand|Industry", "Emissions|CH4|Energy|Demand|Residential and Commercial", "Emissions|CH4|Energy|Demand|Transportation", "Emissions|CH4|AFOLU")
vars_emis_n2o <- c("Emissions|N2O", "Emissions|N2O|Energy", "Emissions|N2O|AFOLU")
vars_emis_fgases <- c("Emissions|F-Gases", "Emissions|HFC", "Emissions|HFC|HFC125", "Emissions|HFC|HFC134a", "Emissions|HFC|HFC143a", "Emissions|HFC|HFC227ea", "Emissions|HFC|HFC245fa", "Emissions|HFC|HFC32", "Emissions|HFC|HFC23", "Emissions|HFC|HFC43-10", "Emissions|C6F14", "Emissions|C2F6", "Emissions|CF4", "Emissions|PFC", "Emissions|SF6")
vars_emis_kyoto <- c("Emissions|Kyoto Gases")
vars_emis_allGHG <- c("Emissions|CO2", "Emissions|CO2|Energy and Industrial Processes", "Emissions|CO2|Energy|Supply", "Emissions|CO2|Energy|Supply|Other Sector", "Emissions|CO2|Energy|Demand", "Emissions|CO2|Energy|Demand|AFOFI", "Emissions|CO2|Energy|Demand|Industry", "Emissions|CO2|Energy|Demand|Residential and Commercial", "Emissions|CO2|Energy|Demand|Transportation", "Emissions|CO2|Industrial Processes", "Emissions|CO2|AFOLU", "Emissions|CH4", "Emissions|CH4|Energy", "Emissions|CH4|Energy|Supply", "Emissions|CH4|Energy|Demand|Industry", "Emissions|CH4|Energy|Demand|Residential and Commercial", "Emissions|CH4|Energy|Demand|Transportation", "Emissions|CH4|AFOLU", "Emissions|N2O", "Emissions|N2O|Energy", "Emissions|N2O|AFOLU", "Emissions|F-Gases", "Emissions|HFC", "Emissions|HFC|HFC125", "Emissions|HFC|HFC134a", "Emissions|HFC|HFC143a", "Emissions|HFC|HFC227ea", "Emissions|HFC|HFC245fa", "Emissions|HFC|HFC32", "Emissions|HFC|HFC23", "Emissions|HFC|HFC43-10", "Emissions|C6F14", "Emissions|C2F6", "Emissions|CF4", "Emissions|PFC", "Emissions|SF6", "Emissions|Kyoto Gases")

scens_emis <- c("NoPolicy", "NoPolicy_V3", "NPi_V3", "NPip_V3", "INDCi_V3")
# get primary energy data to check CHN NF target
data_co2 <- subset(data_cd_V3, REGION %in% regs)
data_co2 <- subset(data_co2, SCENARIO %in% scens_emis)
data_co2 <- subset(data_co2, VARIABLE %in% vars_emis_co2)
write.table(data_co2, file = "data_V3/data_co2.csv", sep=";", row.names = F)
data_ch4 <- subset(data_cd_V3, REGION %in% regs)
data_ch4 <- subset(data_ch4, SCENARIO %in% scens_emis)
data_ch4 <- subset(data_ch4, VARIABLE %in% vars_emis_ch4)
write.table(data_ch4, file = "data_V3/data_ch4.csv", sep=";", row.names = F)
data_n2o <- subset(data_cd_V3, REGION %in% regs)
data_n2o <- subset(data_n2o, SCENARIO %in% scens_emis)
data_n2o <- subset(data_n2o, VARIABLE %in% vars_emis_n2o)
write.table(data_n2o, file = "data_V3/data_n20.csv", sep=";", row.names = F)
data_fgases <- subset(data_cd_V3, REGION %in% regs)
data_fgases <- subset(data_fgases, SCENARIO %in% scens_emis)
data_fgases <- subset(data_fgases, VARIABLE %in% vars_emis_fgases)
write.table(data_fgases, file = "data_V3/data_fgases.csv", sep=";", row.names = F)
data_allGHG <- subset(data_cd_V3, REGION %in% regs)
data_allGHG <- subset(data_allGHG, SCENARIO %in% scens_emis)
data_allGHG <- subset(data_allGHG, VARIABLE %in% vars_emis_allGHG)
write.table(data_allGHG, file = "data_V3/data_allGHG.csv", sep=";", row.names = F)
