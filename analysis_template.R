# Contributors
# Wrangling:
# Summary: Manasvi Reddy Potla

# Plot:

# Checks:

# Documentation:

library(tidyverse)
gtd <- read_csv("data/gtd_sample.csv")

# ---- Role 1: Wrangling ----

# ---- Role 2: Summary ----


# ---- Role 2: Summary ----

# Compare the number of attacks, fatalities, and success rates
# across regions and decades.
gtd_summary <- gtd_clean %>%
  group_by(region_txt, decade) %>%
  summarise(
    n_attacks = n(),
    total_killed = sum(nkill, na.rm = TRUE),
    success_rate = mean(success == 1, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  arrange(region_txt, decade)


# ---- Role 3: Plot ----

# ---- Role 4: Checks ----
