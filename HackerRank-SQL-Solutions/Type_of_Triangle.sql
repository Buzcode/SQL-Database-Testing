-- Challenge: Type of Triangle (HackerRank - Advanced Select)
-- Objective: Identify the type of each record in the TRIANGLES table using its three side lengths (A, B, C).
-- Core Concepts Used: CASE statements, Logical Operators, Triangle Inequality Theorem.

SELECT 
    CASE
        -- 1. Check if the side lengths can actually form a valid triangle first.
        -- According to the Triangle Inequality Theorem, the sum of any two sides must be greater than the third.
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        
        -- 2. If valid, check for Equilateral (all three sides equal).
        WHEN A = B AND B = C THEN 'Equilateral'
        
        -- 3. Check for Isosceles (exactly two sides equal).
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        
        -- 4. Otherwise, it must be Scalene (all sides are different).
        ELSE 'Scalene'
    END
FROM TRIANGLES;
