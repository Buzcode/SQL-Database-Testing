# HackerRank SQL Basic Select Challenges (1-15)

This document tracks my solutions and logic for the first 15 **Basic Select** challenges on HackerRank as I work toward my SQL milestones. All queries are written and tested using the **MySQL** environment.

---

## 📊 Table Schemas Reference

### 1. The CITY Table
| Field | Type |
| :--- | :--- |
| ID | NUMBER |
| NAME | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3) |
| DISTRICT | VARCHAR2(20) |
| POPULATION | NUMBER |

### 2. The STATION Table
| Field | Type |
| :--- | :--- |
| ID | NUMBER |
| CITY | VARCHAR2(21) |
| STATE | VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W | NUMBER |

---

## 🛠️ Solutions

### 1. Revising the Select Query I
*   **Problem:** Query all columns for all American cities in the **CITY** table with populations larger than 100,000. The CountryCode for America is `USA`.
*   **Query:**
    ```sql
    SELECT * 
    FROM CITY 
    WHERE COUNTRYCODE = 'USA' 
      AND POPULATION > 100000;
    ```

---

### 2. Revising the Select Query II
*   **Problem:** Query the **NAME** field for all American cities in the **CITY** table with populations larger than 120,000. The CountryCode for America is `USA`.
*   **Query:**
    ```sql
    SELECT NAME 
    FROM CITY 
    WHERE COUNTRYCODE = 'USA' 
      AND POPULATION > 120000;
    ```

---

### 3. Select All
*   **Problem:** Query all columns (attributes) for every row in the **CITY** table.
*   **Query:**
    ```sql
    SELECT * 
    FROM CITY;
    ```

---

### 4. Select By ID
*   **Problem:** Query all columns for a city in **CITY** with the ID `1661`.
*   **Query:**
    ```sql
    SELECT * 
    FROM CITY 
    WHERE ID = 1661;
    ```

---

### 5. Japanese Cities' Attributes
*   **Problem:** Query all attributes of every Japanese city in the **CITY** table. The COUNTRYCODE for Japan is `JPN`.
*   **Query:**
    ```sql
    SELECT * 
    FROM CITY 
    WHERE COUNTRYCODE = 'JPN';
    ```

---

### 6. Japanese Cities' Names
*   **Problem:** Query the names of all the Japanese cities in the **CITY** table. The COUNTRYCODE for Japan is `JPN`.
*   **Query:**
    ```sql
    SELECT NAME 
    FROM CITY 
    WHERE COUNTRYCODE = 'JPN';
    ```

---

### 7. Weather Observation Station 1
*   **Problem:** Query a list of **CITY** and **STATE** from the **STATION** table.
*   **Query:**
    ```sql
    SELECT CITY, STATE 
    FROM STATION;
    ```

---

### 8. Weather Observation Station 3
*   **Problem:** Query a list of **CITY** names from **STATION** for cities that have an even **ID** number. Print the results in any order, but exclude duplicates from the answer.
*   **Query:**
    ```sql
    SELECT DISTINCT CITY 
    FROM STATION 
    WHERE ID % 2 = 0;
    ```

---

### 9. Weather Observation Station 4
*   **Problem:** Find the difference between the total number of **CITY** entries in the table and the number of distinct **CITY** entries in the table.
*   **Query:**
    ```sql
    SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
    FROM STATION;
    ```

---

### 10. Weather Observation Station 5
*   **Problem:** Query the two cities in **STATION** with the shortest and longest **CITY** names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first alphabetically.
*   **Query:**
    ```sql
    -- Shortest city name
    SELECT CITY, LENGTH(CITY) 
    FROM STATION 
    ORDER BY LENGTH(CITY) ASC, CITY ASC 
    LIMIT 1;

    -- Longest city name
    SELECT CITY, LENGTH(CITY) 
    FROM STATION 
    ORDER BY LENGTH(CITY) DESC, CITY ASC 
    LIMIT 1;
    ```

---

### 11. Weather Observation Station 6
*   **Problem:** Query the list of **CITY** names starting with vowels (i.e., `a`, `e`, `i`, `o`, or `u`) from **STATION**. Your result cannot contain duplicates.
*   **Query:**
    ```sql
    SELECT DISTINCT CITY 
    FROM STATION 
    WHERE CITY REGEXP '^[aeiou]';
    ```

---

### 12. Weather Observation Station 7
*   **Problem:** Query the list of **CITY** names ending with vowels (i.e., `a`, `e`, `i`, `o`, or `u`) from **STATION**. Your result cannot contain duplicates.
*   **Query:**
    ```sql
    SELECT DISTINCT CITY 
    FROM STATION 
    WHERE CITY REGEXP '[aeiou]$';
    ```

---

### 13. Weather Observation Station 8
*   **Problem:** Query the list of **CITY** names from **STATION** which have vowels (i.e., `a`, `e`, `i`, `o`, or `u`) as both their first and last characters. Your result cannot contain duplicates.
*   **Query:**
    ```sql
    SELECT DISTINCT CITY 
    FROM STATION 
    WHERE CITY REGEXP '^[aeiou].*[aeiou]$';
    ```

---

### 14. Weather Observation Station 9
*   **Problem:** Query the list of **CITY** names from **STATION** that do not start with vowels (i.e., `a`, `e`, `i`, `o`, or `u`). Your result cannot contain duplicates.
*   **Query:**
    ```sql
    SELECT DISTINCT CITY 
    FROM STATION 
    WHERE CITY NOT REGEXP '^[aeiou]';
    ```

---

### 15. Weather Observation Station 10
*   **Problem:** Query the list of **CITY** names from **STATION** that do not end with vowels (i.e., `a`, `e`, `i`, `o`, or `u`). Your result cannot contain duplicates.
*   **Query:**
    ```sql
    SELECT DISTINCT CITY 
    FROM STATION 
    WHERE CITY NOT REGEXP '[aeiou]$';
    ```
