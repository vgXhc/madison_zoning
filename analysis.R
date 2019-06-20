library(tidyverse)

# import zoning map

#create variables for residential zoning and single-family zoning codes
residential <- c("SR-C1", 
                 "SR-C2", 
                 "SR-C3", 
                 "SR-V1,"
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

SFR <- c("SR-C1", 
         "SR-C2",
         "TR-C1", 
         "TR-C2", 
         "TR-C3", 
         "TR-R")