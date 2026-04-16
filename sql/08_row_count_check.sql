SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT Country) AS total_countries,
  MIN(Year) AS min_year,
  MAX(Year) AS max_year
FROM `project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.economic_analysis_5countries`;
