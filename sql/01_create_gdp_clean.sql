CREATE OR REPLACE TABLE
`project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.gdp_clean` AS

SELECT
  Country_Name,
  Country_Code,
  Indicator_Name,
  Indicator_Code,
  _2018,
  _2019,
  _2020,
  _2021,
  _2022,
  _2023
FROM `project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.gdp_raw`
WHERE Country_Name IN (
  'China',
  'France',
  'Germany',
  'Singapore',
  'United States'
);
