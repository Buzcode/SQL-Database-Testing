# SQL Database Testing

This project demonstrates my ability to conduct backend database testing and verify data integrity using SQL. As a QA, I do not just rely on UI checks; I write queries to validate that frontend inputs are accurately processed and stored in the backend.

---

## 🗺️ Mock Database Schema Tested
I designed and executed QA scripts against a mock E-Commerce relational database with three interconnected tables:
1.  **Users:** Holds user profile details.
2.  **Products:** Tracks inventory item pricing and stock levels.
3.  **Orders:** Records customer transactions.

---

## 🔍 QA Test Scenarios & SQL Solutions

### 1. Data Integrity & Constraint Validation
*   **Scenario:** Ensure the system does not allow duplicate user registrations under the same email address.
*   **Query Executed:** [See Test Case 1 in qa_validation_queries.sql](./qa_validation_queries.sql)

### 2. Business Logic & Boundary Value Checks
*   **Scenario:** Verify that orders cannot be generated with invalid or zero/negative monetary values.
*   **Query Executed:** [See Test Case 2 in qa_validation_queries.sql](./qa_validation_queries.sql)

### 3. Referential Integrity Check
*   **Scenario:** Detect orphaned orders that point to non-existent users (violating parent-child database relationships).
*   **Query Executed:** [See Test Case 3 in qa_validation_queries.sql](./qa_validation_queries.sql)

### 4. Boundary Value Testing on Inventory
*   **Scenario:** Validate that product stock quantities do not drop below zero in the backend system.
*   **Query Executed:** [See Test Case 4 in qa_validation_queries.sql](./qa_validation_queries.sql)
