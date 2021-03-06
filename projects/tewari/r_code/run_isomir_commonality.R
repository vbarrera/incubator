setwd(here::here())
library(tidyverse)
library(ggplot2)
library(cowplot)
library(edgeR)
source("r_code/functions.R")
theme_set(theme_bw(base_size = 9))

source("r_code/bcbio_isomir_commonality.R")
source("r_code/mirge_isomir_commonality.R")
source("r_code/isomirsea_isomir_commonality.R")
source("r_code/srnabench_isomir_commonality.R")


