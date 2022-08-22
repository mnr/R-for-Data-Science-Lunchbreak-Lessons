#!/usr/bin/env Rscript

library(plumber)

pr("01_253_SFplumber.R") %>%
  pr_run(port=4000, host="0.0.0.0")
