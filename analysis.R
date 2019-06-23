library(tidyverse)

# import zoning map from csv
# manually specify column types
data <- read_csv("https://opendata.arcgis.com/datasets/4bfd0deffa8f4d5f8eefe868ab91493c_9.csv",
                 col_types = "iccccddcc")


#create variables for residential zoning and single-family zoning codes
res_zones <- c("SR-C1", 
                 "SR-C2", 
                 "SR-C3", 
                 "SR-V1",
                 "SR-V2",
                 "TR-C1",
                 "TR-C2", 
                 "TR-C3",
                 "TR-C4",
                 "TR-V1",
                 "TR-V2", 
                 "TR-U1", 
                 "TR-U2", 
                 "TR-R",
                 "TR-P")

sfr_zones <- c("SR-C1", 
         "SR-C2",
         "TR-C1", 
         "TR-C2", 
         "TR-C3", 
         "TR-R")

res_total <- data %>%
  filter(ZONING_CODE %in% res_zones) %>%
  summarize(sum(ShapeSTArea))

res_sfr <- data %>%
  filter(ZONING_CODE %in% sfr_zones) %>%
  summarize(sum(ShapeSTArea))

sfr_ratio <- round((res_sfr/res_total)*100, digits = 0)