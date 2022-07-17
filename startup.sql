SELECT * FROM startups;

SELECT 
  COUNT(name) AS "Startups Total", 
  SUM(valuation) AS "Valuation Total", 
  MAX(raised) AS "Highest $ Raised",
  MIN(founded) AS "Oldest Startup", 
  AVG(valuation) AS "Valuation Average"
FROM startups;

SELECT MAX(raised) AS "Highest Seed $ Raised" FROM startups WHERE stage = "Seed";

SELECT 
  category, 
  ROUND(AVG(valuation), 2) AS "Valuation Average"
FROM startups GROUP BY 1 ORDER BY 2 DESC;

SELECT 
  category, 
  COUNT(name) AS "Startup Total (with > 3 startups)"
FROM startups GROUP BY 1 HAVING COUNT(name) > 3 ORDER BY 2 DESC;

SELECT 
  location,
  AVG(employees) AS "Average Size (with > 500 employees)"
FROM startups GROUP BY 1 HAVING AVG(employees) > 500;
