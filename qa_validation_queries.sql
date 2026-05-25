-- ==========================================
-- QA DATABASE VALIDATION TESTS
-- ==========================================

-- TEST CASE 1: Duplicate Account Check
-- Objective: Ensure no two users are registered with the same email address.
-- Expectation: The query should return 0 rows. If rows appear, there is a registration validation bug.
SELECT email, COUNT(*) 
FROM Users 
GROUP BY email 
HAVING COUNT(*) > 1;


-- TEST CASE 2: Order Price Calculation Validation
-- Objective: Check for orders where the total_amount is zero or null (potential billing/checkout calculation bug).
-- Expectation: 0 rows returned.
SELECT order_id, user_id, total_amount 
FROM Orders 
WHERE total_amount IS NULL OR total_amount <= 0;


-- TEST CASE 3: Referential Integrity Check (Orphaned Orders)
-- Objective: Identify orders that were placed but are not linked to any valid registered user.
-- Expectation: 0 rows returned. If a row appears, a user account was deleted without cleaning up their orders.
SELECT o.order_id, o.user_id 
FROM Orders o
LEFT JOIN Users u ON o.user_id = u.user_id 
WHERE u.user_id IS NULL;


-- TEST CASE 4: Negative Inventory Check
-- Objective: Check if products are allowed to have negative stock levels in the backend.
-- Expectation: 0 rows returned.
SELECT product_id, product_name, stock_quantity 
FROM Products 
WHERE stock_quantity < 0;
