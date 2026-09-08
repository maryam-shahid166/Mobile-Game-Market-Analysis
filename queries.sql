Query 1:
  
SELECT App,
       CAST(REPLACE(REPLACE(Installs, ',', ''), '+', '') AS INTEGER) AS Installs_Clean
FROM games;

Query 2:
  
SELECT Type, ROUND(AVG(Rating),2) AS Avg_Rating, COUNT(*) AS Num_Apps
FROM games
WHERE Rating IS NOT NULL
GROUP BY Type;

Query 3:
  
SELECT Genres,
       ROUND(AVG(Rating),2) AS Avg_Rating,
       AVG(CAST(REPLACE(REPLACE(Installs,',',''),'+','') AS INTEGER)) AS Avg_Installs
FROM games
GROUP BY Genres
ORDER BY Avg_Rating DESC;
