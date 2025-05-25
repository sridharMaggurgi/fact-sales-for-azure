-- ============================
-- MySQL Data Types Overview
-- ============================
-- Data Type : data types define the type of data a column can hold. Choosing the correct data type for a column is essential 
-- for ensuring that your database is efficient and that the data stored within it remains consistent and accurate.
-- ===================================
-- 1. Numeric Data Types
-- ===================================

-- 1.1 Integer Types
-- Used for storing whole numbers (both positive and negative)
CREATE TABLE numeric_example (
    int_col INT,               -- INT: Size 4 bytes, range -2147483648 to 2147483647
    small_int_col SMALLINT,     -- SMALLINT: Size 2 bytes, range -32768 to 32767
    tiny_int_col TINYINT,       -- TINYINT: Size 1 byte, range -128 to 127
    medium_int_col MEDIUMINT,   -- MEDIUMINT: Size 3 bytes, range -8388608 to 8388607
    big_int_col BIGINT         -- BIGINT: Size 8 bytes, range -9223372036854775808 to 9223372036854775807
);

-- Real-time use case:
-- 1. `INT` for primary keys, order numbers, and user IDs.
-- 2. `TINYINT` for binary flags (e.g., active/inactive status).
-- 3. `BIGINT` for large transaction IDs or large-scale user tracking (e.g., social media platforms).

-- Example: Inserting integer values
INSERT INTO numeric_example (int_col, small_int_col, tiny_int_col, medium_int_col, big_int_col)
VALUES (100, 25, 10, 50000, 10000000000);

-- 1.2 Floating-Point Types
-- Used for storing numbers with decimals (approximate values)
CREATE TABLE float_example (
    float_col FLOAT,            -- FLOAT: Size 4 bytes, range approximately -3.4e38 to 3.4e38
    double_col DOUBLE,          -- DOUBLE: Size 8 bytes, range approximately -1.7e308 to 1.7e308
    decimal_col DECIMAL(10, 2)  -- DECIMAL: Size depends on precision, fixed-point, for exact values, e.g., money (10 digits, 2 after decimal)
);

-- Real-time use case:
-- 1. `DECIMAL` for financial applications, where precision is needed (e.g., for monetary values).
-- 2. `FLOAT` or `DOUBLE` for scientific calculations or measurements (e.g., temperature or stock prices).

-- Example: Inserting floating-point values
INSERT INTO float_example (float_col, double_col, decimal_col)
VALUES (3.14, 3.1415926535, 12345.67);

-- ===================================
-- 2. String Data Types
-- ===================================

-- 2.1 Character Types
-- Used for storing strings of characters
CREATE TABLE string_example (
    char_col CHAR(10),          -- CHAR: Fixed-length string, 10 characters, size 10 bytes, padded with spaces if shorter
    varchar_col VARCHAR(255)    -- VARCHAR: Variable-length string, max 255 characters, size depends on length (max 255 bytes)
);

-- Real-time use case:
-- 1. `CHAR` for storing fixed-length strings, like country codes (e.g., "US", "CA") or phone number formats.
-- 2. `VARCHAR` for user names, emails, product descriptions, or any textual data of variable length.

-- Example: Inserting string values
INSERT INTO string_example (char_col, varchar_col)
VALUES ('hello     ', 'hello world');

-- 2.2 Text Types
-- Used for storing large amounts of text
CREATE TABLE text_example (
    tiny_text TINYTEXT,         -- TINYTEXT: Size up to 255 characters, 255 bytes
    text_col TEXT,              -- TEXT: Size up to 65535 characters, 65535 bytes
    medium_text MEDIUMTEXT,     -- MEDIUMTEXT: Size up to 16777215 characters, 16 MB
    long_text LONGTEXT          -- LONGTEXT: Size up to 4294967295 characters, 4 GB
);

-- Real-time use case:
-- 1. `TEXT` for blog posts, comments, or user reviews where content can vary in size.
-- 2. `LONGTEXT` for storing large content, such as articles, research papers, or product manuals.

-- Example: Inserting text values
INSERT INTO text_example (tiny_text, text_col, medium_text, long_text)
VALUES ('Short text', 'This is some text', 'Medium sized text', 'Long text data...');

-- ===================================
-- 3. Date and Time Data Types
-- ===================================

-- 3.1 Date and Time Types
-- Used for storing date and time values
CREATE TABLE datetime_example (
    date_col DATE,              -- DATE: Size 3 bytes, format YYYY-MM-DD (only date)
    time_col TIME,              -- TIME: Size 3 bytes, format HH:MM:SS (only time)
    datetime_col DATETIME,      -- DATETIME: Size 8 bytes, format YYYY-MM-DD HH:MM:SS (date and time)
    timestamp_col TIMESTAMP,    -- TIMESTAMP: Size 4 bytes, stores timestamp in UTC, automatically updates on insert/update
    year_col YEAR               -- YEAR: Size 1 byte, format YYYY (year only)
);

-- Real-time use case:
-- 1. `DATETIME` for event scheduling, order timestamps, or appointment booking systems.
-- 2. `TIMESTAMP` for logging events like user logins or system activity, with automatic tracking of changes.

-- Example: Inserting date and time values
INSERT INTO datetime_example (date_col, time_col, datetime_col, timestamp_col, year_col)
VALUES ('2024-11-21', '10:30:00', '2024-11-21 10:30:00', CURRENT_TIMESTAMP, 2024);

-- ===================================
-- 4. Binary Data Types
-- ===================================

-- 4.1 Binary Types
-- Used for storing binary data such as images, audio, or files
CREATE TABLE binary_example (
    blob_col BLOB,              -- BLOB: Size up to 65,535 bytes, stores binary data (image, file)
    medium_blob MEDIUMBLOB,     -- MEDIUMBLOB: Size up to 16 MB, for larger binary objects
    long_blob LONGBLOB          -- LONGBLOB: Size up to 4 GB, for very large binary objects (e.g., video files)
);

-- Real-time use case:
-- 1. `BLOB` for storing images, audio files, or other media files in e-commerce or social media platforms.
-- 2. `LONG BLOB` for storing video files or other large media content in streaming platforms.

-- Example: Inserting binary data (Note: This is just an example, binary data needs to be converted from a file)
-- INSERT INTO binary_example (blob_col) VALUES (LOAD_FILE('/path/to/file'));

-- ===================================
-- 5. JSON Data Type
-- ===================================

-- 5.1 JSON Type
-- Used for storing JSON (JavaScript Object Notation) data
CREATE TABLE json_example (
    json_col JSON              -- Size depends on content, stores JSON-formatted data (text-based)
);

-- Real-time use case:
-- 1. Storing structured data like user preferences, configuration settings, or API responses in JSON format.
-- 2. Useful for applications that need to store dynamic or unstructured data that might change over time.

-- Example: Inserting JSON data
INSERT INTO json_example (json_col)
VALUES ('{"name": "John", "age": 30, "city": "New York"}');

-- ===================================
-- 6. Enum and Set Data Types
-- ===================================

-- 6.1 ENUM Type
-- Used for storing one value from a list of predefined values (e.g., status, category)
CREATE TABLE enum_example (
    color ENUM('red', 'green', 'blue', 'yellow')  -- ENUM: Stores one of the predefined values, max size depends on list
);

-- Real-time use case:
-- 1. `ENUM` for status fields like order status (e.g., 'pending', 'shipped', 'delivered') or account type (e.g., 'admin', 'user').
-- 2. `ENUM` can also be used for categories like product types or customer types.

-- Example: Inserting an enum value
INSERT INTO enum_example (color)
VALUES ('green');

-- 6.2 SET Type
-- Used for storing a set of values from a predefined list (allows multiple values)
CREATE TABLE set_example (
    fruit SET('apple', 'banana', 'cherry', 'date')  -- SET: Stores multiple selected values from the list
);

-- Real-time use case:
-- 1. `SET` for storing multiple selected values like user preferences (e.g., selecting multiple hobbies or tags).
-- 2. `SET` can be used for categories or attributes that can have multiple values at once.

-- Example: Inserting a set of values
INSERT INTO set_example (fruit)
VALUES ('apple,banana');

-- ===================================
-- 7. Other Data Types
-- ===================================

-- 7.1 BOOL/BOOLEAN Type
-- Used for storing boolean values (True or False)
CREATE TABLE boolean_example (
    is_active BOOLEAN            -- BOOLEAN: Internally TINYINT(1), 1 byte, stores 0 or 1
);

-- Real-time use case:
-- 1. `BOOLEAN` for flags like user activity status (e.g., `is_active`) or payment status (e.g., `is_paid`).

-- Example: Inserting boolean values
INSERT INTO boolean_example (is_active)
VALUES (TRUE);


-- ===================================
-- Conclusion
-- ===================================
-- This file contains examples of MySQL data types in different categories:
-- - Numeric types: Integer, Floating-point, and Decimal (e.g., for financial data, user IDs).
-- - String types: CHAR, VARCHAR, TEXT types (e.g., for storing product descriptions, user names).
-- - Date and time types: DATE, TIME, DATETIME, and others (e.g., for event scheduling or logging).
-- - Binary data types: BLOB, MEDIUMBLOB, LONGBLOB (e.g., for storing media files like images, audio, video).
-- - JSON, ENUM, and SET types (e.g., for storing dynamic data, categorical data, and multi-choice values).

/*
-- Numeric Data Types
-- Integer Types
TINYINT         -- A very small integer, -128 to 127 (signed) or 0 to 255 (unsigned)
SMALLINT        -- A small integer, -32,768 to 32,767 (signed) or 0 to 65,535 (unsigned)
MEDIUMINT       -- A medium-size integer, -8,388,608 to 8,388,607 (signed) or 0 to 16,777,215 (unsigned)
INT or INTEGER  -- A standard integer, -2,147,483,648 to 2,147,483,647 (signed) or 0 to 4,294,967,295 (unsigned)
BIGINT          -- A large integer, -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed) or 0 to 18,446,744,073,709,551,615 (unsigned)

-- Floating-Point Types
FLOAT           -- A small floating-point number, 4 bytes storage
DOUBLE or DOUBLE PRECISION -- A larger floating-point number, 8 bytes storage
DECIMAL or NUMERIC -- Fixed-point numbers with specified precision and scale

-- Date and Time Data Types
DATE            -- Stores date in the format YYYY-MM-DD
TIME            -- Stores time in the format HH:MM:SS
DATETIME        -- Stores both date and time in the format YYYY-MM-DD HH:MM:SS
TIMESTAMP       -- Stores date and time in Unix timestamp format (seconds since epoch)
YEAR            -- Stores year in 4-digit format YYYY

-- String (Character) Data Types
CHAR            -- Fixed-length string
VARCHAR         -- Variable-length string, can store up to 65,535 characters
TEXT            -- Long text, can store up to 65,535 characters
TINYTEXT        -- Stores up to 255 characters
MEDIUMTEXT      -- Stores up to 16,777,215 characters
LONGTEXT        -- Stores up to 4GB of text

-- Binary Data Types
BINARY          -- Fixed-length binary data
VARBINARY       -- Variable-length binary data
BLOB            -- Binary large object, similar to TEXT but stores binary data
TINYBLOB        -- Stores up to 255 bytes
MEDIUMBLOB      -- Stores up to 16,777,215 bytes
LONGBLOB        -- Stores up to 4GB of binary data

-- JSON Data Type
JSON            -- Stores JSON formatted data

*/
