# Display helpers for COMM 407 slides. Hidden setup chunks source this file;
# visible slide code never calls these functions.
#
# Use on a chunk whose result is a data frame:
#   #| classes: data-preview
#   #| render: !expr preview_print
# The chunk's code shows as usual, and its result prints as an HTML table with
# every column. Wide tables scroll sideways (see c407_revealjs.scss and
# c407_table_scroll.html).

# Amounts of 10,000 or more get commas; years and small numbers do not.
# Whole numbers show no decimals, others one: 3,088,036 and 41.5.
preview_number <- function(x) {
  if (!any(abs(x) >= 1e4, na.rm = TRUE)) return(x)
  vapply(x, function(v) {
    if (is.na(v)) return(NA_character_)
    formatC(v, format = "f", digits = if (v == round(v)) 0 else 1, big.mark = ",")
  }, character(1))
}

# Codes such as neigh_id or PPSORT are identifiers, not amounts: no commas.
id_col <- function(name) grepl("(^|_)u?id$|^ppsort$", name, ignore.case = TRUE)

preview_table <- function(df) {
  df <- as.data.frame(df)
  numeric_col <- vapply(df, is.numeric, logical(1))
  amount_col <- numeric_col & !id_col(names(df))
  df[amount_col] <- lapply(df[amount_col], preview_number)
  knitr::kable(df, format = "html", align = ifelse(numeric_col, "r", "l"))
}

preview_print <- function(x, ...) knitr::knit_print(preview_table(x))
