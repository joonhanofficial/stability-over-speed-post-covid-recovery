CREATE OR REPLACE TABLE
`project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.inflation_long` AS

SELECT
  Country_Name AS Country,
  CAST(Year AS INT64) AS Year,
  CAST(Inflation AS FLOAT64) AS Inflation
FROM (
  SELECT
    Country_Name,
    _2018,
    _2019,
    _2020,
    _2021,
    _2022,
    _2023
  FROM `project-9c13f7a9-4ab5-468e-8ef.post_covid_analysis.inflation_clean`
)
UNPIVOT (
  Inflation FOR Year IN (
    _2018 AS '2018',
    _2019 AS '2019',
    _2020 AS '2020',
    _2021 AS '2021',
    _2022 AS '2022',
    _2023 AS '2023'
  )
);
