SELECT
  Country,
  Year,
  GDP_Growth,
  Inflation
FROM `project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.economic_analysis_5countries`
WHERE GDP_Growth IS NULL
   OR Inflation IS NULL
ORDER BY Country, Year;
