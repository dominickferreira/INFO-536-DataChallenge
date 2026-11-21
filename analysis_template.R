# Contributors
# Wrangling: Aarush Narang
# Summary:

# Plot:

# Checks:

# Documentation:

library(tidyverse)
gtd <- read_csv("data/gtd_sample.csv")

# ---- Role 1: Wrangling ----

gtd_clean <- gtd %>%
  filter(!is.na(iyear)) %>%
  select(iyear, region_txt, country_txt, attacktype1_txt, nkill, success) %>%
  mutate(decade = paste0(floor(iyear / 10) * 10, "s"))

# ---- Role 2: Summary ----

# ---- Role 3: Plot ----

# ---- Role 4: Checks ----
