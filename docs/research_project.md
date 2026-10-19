---
title: "COMM 407: Research project"
---

<!-- TODO: Confirm the pairing, registration and submission dates. Presentation dates follow the UBC 2026/27 calendar: Term 2 classes end Monday, April 12, 2027, so the last four Tuesday/Thursday classes are March 30 to April 8. -->

## Task

Answer a research question about real estate, urban economics, or urban public policy, broadly interpreted: housing, transportation, crime, segregation, education, public health, and more. Present your answer as a story built around one thesis statement.

You work in pairs. If the class has an odd number of students, the instructor will allow one student to work alone or one group of three. Use any publicly available data, plus any dataset used in class, such as BC Assessment or the Census PUMF.

## Key dates

| Date | What happens |
|---|---|
| TODO: Friday, February 12, 2027, 11:59 PM | Register your pair. Students without a partner by then will be matched by the instructor. |
| TODO: Friday, February 26, 2027, 11:59 PM | Register your pair's question and data source: one paragraph |
| TODO: Thursday, March 25, 2027, 11:59 PM | Slides and code due, for everyone, whatever your presentation date |
| Tuesday, March 30; Thursday, April 1; Tuesday, April 6; and Thursday, April 8, 2027 | Presentations |

## Your thesis statement

Your thesis statement is the one-sentence answer to your research question. It must be a claim that the evidence could have contradicted, not a topic.

- **A topic:** "Housing affordability in Vancouver."
- **A claim:** "Vancouver's falling downtown crime rate reflects population growth, not less crime."

Put the thesis statement on your first slide after the title, and say it in your first 30 seconds. Every later slide should support it, qualify it, or test it.

## What a strong project shows

- **A question that matters.** Say why students, professors, or policymakers should care. The best findings are surprising at first but make sense once explained.
- **What is known, and what you add.** In one sentence each, say what earlier work found and what your project adds. You don't need to be the first to study your topic, but your project should add at least one of these:
  - **A new place:** a known result tested in Vancouver or BC.
  - **A new period:** for example, after the pandemic or a policy change.
  - **New data:** a dataset earlier work did not use.
  - **A new test:** a common claim checked against its strongest alternative explanation.
  - **A contradiction:** local data that disagree with a published finding or a media claim.
- **Your own evidence.** Every figure, table, and map comes from your own analysis in R.
- **The strongest alternative explanation, tested.** Name the most likely other explanation for your finding and show what the data say about it.
- **Honest limits.** Say what the data cannot tell you.

## Working as a pair

- **Both members present**, splitting the talk between them.
- **Each member reviews the code the other wrote** before you submit. A second reader is the best check for silent errors such as a join that duplicates rows or a year with missing values.
- **Either member can be asked about any part** of the project, including the part their partner wrote.

## The presentation

- 10 minutes, followed by 5 minutes of questions.
- Do not read from a script or a screen. One or two cue cards are fine.
- Presentations, including the questions, are video-recorded for grading only. Recordings are not shared. <!-- TODO: State how long recordings are kept and when they are deleted. -->
- Expect a question on how your project differs from the sources on your backup slide.
- At least one question will be about your code. We will name the member who answers, may point to a line in your `.qmd`, and may ask what it does or what would change without it. Each member should be ready to explain every line and every analytical choice.

## What to submit

- **Slides, as a PDF.** Make them with any tool: PowerPoint, Google Slides, or Quarto. You may also submit an HTML version of Quarto slides, but the PDF is what we grade and present.
- **Code, as a Quarto document (`.qmd`).** It must render without errors from your `c407` folder and produce every figure, table, and map in your slides.
- **Three backup slides at the end**, not presented:
  - **Sources.** Two or three studies or reports on your question that you have opened and read.
  - **Decision log.** Three to five points where you changed direction or rejected an AI result, and why. Add one line per member on who did what.
  - **AI use.** Which tools you used, what for, and what you checked.

## How you will be evaluated

Story and evidence are graded for the pair. Defence and delivery are graded for each member.

### Story

- **Thesis:** is it a clear, testable claim?
- **Motivation:** is the question worth answering? Is it clear what the project adds to what is known?
- **Structure:** does every slide serve the thesis? Do you end with clear takeaways?

### Evidence

- **Correct analysis:** code that renders and checks its own work: row counts after joins, missing values, units, denominators, and coordinate systems.
- **Alternative explanation:** is the strongest one tested, not just mentioned?
- **Visualization quality:** figures that deliver a key point and look good.

### Defence

- Can you explain your code and your decisions when asked, including your partner's part?

### Delivery

- Eye contact, volume, and pace.

## Common pitfalls

- **A topic instead of a thesis.** If no result could prove your thesis wrong, it is not a claim.
- **AI answered a different question.** AI may substitute a variable that exists for the one you asked about, such as weeks worked for hours worked, and mention it only in passing. Check that your figures measure what your thesis says.
- **Correlation presented as cause.** For example, a simple correlation between distance to a SkyTrain station and housing prices does not show that the station raised prices.
- **Too many figures.** Five clear figures that build one story beat ten loosely related ones.
- **Blurry images.** Never paste screenshots. For slides made outside Quarto, save figures with `ggsave()` or `tmap_save()`.
- **Unchecked sources.** AI invents plausible references, and it also cites real studies for findings they do not contain. Open every source you cite and confirm that it says what your slide claims.

## Where to find data

You register your data source on February 26. Before you do, download the data once and check that it covers your place and period. AI tools know a lot about which data exist, but check every source yourself.

| Source | What it has | In R |
|---|---|---|
| Course data (`data/` folder) | BC Assessment sales in Metro Vancouver, 2000 to March 2026; 2016 and 2021 Census PUMF | `read_rds()` |
| [Statistics Canada data tables](https://www150.statcan.gc.ca/n1/en/type/data) | Prices, rents, population, income, and construction, often by CMA | `cansim` (deck 10) |
| [Census Profile via CensusMapper](https://censusmapper.ca) | Census variables from 1996 to 2021, down to dissemination areas | `cancensus` (deck 11) |
| [CMHC Housing Market Information Portal](https://www03.cmhc-schl.gc.ca/hmip-pimh/en) | Rents, vacancy rates, and housing starts and completions, for CMAs and smaller zones | `cmhc` package |
| [City of Vancouver Open Data](https://opendata.vancouver.ca) | Building permits, zoning, property tax, business licences, and more | `VancouvR` |
| [Vancouver Police Department crime data](https://geodash.vpd.ca/opendata/) | Reported crimes by type, date, and location | CSV download (deck 16) |
| [BC Data Catalogue](https://catalogue.data.gov.bc.ca) | Provincial government data on land, transportation, health, and more | Download |
| [US Census Bureau ACS microdata](https://www.census.gov/programs-surveys/acs/microdata.html) | US person and household records, as in the ability sorting example | Download |

If you compare two census years, check deck 11 first: vector codes, tract boundaries, and PUMF variable names all change between censuses.

## Example presentations

Each example fits the 10-minute limit: a thesis, seven or eight slides of evidence, and backup slides for questions. Open the speaker notes (press S) for timing, what to say, and where the two speakers hand over. Click the small **Code** link in a slide's top-right corner to see all the code behind that slide, from the raw data to the chart, with line numbers for questions.

- [Did the Canada Line raise house prices?](example_skytrain.html) Analysis of course data, with the full set of backup slides, including AI use. The `.qmd` that produces it shows how code and slides fit together.
- [The Value of W](example_west_side.html) A Vancouver paper that began as an in-class presentation by four UBC Sauder undergraduates.
- [Big cities do not pay top healthcare workers more](example_ability_sorting.html) A published finding from 2000 data, retested with 2024 U.S. data. Its design compares two explanations that predict different things.

## Resources

- **Charts:** the [ggplot2 cheat sheet](https://rstudio.github.io/cheatsheets/html/data-visualization.html) shows every geom as a small picture; the [ggplot2 reference](https://ggplot2.tidyverse.org/reference/) explains each function, with examples; the [R Graph Gallery](https://r-graph-gallery.com/) has working code for many chart types; and [From Data to Viz](https://www.data-to-viz.com/) helps you choose a chart for your data.
- **Storytelling:** *Storytelling with Data* (Cole Nussbaumer Knaflic) and "Turning Bad Charts into Compelling Data Stories" (Dominic Bohan).
- **Topic ideas:** Statistics Canada's *Census in Brief* series.
- **Past student work:** "Airbnb's Impact on Vancouver Rentals" (Tabrizi, Dee, Lee) and "Is Vancouver Ready for an NBA Team?" (Huang, Dhaliwal, Wintjes).

## Notes

- **Questions:** post technical and logistical questions on Piazza.
