setwd(here::here())
library(tidyverse)
library(ggplot2)
theme_set(
    theme_light(base_size = 9))
theme_update(
    legend.justification = "center",
    legend.position = "bottom")

meta_pilot = read_csv("meta_pilot.csv")

stats = read_csv("tools/isomirsea/mirtop/mirtop_stats.txt", skip = 1) %>% 
    mutate(sample=gsub("_tagMir-all", "", sample)) %>% 
    inner_join(meta_pilot,
               by = c("sample" = "fixed_name"))

write_csv(stats, file.path(tables, "isomirsea_stats_fixed_names.csv"))
save_stats(stats, "isomiR-SEA")