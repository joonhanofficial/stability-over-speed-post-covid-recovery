CREATE OR REPLACE TABLE
`project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.economic_analysis_5countries` AS

SELECT
  g.Country,
  g.Year,
  g.GDP_Growth,
  i.Inflation
FROM `project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.gdp_long` g
JOIN `project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.inflation_long` i
  ON g.Country = i.Country
  AND g.Year = i.Year
WHERE g.Year BETWEEN 2018 AND 2023
ORDER BY g.Country, g.Year;
