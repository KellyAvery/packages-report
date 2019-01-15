#' ---
#' output: github_document
#' ---

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

library(tidyverse)
ipdf <- installed.packages() %>%
  as.tibble() %>%
  select(Package, LibPath, Version, Priority, Built)

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

library(here)
ipdf %>%
  write_csv(here::here("data", "installed-packages.csv"))