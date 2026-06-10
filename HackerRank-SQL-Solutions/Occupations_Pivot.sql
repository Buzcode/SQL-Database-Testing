-- Challenge: Occupations Pivot (HackerRank - Advanced Select)
-- Objective: Pivot the Occupation column so Name values are listed alphabetically under Doctor, Professor, Singer, and Actor columns.
-- Core Concepts Used: Pivot Aggregation (MAX + CASE), Subqueries / Derived Tables, Analytical Window Functions (ROW_NUMBER() OVER PARTITION BY).

SELECT 
    -- 2. Aggregate the pivoted columns to collapse NULL values into clean rows.
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    -- 1. Subquery: Assign an alphabetical row number (rn) to each name partitioned by their occupation.
    SELECT 
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn,
        Name,
        Occupation
    FROM OCCUPATIONS
) AS temp
GROUP BY rn
ORDER BY rn;
