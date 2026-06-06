install.packages("tidyverse")
install.packages("nflfastR")
install.packages("ggimage")
install.packages("gt")



library(tidyverse)
library(nflfastR)
library(ggimage)
library(gt)

pbp <- load_pbp(2026)

pbp %>% head()

install.packages("arrow")
library(arrow)

# Save to Parquet
write_parquet(pbp, "pbp_2023_2025.parquet")

library(dplyr)

pbp %>%
  count(game_id, name = "count") %>%
  print(n = Inf)

names(pbp)
