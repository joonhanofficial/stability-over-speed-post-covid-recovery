# Methodology

## Project Design

This project was structured as a descriptive comparative analysis of post-COVID recovery across five selected economies: China, France, Germany, Singapore, and the United States.

The goal was not to build a causal macroeconomic model. The goal was to create a clean analytical comparison showing how GDP rebound changes in meaning when inflation is evaluated alongside it across the same country-year structure.

The final analysis focused on the 2018 to 2023 period so the dataset would capture three useful phases at once: pre-COVID baseline, 2020 disruption, and post-COVID rebound.

## Data Sources

The project used two public World Bank datasets:

- GDP growth
- Inflation

These two indicators were selected because they served different analytical roles in the project. GDP growth was used to capture the speed and visibility of economic rebound, while inflation was used as a pressure signal that could change how that rebound should be interpreted.

## Why These Indicators Were Used

GDP growth was useful because it clearly showed the scale of contraction in 2020 and the pace of rebound that followed. It was the most direct way to observe whether an economy appeared to recover after the initial COVID shock.

Inflation was included because GDP alone does not explain whether that rebound occurred in a relatively balanced environment. By placing inflation next to GDP growth, the project aimed to distinguish visible recovery from more stable recovery.

This does not mean inflation was treated as a complete measure of economic stability. It was used as an important second lens to improve interpretation.

## Country Scope

The project focused on five countries:

- China
- France
- Germany
- Singapore
- United States

These countries were selected to create a focused comparison across major economies with different post-COVID recovery paths and inflation responses. The purpose was contrast, not global completeness.

## Data Preparation Workflow

The source files were not analysis-ready in raw form. The data was originally arranged in wide format, with each year stored as a separate column. That format is difficult to use for country-year comparison, SQL joins, and downstream visualization.

To make the comparison valid and usable, the workflow was structured into the following steps:

1. Import raw GDP and inflation CSV files into BigQuery.
2. Reduce the raw tables to the selected countries and relevant year range.
3. Create cleaned source tables for GDP and inflation.
4. Reshape both datasets from wide format into long format.
5. Standardize both datasets into a shared country-year structure.
6. Join GDP growth and inflation into one final comparative table.
7. Validate the final output before using it in Tableau.

This workflow ensured that the analysis was built on a comparable structure rather than on visually convenient but inconsistent source files.

## SQL Workflow

The BigQuery pipeline was organized into the following stages:

### 1. GDP Cleaning
A cleaned GDP table was created from the raw GDP source by keeping only the selected countries and relevant year columns.

### 2. Inflation Cleaning
A cleaned inflation table was created from the raw inflation source using the same scope and year range.

### 3. GDP Reshaping
The GDP dataset was transformed from wide format into long format so that each row represented one country-year GDP observation.

### 4. Inflation Reshaping
The inflation dataset was transformed into the same long-format structure.

### 5. Final Merge
The two long-format tables were joined on country and year to create the final analytical dataset used for comparison and visualization.

### 6. Validation
The final table was checked for row count, time range, country count, and missing values before being treated as analysis-ready.

## Final Analytical Table

The final table used for visualization and interpretation was:

`economic_analysis_5countries`

This table contained one row per country-year observation with the following fields:

- Country
- Year
- GDP_Growth
- Inflation

This became the main input for Tableau.

## Visualization Approach

The Tableau dashboard was built to support three layers of interpretation:

1. **GDP trend view**  
   Used to show contraction and rebound patterns across countries over time.

2. **Inflation trend view**  
   Used to show whether recovery occurred alongside rising inflation pressure.

3. **GDP growth vs inflation relationship view**  
   Used to compare how the two indicators sat together rather than viewing them as isolated trends.

This structure was intended to move the analysis from simple trend description toward more careful comparison.

## Quality Checks

Before treating the final output as usable, the workflow included simple quality checks:

- confirm the expected five-country scope
- confirm the 2018 to 2023 year range
- confirm the final row count
- check for missing GDP growth or inflation values

These checks were important because the value of the project depended on valid comparison across the same country-year grain.

## Methodological Boundaries

This methodology supports descriptive comparison, not causal explanation.

The project does not estimate why inflation changed, why one country recovered differently from another, or whether one indicator caused movement in the other. It is not intended to serve as a full macroeconomic model.

Its purpose is narrower and more practical: to show how data restructuring, cross-country comparison, and dual-indicator analysis can produce a more careful reading of headline economic recovery.
