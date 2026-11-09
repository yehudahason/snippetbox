-- =========================================
-- DATABASES
-- =========================================

CREATE DATABASE IF NOT EXISTS snippetbox
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS test_snippetbox
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


-- =========================================
-- DATABASE USERS
-- =========================================

CREATE USER IF NOT EXISTS 'web'@'%'
IDENTIFIED BY 'pass';

CREATE USER IF NOT EXISTS 'test_web'@'%'
IDENTIFIED BY 'pass';


-- =========================================
-- PERMISSIONS
-- =========================================

GRANT SELECT, INSERT, UPDATE, DELETE
ON snippetbox.*
TO 'web'@'%';

GRANT CREATE, DROP, ALTER, INDEX,
SELECT, INSERT, UPDATE, DELETE
ON test_snippetbox.*
TO 'test_web'@'%';


-- =========================================
-- MAIN APPLICATION DATABASE
-- =========================================

USE snippetbox;

CREATE TABLE IF NOT EXISTS snippets (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    created DATETIME NOT NULL,
    expires DATETIME NOT NULL,

    INDEX idx_snippets_created (created)
);

CREATE TABLE IF NOT EXISTS users (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    hashed_password CHAR(60) NOT NULL,
    created DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS sessions (
    token CHAR(43) PRIMARY KEY,
    data BLOB NOT NULL,
    expiry TIMESTAMP(6) NOT NULL,

    INDEX sessions_expiry_idx (expiry)
);