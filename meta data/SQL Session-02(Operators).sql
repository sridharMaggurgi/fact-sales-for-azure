-- ---------------------------------------------------------------------
-- Operators in MySQL
-- ---------------------------------------------------------------------

-- 1. Arithmetic Operators
-- Addition (+)
SELECT 10 + 5 AS Addition_Example;  -- Adds 10 and 5

-- Subtraction (-)
SELECT 10 - 5 AS Subtraction_Example;  -- Subtracts 5 from 10

-- Multiplication (*)
SELECT 10 * 5 AS Multiplication_Example;  -- Multiplies 10 by 5

-- Division (/)
SELECT 10 / 5 AS Division_Example;  -- Divides 10 by 5

-- Modulus (%)
SELECT 10 % 3 AS Modulus_Example;  -- Returns remainder of 10 divided by 3

-- 2. Comparison Operators
-- Equal to (=)
SELECT 'apple' = 'apple' AS Equal_Example;  -- Returns 1 (true) as both values are equal

-- Not equal to (!= or <>)
SELECT 'apple' != 'orange' AS Not_Equal_Example;  -- Returns 1 (true) as values are not equal

-- Greater than (>)
SELECT 10 > 5 AS Greater_Than_Example;  -- Returns 1 (true) as 10 is greater than 5

-- Less than (<)
SELECT 5 < 10 AS Less_Than_Example;  -- Returns 1 (true) as 5 is less than 10

-- Greater than or equal to (>=)
SELECT 10 >= 10 AS Greater_Than_Or_Equal_Example;  -- Returns 1 (true) as 10 is equal to 10

-- Less than or equal to (<=)
SELECT 5 <= 10 AS Less_Than_Or_Equal_Example;  -- Returns 1 (true) as 5 is less than 10

-- BETWEEN
SELECT 10 BETWEEN 5 AND 15 AS Between_Example;  -- Returns 1 (true) as 10 is between 5 and 15

-- LIKE
SELECT 'apple' LIKE 'a%' AS Like_Example;  -- Returns 1 (true) as 'apple' starts with 'a'

-- IN
SELECT 10 IN (5, 10, 15) AS In_Example;  -- Returns 1 (true) as 10 is in the set

-- IS NULL
SELECT NULL IS NULL AS Is_Null_Example;  -- Returns 1 (true) as the value is NULL

-- 3. Logical Operators
-- AND
SELECT 1 AND 0 AS And_Example;  -- Returns 0 (false) as both conditions are not true

-- OR
SELECT 1 OR 0 AS Or_Example;  -- Returns 1 (true) as one of the conditions is true

-- NOT
SELECT NOT 1 AS Not_Example;  -- Returns 0 (false) as it reverses the true condition

-- 4. Bitwise Operators
-- Bitwise AND (&)
SELECT 5 & 3 AS Bitwise_And_Example;  -- Returns 1

-- Bitwise OR (|)
SELECT 5 | 3 AS Bitwise_Or_Example;  -- Returns 7

-- Bitwise XOR (^)
SELECT 5 ^ 3 AS Bitwise_Xor_Example;  -- Returns 6

-- Bitwise NOT (~)
SELECT ~5 AS Bitwise_Not_Example;  -- Returns 18446744073709551610

-- Bitwise Left Shift (<<)
SELECT 5 << 1 AS Bitwise_Left_Shift_Example;  -- Returns 10

-- Bitwise Right Shift (>>)
SELECT 5 >> 1 AS Bitwise_Right_Shift_Example;  -- Returns 2

-- Detailed Explanation of Bitwise Operators

-- 4.1. Bitwise AND (&)
-- The Bitwise AND operator compares each corresponding bit of two numbers.
-- It returns 1 if both bits are 1, and 0 otherwise.
-- Example:
-- 5 (binary 0101) AND 3 (binary 0011) results in 1 (binary 0001).
-- Explanation:
--  0101   (5)
-- & 0011   (3)
-- --------
--  0001   (1)

-- 4.2. Bitwise OR (|)
-- The Bitwise OR operator compares each corresponding bit of two numbers.
-- It returns 1 if at least one of the bits is 1, and 0 if both are 0.
-- Example:
-- 5 (binary 0101) OR 3 (binary 0011) results in 7 (binary 0111).
-- Explanation:
--  0101   (5)
-- | 0011   (3)
-- --------
--  0111   (7)

-- 4.3. Bitwise XOR (^)
-- The Bitwise XOR operator compares each corresponding bit of two numbers.
-- It returns 1 if the bits at that position are different, and 0 if they are the same.
-- Example:
-- 5 (binary 0101) XOR 3 (binary 0011) results in 6 (binary 0110).
-- Explanation:
--  0101   (5)
-- ^ 0011   (3)
-- --------
--  0110   (6)

-- 4.4. Bitwise NOT (~)
-- The Bitwise NOT operator inverts all bits of a number.
-- It changes 1s to 0s and 0s to 1s.
-- Example:
-- ~5 (binary 0101) results in a large positive number.
-- Explanation:
-- ~0101   (5)
-- --------
--  1010   (invert bits)
-- This produces 18446744073709551610 (depending on the platform and the number of bits used).

-- 4.5. Bitwise Left Shift (<<)
-- The Bitwise Left Shift operator shifts all the bits of a number to the left by the specified number of positions.
-- Each shift to the left is equivalent to multiplying the number by 2.
-- Example:
-- 5 (binary 0101) << 1 results in 10 (binary 1010).
-- Explanation:
--  0101   (5)
-- << 1
-- --------
--  1010   (10)

-- 4.6. Bitwise Right Shift (>>)
-- The Bitwise Right Shift operator shifts all the bits of a number to the right by the specified number of positions.
-- Each shift to the right is equivalent to dividing the number by 2 (and truncating the remainder).
-- Example:
-- 5 (binary 0101) >> 1 results in 2 (binary 0010).
-- Explanation:
--  0101   (5)
-- >> 1
-- --------
--  0010   (2)

-- 5. Assignment Operators
-- Assignment (=)
SET @variable = 10;  -- Sets a variable to 10
SELECT @variable AS Assignment_Example;  -- Displays the variable

-- SOUNDS LIKE
SELECT 'john' SOUNDS LIKE 'jon';  -- Returns 1 (true) as 'john' sounds like 'jon'

-- 6. Detailed Explanation of Subquery Operators

-- 6.1. ANY Operator
-- The `ANY` operator is used in a comparison to return TRUE if the comparison is true for **any** value in the subquery.
-- Example:
-- Find employees whose salary is greater than any salary in department 30.
SELECT * FROM emp
WHERE sal > ANY (
  SELECT sal FROM emp
  WHERE deptno = 30
);

-- Explanation:
-- This query will return all employees whose salary is greater than at least one employee's salary in department 30.

-- 6.2. ALL Operator
-- The `ALL` operator is used in a comparison to return TRUE if the comparison is true for **all** values in the subquery.
-- Example:
-- Find employees whose salary is greater than all salaries in department 30.
SELECT * FROM emp
WHERE sal > ALL (
  SELECT sal FROM emp
  WHERE deptno = 30
);

-- Explanation:
-- This query will return all employees whose salary is greater than the salary of every employee in department 30.

-- 8. String Comparison Operators

-- 8.1. LIKE Operator
-- The `LIKE` operator is used to search for a specified pattern in a column.
-- Example:
-- Find all employees whose name starts with 'M'.
SELECT * FROM emp
WHERE ename LIKE 'M%';

-- Explanation:
-- The percent sign (%) is a wildcard that represents zero or more characters.
-- The query will return all employees whose names start with the letter 'M'.

-- 8t.2. NOT LIKE Operator
-- The `NOT LIKE` operator is used to search for a pattern that does **not** match a specified value.
-- Example:
-- Find all employees whose name does not contain 'N'.
SELECT * FROM emp
WHERE ename NOT LIKE '%N%';

-- Explanation:
-- The query returns all employees whose names do not contain the letter 'N'. 
-- The percent signs (%) are wildcards that represent any number of characters before or after 'N'.

-- 8.3. BETWEEN Operator
-- The `BETWEEN` operator is used to filter the result set within a certain range (inclusive).
-- Example:
-- Find employees whose salary is between 3000 and 5000.
SELECT * FROM emp
WHERE sal BETWEEN 3000 AND 5000;

-- Explanation:
-- This query returns employees whose salary is between 3000 and 5000, including the boundary values 3000 and 5000.

-- 8.4. NOT BETWEEN Operator
-- The `NOT BETWEEN` operator is used to filter the result set outside a certain range.
-- Example:
-- Find employees whose salary is not between 3000 and 5000.
SELECT * FROM emp
WHERE sal NOT BETWEEN 3000 AND 5000;

-- Explanation:
-- This query returns employees whose salary is not in the range between 3000 and 5000.

-- 9. NULL Operators

-- 9.1. IS NULL Operator
-- The `IS NULL` operator is used to test for **NULL** values in a column.
-- Example:
-- Find employees whose commission is NULL.
SELECT * FROM emp
WHERE comm IS NULL;

-- Explanation:
-- The query returns employees who have a NULL value in the `comm` column, indicating no commission is assigned.

-- 9.2. IS NOT NULL Operator
-- The `IS NOT NULL` operator is used to test for non-NULL values.
-- Example:
-- Find employees whose commission is not NULL.
SELECT * FROM emp
WHERE comm IS NOT NULL;

-- Explanation:
-- This query returns employees who have a non-NULL value in the `comm` column, meaning they have been assigned a commission.

-- 10. Sample Queries with Emp Table (continued)

-- Switch to demo database
USE demo;

-- Select employees from departments 10 and 30 whose salary is greater than all salaries in department 20
SELECT * FROM emp
WHERE sal > ALL (
  SELECT sal FROM emp
  WHERE deptno = 20
) AND deptno IN (10, 30);

-- Explanation:
-- This query returns employees from departments 10 and 30 whose salary is greater than the highest salary in department 20.

-- Select employees whose names start with 'J' and who earn more than 2000
SELECT * FROM emp
WHERE ename LIKE 'J%' AND sal > 2000;

-- Explanation:
-- The query returns employees whose name starts with 'J' and whose salary is greater than 2000.

-- Get the employees with the maximum salary in each department
SELECT deptno, MAX(sal) AS max_salary
FROM emp
GROUP BY deptno;

-- Explanation:
-- This query returns the maximum salary in each department.

-- 11. More Examples of Subquery Usage

-- Find employees whose salary is greater than the average salary in department 30
SELECT * FROM emp
WHERE sal > (
  SELECT AVG(sal) FROM emp WHERE deptno = 30
);

-- Explanation:
-- The query finds all employees whose salary is greater than the average salary in department 30.

-- Find employees whose salary is greater than any employee's salary in department 40
SELECT * FROM emp
WHERE sal > ANY (
  SELECT sal FROM emp WHERE deptno = 40
);

-- Explanation:
-- The query finds employees whose salary is greater than at least one employee's salary in department 40.

-- Find employees whose salary is greater than all salaries in department 50
SELECT * FROM emp
WHERE sal > ALL (
  SELECT sal FROM emp WHERE deptno = 50
);

-- Explanation:
-- The query finds employees whose salary is greater than every employee's salary in department 50.

-- 12. Sample Queries with Emp Table

-- Switch to demo database
USE demo;

-- Select all rows from the emp table
SELECT * FROM emp;

-- Select all employees from departments 10 and 30
SELECT * FROM emp
WHERE deptno IN (10, 30);

-- Select employees whose names start with 'M'
SELECT * FROM emp
WHERE ename LIKE 'M%';

-- Select employees whose names do not contain 'N'
SELECT * FROM emp
WHERE ename NOT LIKE '%N';

-- Select employees where comm is not null
SELECT * FROM emp
WHERE comm IS NOT NULL;

-- Select employees whose salary is greater than any salary in department 30
SELECT * FROM emp
WHERE sal > ANY (
  SELECT sal FROM emp
  WHERE deptno = 30
);

-- Get the maximum salary in department 30
SELECT MAX(sal) FROM emp
WHERE deptno = 30;

-- Get the minimum salary in department 30
SELECT MIN(sal) FROM emp
WHERE deptno = 30;

-- Select employees whose salary is greater than all salaries in department 30
SELECT * FROM emp
WHERE sal > ALL (
  SELECT sal FROM emp
  WHERE deptno = 30
);
