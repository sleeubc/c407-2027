# Optional rebuild from the original public-source downloads.
# Run from the course root:
# Rscript docs/example_data/prepare_snapshots.R /path/to/source/data
# Rendering the examples uses the supplied snapshots and does not run this file.
suppressPackageStartupMessages({
  library(tidyverse)
  library(sf)
})
args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1) stop("Supply the directory containing the source downloads.")
source_dir <- args[[1]]
output_dir <- "docs/example_data"
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)

read_vpd_zip <- function(filename, pattern) {
  path <- file.path(source_dir, "vancouver", filename)
  member <- unzip(path, list = TRUE)$Name |> str_subset(pattern)
  stopifnot(length(member) == 1)
  read_csv(unz(path, member), show_col_types = FALSE)
}
all_years <- read_vpd_zip("crime-data-all-years.zip", "AllNeighbourhoods_AllYears\\.csv$")
single_year <- read_vpd_zip("crime-data-2022.zip", "AllNeighbourhoods_2022\\.csv$")
# The October 2026 all-years file omits 2022. Refuse to append it twice if
# someone supplies a later download that already includes that year.
stopifnot(!2022 %in% all_years$YEAR, all(single_year$YEAR == 2022))
bind_rows(all_years, single_year) |>
  filter(between(YEAR, 2003, 2025)) |>
  select(TYPE, YEAR, HUNDRED_BLOCK, NEIGHBOURHOOD) |>
  write_csv(file.path(output_dir, "vancouver_crime_2003_2025.csv.gz"))

# Retain original record values, including ambiguous store IDs. Panel
# selection and vacancy definitions belong to the example's visible code.
read_sf(file.path(source_dir, "vancouver/storefronts-inventory.geojson")) |>
  st_drop_geometry() |>
  select(store_id, year_recorded, general_business_category, business_name, bia_name) |>
  write_csv(file.path(output_dir, "vancouver_storefronts_2020_2026.csv.gz"))

readRDS(file.path(source_dir, "cmhc/scss_vancouver_cma_intended_market.rds")) |>
  select(Date, Series, `Intended Market`, Value) |>
  write_csv(file.path(output_dir, "vancouver_cmhc_through_2026_08.csv.gz"))
