---
title: "COMM 407: Research project"
---

<!-- TODO: Confirm the pairing, registration and submission dates. Presentation dates follow the UBC 2026/27 calendar: Term 2 classes end Monday, April 12, 2027, so the last four Tuesday/Thursday classes are March 30 to April 8. -->

## Task

Develop an **interesting, original research question** about real estate, urban economics, or urban public policy, and answer it with your own analysis in R. The scope is broad: housing, transportation, crime, segregation, education, public health, and more. Present a clear answer supported by **a few key results**.

The question and what we learn from your answer are central to the project. A focused descriptive finding, measurement check, or forecast can make a strong contribution. Choose a method that fits your question and the available data.

You work in pairs. If the class has an odd number of students, the instructor will allow one student to work alone or one group of three. Use any publicly available data, plus any dataset used in class, such as BC Assessment or the Census PUMF.

You choose your tools and workflow. The requirements and evaluation criteria below describe what your deliverables must demonstrate.

## Key dates

| Date | What happens |
|---|---|
| TODO: Friday, February 12, 2027, 11:59 PM | Register your pair. Students without a partner by then will be matched by the instructor. |
| TODO: Friday, February 26, 2027, 11:59 PM | Register your pair's question and data source: one paragraph |
| TODO: Thursday, March 25, 2027, 11:59 PM | Slides and code due, for everyone, whatever your presentation date |
| Tuesday, March 30; Thursday, April 1; Tuesday, April 6; and Thursday, April 8, 2027 | Presentations |

## Your research question and contribution

A strong question identifies something worth learning. Explain why its answer matters, why the answer is not obvious, and what comparison or evidence would help resolve it. A broad topic such as “housing affordability” needs a more specific question.

Build on earlier work and explain **what your project adds**. A meaningful extension might test a finding in a setting where there is reason to expect a different answer, distinguish competing explanations, check whether a pattern survives a measurement problem, or evaluate a forecast against a useful benchmark. A new place, period, or dataset should serve the question; the change alone does not establish a contribution.

**All analyses you present as your findings must be original work conducted on the data for your project.** Generate every analytical figure, table, and map with your submitted R code, along with every numerical result you report as your own finding. You may use existing data, established methods, example code, and AI assistance. Credit the ideas, methods, and sources you build on, and make your own contribution clear. Reproducing a paper or course example alone is insufficient. Cite published findings used as background and distinguish them from your own results.

For **question registration**, submit one paragraph stating your question, why it is interesting, the contribution you intend to make, and a feasible data source and comparison. Identify the population or unit of observation and the relevant place and period. You are proposing a question, so you do not need to know the answer yet. Refine it as you learn what the data can support.

## Your answer and key results

Your thesis statement is the one-sentence answer to your research question. Let the evidence determine that answer.

- **Topic:** “Storefront vacancy in Vancouver.”
- **Question:** “Does vacancy still fall when we compare the same storefronts over time?”
- **Possible thesis, if supported:** “Vacancy fell among the same surveyed storefronts, so changing survey coverage does not explain the decline.”

Put your answer on the first slide after the title and state it in your first 30 seconds. Every later slide should support it, test it, or explain its limits.

Select the few results needed to make your case. One or two main results, supported by a well-chosen check, can be enough for a strong presentation. There is no required number of figures, regressions, or maps. Additional results earn their place by changing how the audience understands or evaluates your answer.

Address the most consequential challenge to your conclusion with a relevant check. Depending on the question, this could be an alternative explanation, a change in sample coverage, a different measurement choice, or a forecasting benchmark. Explain what the check resolves and what remains uncertain. A regression is not required, and a descriptive comparison does not need to establish causation.

## AI assistance

**AI assistance is allowed throughout the project, including before the midterm.** You may use AI to brainstorm questions, ask for feedback on whether a question is interesting and feasible, find candidate sources, write or debug code, challenge an interpretation, and improve the presentation.

You decide which suggestions to use. Verify data and references, check the analysis, and understand the code you submit. AI assistance is compatible with original work; you remain responsible for the question you pursue, the analytical choices, and every claim you present. We evaluate the quality of your deliverables and your ability to explain them.

Disclose your AI use on the backup slide described below. The exams remain AI-free under the course's exam rules.

## Working as a pair

- **Both members present**, sharing the talk.
- **Both members are responsible for the whole submission**, including code written with AI assistance.
- **Either member can be asked about any part** of the question, analysis, or interpretation. Choose how to divide and review the work so both members can explain it.

## The presentation

- 10 minutes, followed by 5 minutes of questions.
- Explain the question, your contribution, the key evidence, and the limits of your answer.
- Choose the display that makes each result easiest to assess. A compact regression table can be more useful than a chart of one coefficient. Label the outcome and variables, show uncertainty where appropriate, and make the sample and model specification clear. Explain the key estimate in terms the audience can understand.
- Use readable figures and tables generated from your analysis. Category order, scales, units, and labels should make the relevant comparison clear.
- Do not read from a script or a screen. One or two cue cards are fine.
- Presentations, including questions, are video-recorded for grading only. Recordings are not shared. <!-- TODO: State how long recordings are kept and when they are deleted. -->
- Expect questions about what your project adds, the choices behind your results, and what could change your conclusion.
- At least one question will concern your code. The instructor will name the member who answers and may ask what a line does or what would change without it. Each member should be ready to explain every line and every analytical choice.

## What to submit

In addition to the question-registration paragraph, submit:

- **Slides, as a PDF.** Make them with any tool: PowerPoint, Google Slides, or Quarto. You may also submit an HTML version of Quarto slides, but the PDF is what we grade and present.
- **Code, as a Quarto document (`.qmd`).** It must render without errors from your `c407` folder and reproduce every analytical figure, table, map, and numerical finding from your project that appears in your slides. Identify the data sources and any additional files or downloads needed to run it. Include checks appropriate to the analysis and enough explanation to follow the important choices.
- **Three backup slides at the end**, for questions rather than the main talk:
  - **Sources.** Two or three relevant studies or reports you have opened and read, plus your data sources. Credit any ideas, methods, or code you adapted and explain what your project adds.
  - **Research decisions and contributions.** Three to five consequential choices, the alternatives you considered, and why you chose your approach. Include one line per member on who did what. Record genuine decisions; these need not involve rejecting an AI answer or changing direction.
  - **AI use.** Which tools you used, what you used them for, and what you checked. If you did not use AI, say so.

## How you will be evaluated

**Story and evidence are graded for the pair. Defence and delivery are graded for each member.** The criteria apply to the deliverables and explanations below; you choose how to produce them.

### Story and evidence: pair assessment

| Criterion | Where you show it | What strong work demonstrates |
|--------------------|----------------|--------------------------------------------|
| **Interesting, original question and contribution** | Question paragraph, slides, and sources | A specific question whose answer matters. You explain what is already known and what your own analysis adds. The contribution goes beyond repeating an example or relabelling a topic. |
| **Clear answer and focus** | Main slides | A thesis supported by a few key results. Each result has a clear role, and the audience can follow how the evidence answers the question. |
| **Credible analysis** | Code and results | The data, measures, sample, and method fit the question. Calculations are correct, and relevant checks address problems such as missing values, weights, duplicate rows, units, denominators, or geographic definitions. |
| **A meaningful challenge to the conclusion** | Slides, code, and research decisions | You identify an important reason your answer might be misleading and use evidence to assess it. The check addresses a real concern rather than adding another result for its own sake. |
| **Sound interpretation** | Slides and questions | Claims match the design and evidence. You explain magnitudes and uncertainty, distinguish association from causation when relevant, and state the limits that matter for the answer. |
| **Clear presentation of evidence** | Figures and tables | Displays are readable, accurately labelled, and suited to the comparison. You explain the key result rather than expecting the audience to decipher raw output. |
| **Reproducibility and attribution** | Quarto code and backup slides | The document runs and generates the presented results. Data and borrowed ideas or methods are traceable. Research decisions, member contributions, and AI assistance are described accurately. |

An interesting question supported by careful, simple analysis can make a stronger project than a complex model with an unclear purpose. A small, null, or inconclusive result can support a strong project when the analysis is credible and the conclusion reflects the uncertainty. The number of results, complexity of the method, and statistical significance do not earn credit on their own.

### Defence and delivery: individual assessment

| Criterion | What strong work demonstrates |
|------------------------|--------------------------------------------------------|
| **Understanding and defence** | You explain the question, data, code, and analytical decisions, including your partner's work and AI-assisted code. You can connect a result to the steps that produced it, discuss alternatives, and recognize the limits of the evidence. |
| **Delivery** | You speak clearly, engage the audience, share the presentation, keep to the time limit, and answer questions directly. |

## Common pitfalls

- **A broad topic without a research question.** Specify what you want to learn and why the answer matters.
- **A cosmetic contribution.** A different title, chart style, or year does not by itself create a meaningful research contribution.
- **Choosing the answer in advance.** Revise your thesis when the evidence challenges it. Keep checks that materially qualify your conclusion.
- **Too many results.** A catalogue of charts or regressions can obscure the answer. Use the main talk for the evidence that matters most.
- **AI answered a different question.** AI may substitute an available variable for the one you intended, such as weeks worked for hours worked. Check that your measures address your question.
- **Correlation presented as cause.** A correlation between distance to a SkyTrain station and housing prices does not establish that the station raised prices.
- **Unexplained regression output.** Label the dependent variable and controls, report appropriate uncertainty, and interpret the focal coefficient, especially when the outcome is in logs.
- **Blurry images.** Export figures and tables directly from R or Quarto. For slides made outside Quarto, use tools such as `ggsave()` or `tmap_save()` for figures.
- **Unchecked sources.** Open every source you cite and confirm that it supports the claim you attribute to it. AI can invent references or misdescribe real ones.

## Where to find data

At question registration, identify a data source you have checked for access and coverage. Confirm that it contains the variables, observations, place, and period needed for your question. AI can suggest sources; you must verify their suitability.

| Source | What it has | In R |
|---|---|---|
| Course data (`data/` folder) | BC Assessment sales in Metro Vancouver, 2000 to March 2026; 2016 and 2021 Census PUMF | `read_rds()` |
| [Statistics Canada data tables](https://www150.statcan.gc.ca/n1/en/type/data) | Prices, rents, population, income, and construction, often by CMA | `cansim` (deck 12) |
| [Census Profile via CensusMapper](https://censusmapper.ca) | Census variables from 1996 to 2021, down to dissemination areas | `cancensus` (deck 13) |
| [CMHC Housing Market Information Portal](https://www03.cmhc-schl.gc.ca/hmip-pimh/en) | Rents, vacancy rates, and housing starts and completions, for CMAs and smaller zones | `cmhc` package |
| [City of Vancouver Open Data](https://opendata.vancouver.ca) | Building permits, zoning, property tax, business licences, and more | `VancouvR` |
| [Vancouver Police Department crime data](https://geodash.vpd.ca/opendata/) | Reported crimes by type, date, and location | CSV download (deck 08) |
| [BC Data Catalogue](https://catalogue.data.gov.bc.ca) | Provincial government data on land, transportation, health, and more | Download |
| [US Census Bureau ACS microdata](https://www.census.gov/programs-surveys/acs/microdata.html) | US person and household records, as in the ability sorting example | Download |

If you compare two census years, check deck 13 first: vector codes, tract boundaries, and PUMF variable names all change between censuses.

## Example presentations

The examples illustrate different kinds of questions and contributions: a descriptive finding, a measurement check, a forecast, or a comparison of competing explanations. Use them to judge how a focused question connects to evidence and interpretation. They do not prescribe a method or a required number of results. Open the speaker notes (press S) for timing and interpretation. Click the small **Code** link in a slide's top-right corner to see the analysis behind that result.

- [Did the Canada Line raise house prices?](example_skytrain.html) Analysis of course data, with the full set of backup slides, including AI use. The `.qmd` that produces it shows how code and slides fit together.
- [The Value of W](example_west_side.html) The question originated in a class presentation by **Andre Linaksita, Vivian Pan, Harrison Dann, and Emily Tan**. This teaching example calculates its own results from the course data and focuses on the local price premium and a comparison with other streets. It also shows a compact regression table and the limits of a prestige interpretation.
- [Big cities do not pay top healthcare workers more](example_ability_sorting.html) A published finding from 2000 data, retested with 2024 U.S. data. Its design compares two explanations that predict different things.
- [Where did theft rise?](example_vancouver_crime.html) A citywide increase decomposed by location. Shows how a focused descriptive question can produce a useful contribution, while leaving the cause unresolved.
- [Is storefront recovery real?](example_storefronts.html) Tests whether falling vacancy survives changes in survey coverage and the vacancy definition. Shows why comparable observations and clear denominators matter.
- [What will the pipeline deliver?](example_condo_completions.html) Tests whether construction data improve completion forecasts over a simple benchmark, then considers newer evidence. Shows how to evaluate prediction without claiming causation.

The last three examples include [fixed data snapshots and rendering instructions](example_data/README.md). Their code renders without access to another project folder. Reproducing an example is useful practice. A submitted project that builds on one must develop its own question and meaningful contribution, carry out its own analysis, and credit the example.

## Resources

- **Charts:** the [ggplot2 cheat sheet](https://rstudio.github.io/cheatsheets/html/data-visualization.html) shows every geom as a small picture; the [ggplot2 reference](https://ggplot2.tidyverse.org/reference/) explains each function, with examples; the [R Graph Gallery](https://r-graph-gallery.com/) has working code for many chart types; and [From Data to Viz](https://www.data-to-viz.com/) helps you choose a chart for your data.
- **Storytelling:** *Storytelling with Data* (Cole Nussbaumer Knaflic) and "Turning Bad Charts into Compelling Data Stories" (Dominic Bohan).
- **Topic ideas:** Statistics Canada's *Census in Brief* series.
- **Past student work:** "Airbnb's Impact on Vancouver Rentals" (Tabrizi, Dee, Lee) and "Is Vancouver Ready for an NBA Team?" (Huang, Dhaliwal, Wintjes).

## Notes

- **Questions:** post technical and logistical questions on Piazza.
