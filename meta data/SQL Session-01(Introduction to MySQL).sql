-- ============================================
-- MySQL Introduction and Concepts
-- ============================================

-- MySQL is an open-source, cross-platform relational database management system (RDBMS).
-- It is known for being fast, reliable, scalable, and easy to use, and it supports the ANSI SQL standard.
-- MySQL is often used in both small and large applications.

-- ============================================
-- Data Concepts
-- ============================================

-- Data refers to raw facts, figures, and details that are collected and used for analysis, interpretation, and decision-making. 
-- It can come in various forms, including:

-- 1. Numerical Data: Numbers or quantitative measurements, like temperature readings or sales figures.
-- 2. Textual Data: Written or verbal information, such as emails, articles, or social media posts.
-- 3. Categorical Data: Information that can be divided into categories, such as colors, types, or labels.
-- 4. Binary Data: Information represented in binary format, often used in computing, such as 0s and 1s.
-- 5. Multimedia Data: Includes images, audio, and video files.

-- Data is processed and analyzed to extract meaningful insights, identify patterns, and make informed decisions.

-- ============================================
-- Entity and Attributes
-- ============================================

-- Entity: Real-world objects that are distinguishable from other objects (e.g., "Customer", "Order").
-- Attributes: These are values that define an entity (e.g., a "Customer" entity might have attributes like "Name", "Email", etc.).

-- ============================================
-- Database Concepts
-- ============================================

-- A database is an organized collection of data stored electronically and managed by a DBMS (Database Management System).
-- Databases are typically structured into tables, which contain rows and columns for efficient data storage and retrieval.

-- Example: A playlist on your smartphone is essentially a database where each song represents a row, 
-- and attributes such as song name, artist, and album are stored as columns.

-- ============================================
-- DBMS and RDBMS
-- ============================================

-- DBMS (Database Management System) is software that manages and organizes databases, allowing users to create, read, update, and delete data.

-- RDBMS (Relational Database Management System) is a type of DBMS that organizes data in tables with rows and columns, 
-- using keys to establish relationships between tables. MySQL is an example of an RDBMS.

-- ============================================
-- Relational Model
-- ============================================

-- In the relational model, data is stored in tables. A table consists of:
-- 1. Rows: Each row represents a unique record in the table.
-- 2. Columns: Each column represents a specific attribute or data point about the record.

-- The intersection of a row and column is called a **cell**, and it holds a specific data value for that record and attribute.

-- ============================================
-- SQL Components
-- ============================================

-- SQL is composed of four parts:
-- 1. Data Definition Language (DDL): Statements for defining the database structure (e.g., CREATE, ALTER, DROP).
-- 2. Data Manipulation Language (DML): Statements for querying and modifying data (e.g., SELECT, INSERT, UPDATE, DELETE).
-- 3. Data Control Language (DCL): Statements for controlling access (e.g., GRANT, REVOKE).
-- 4. Transaction Control Language (TCL): Statements for controlling transactions (e.g., COMMIT, ROLLBACK).

-- ============================================
-- MySQL Tools
-- ============================================

-- MySQL Server: The actual database server.
-- MySQL Workbench: A client tool used to interact with MySQL Server via a graphical user interface.
-- MySQL Shell: An interactive interface supporting JavaScript, Python, or SQL for managing MySQL.

-- ============================================
-- Importing a Sample Database
-- ============================================

-- To import a sample database in MySQL, follow these steps:
-- 1. Open the command prompt (cmd).
-- 2. Change the directory to the MySQL Server/bin folder.
-- 3. Run the following command: 
--    mysql -u root -p
-- 4. Provide the password when prompted.
-- 5. Run the command to import a database:
--    source path_of_file_with_file_name.sql
-- 6. After importing, you can verify by running:
--    SHOW DATABASES;

-- ============================================
-- SQL vs PL/SQL
-- ============================================

-- PL/SQL (Procedural Language/SQL) is an extension of SQL for Oracle databases. 
-- The following table shows the differences between SQL and PL/SQL:

-- SQL vs PL/SQL:
-- ----------------------------------------------
-- | Feature                  | SQL                  | PL/SQL                 |
-- |--------------------------|----------------------|------------------------|
-- | Definition               | SQL is a declarative language for querying and managing databases. | PL/SQL is a procedural extension of SQL for Oracle databases. |
-- | Type                     | Non-procedural (declarative).  | Procedural (supports loops, conditions, variables). |
-- | Functionality            | Used for querying and modifying data. | Used for complex data processing, stored procedures, and functions. |
-- | Control Structures       | No control structures.  | Supports loops, IF conditions, exception handling. |
-- | Performance              | Less efficient for large operations. | More efficient for complex operations. |
-- | Use Case                 | Used for data operations (SELECT, INSERT, UPDATE). | Used for stored procedures, triggers, and complex business logic. |
-- | Error Handling           | No built-in error handling. | Supports error handling with exceptions. |

-- ============================================
-- SQL vs MySQL
-- ============================================

-- The following table shows the difference between SQL and MySQL:

-- SQL vs MySQL:
-- -----------------------------------------------
-- | Feature                  | SQL                  									   	| MySQL                							|
-- |--------------------------|-------------------------------------------------------------|-----------------------------------------------|
-- | Definition               | SQL is a standard language for interacting with databases. 	| MySQL is an open-source relational database management system (RDBMS) that supports SQL. |
-- | Type                     | SQL is a query language. 									| MySQL is an RDBMS system. 		|
-- | Functionality            | SQL is used for querying, updating, and managing data. 		| MySQL stores, retrieves, and manages data using SQL. |
-- | Standards Compliance     | Follows the ANSI SQL standard. 								| Follows SQL standards but has specific MySQL extensions. |
-- | Flexibility              | SQL is used with many DBMS systems. 						| MySQL is specific to the MySQL DBMS. |
-- | Use Case                 | SQL is used for defining and managing data in any RDBMS. 	| MySQL is a system for implementing and managing databases. |