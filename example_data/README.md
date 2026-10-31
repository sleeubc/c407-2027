# Data for the three project examples

These fixed snapshots accompany the crime, storefront-health and condo-completions examples. They preserve the public-source observations and fields used by the presentations. They are not current live feeds. The `.qmd` files perform the aggregations, sample selection and statistical analysis.

The examples adapt the instructor's `vancouver_crime_slides.qmd`, `vancouver_storefronts_slides.qmd` and `vancouver_condo_completions_slides.qmd` from the earlier course project's `scripts/` folder. The originals are unchanged. No sibling-project paths are needed to render these copies.

## Rendering

From the course project root, run:

```sh
quarto render docs/example_vancouver_crime.qmd
quarto render docs/example_storefronts.qmd
quarto render docs/example_condo_completions.qmd
```

Run these commands one at a time because Quarto shares project output and cache directories. The project uses `execute-dir: project`, so paths begin with `docs/example_data/`. Required R packages are `tidyverse`, `ggrepel` and `fixest`, in addition to Quarto's R rendering dependencies. The theme is `docs/c407_revealjs.scss`. No API keys or network downloads are required to render the supplied snapshots.

If moving these examples into another course folder, retain the `docs/` directory layout and set `project: execute-dir: project` in that project's `_quarto.yml`.

## Snapshots

| File | Source and scope | Extraction |
|---|---|---|
| [Vancouver crime](vancouver_crime_2003_2025.csv.gz) | [VPD GeoDASH](https://geodash.vpd.ca/opendata/), October 6, 2026 source downloads, complete years 2003–2025 | Combine `crime-data-all-years.zip` with the separate 2022 download, which was absent from that all-years snapshot. Keep original `TYPE`, `YEAR`, `HUNDRED_BLOCK`, `NEIGHBOURHOOD`. Collisions remain in this extract and are excluded in the example code. |
| [Storefront inventory](vancouver_storefronts_2020_2026.csv.gz) | [City of Vancouver Storefronts Inventory](https://opendata.vancouver.ca/explore/dataset/storefronts-inventory/), October 4, 2026 source snapshot, 2020–2026 survey years | Keep `store_id`, `year_recorded`, `general_business_category`, `business_name`, `bia_name` from the original GeoJSON. Remove geometry only. Retain all records, including duplicate IDs. |
| [CMHC monthly series](vancouver_cmhc_through_2026_08.csv.gz) | [CMHC Housing Market Information Portal](https://www03.cmhc-schl.gc.ca/hmip-pimh/en), Vancouver CMA (`59933`), source snapshot October 15, 2026, through August 2026 | Keep `Date`, `Series`, `Intended Market`, `Value` from the original RDS. The example filters the condo intended market and creates annual flows and December stocks. |

CSV files use gzip compression, which `readr::read_csv()` reads directly. Crime locations are public hundred-block locations, not individual people or exact incident addresses. Retain attribution to VPD, the City of Vancouver and CMHC when using the data. These are supplied-source extracts, not newly verified official releases.

## Rebuilding the extracts

[prepare_snapshots.R](prepare_snapshots.R) records the exact field selection and combination used to create the supplied files. It takes the directory containing the original downloads as its only argument. The source files are intentionally outside the tracked teaching materials.

The original download routes were:

- VPD: [all-years ZIP](https://geodash.vpd.ca/opendata/crimedata_download/crimedata_csv_all_years.zip), plus “All Neighbourhoods”, year 2022, on the GeoDASH download form. The form's 2022 download did not have a stable direct URL in the original analysis.
- Storefronts: `VancouvR::get_cov_data("storefronts-inventory")`, saved as GeoJSON after removing redundant `geom` and `geo_point_2d` columns.
- CMHC: `cmhc::get_cmhc(survey = "Scss", series = s, dimension = "Intended Market", breakdown = "Historical Time Periods", geo_uid = "59933", frequency = "Monthly")` for `s` equal to `"Starts"`, `"Completions"` and `"Under Construction"`, combined and saved as RDS.

Live sources can revise earlier observations or change their coverage. Re-downloading now need not reproduce the historical snapshots. A refresh requires checking dates, coverage and the claims in the corresponding slides, rather than silently overwriting the teaching examples.
