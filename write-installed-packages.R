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