-- Database: crowdfunding_db

-- DROP DATABASE IF EXISTS crowdfunding_db;

CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE crowdfunding_db
    IS 'Created for UC Berkeley data science bootcamp Project 2.';