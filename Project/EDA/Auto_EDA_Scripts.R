########### AUTOMATIC EDA WITH dlookr
library(dlookr)
library(tidyverse)


# Read in data
BIRTH.eda <- read_rds("~/Github/MPH_Biostats/Project/data/BIRTH.RDS") %>%
  select(-CASEID) %>%
  mutate(LBW = factor(ifelse(LBW, "BirthWt LOW", "BirthWt normal"))) %>%
  mutate(Wanted = factor(ifelse(Wanted, "Wanted", "Unwanted")))

PN.eda <- read_rds("~/Github/MPH_Biostats/Project/data/PN.RDS") %>%
  select(-CASEID) %>%
  mutate(LBW = factor(ifelse(LBW, "BirthWt LOW", "BirthWt normal"))) %>%
  mutate(Wanted = factor(ifelse(Wanted, "Wanted", "Unwanted")))


# LOW BIRTHWEIGHT
BIRTH.eda %>% eda_report(target=LBW, output_file="EDA_LBW.pdf", 
                         output_dir="~/Github/MPH_Biostats/Project/EDA") 

# PREMATURE BIRTH
BIRTH.eda %>% eda_report(target=PreMe, output_file="EDA_PreMe.pdf", 
                         output_dir="~/Github/MPH_Biostats/Project/EDA")

# KNOW PREG
PN.eda %>% eda_report(target=KnowPreg, output_file="EDA_KnewPreg.pdf", 
                      output_dir="~/Github/MPH_Biostats/Project/EDA") 

# GOT PRENATAL CARE
PN.eda %>% eda_report(target=gotPNcare, output_file="EDA_GotPrenatalCare.pdf", 
                      output_dir="~/Github/MPH_Biostats/Project/EDA") 

rm(BIRTH.eda, PN.eda)
