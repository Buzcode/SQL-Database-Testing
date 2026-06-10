-- Challenge: The PADS (HackerRank - Advanced Select)
-- Objective: Generate two distinct formatted result sets:
--   1. An alphabetically ordered list of names followed by the first letter of their profession.
--   2. A summary of the total counts of each occupation sorted ascending.
-- Core Concepts Used: String Concatenation (CONCAT), Substring Extraction (LEFT), String Case Modification (LOWER), GROUP BY, Aggregate COUNT, Multi-column Sorting.

-- Query 1: Format names as "Name(ProfessionLetter)"
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')')
FROM OCCUPATIONS
ORDER BY Name;

-- Query 2: Aggregate occupation counts and format as a custom string
SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;
