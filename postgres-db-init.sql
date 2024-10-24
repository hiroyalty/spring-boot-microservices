---- Create the database if it doesn't exist
--DO $$
--BEGIN
--   IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'students') THEN
--      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE students');
--   END IF;
--   IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'schools') THEN
--      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE schools');
--   END IF;
--END
--$$;
--
---- Create the user if it doesn't exist and grant privileges
--DO $$
--BEGIN
--   IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'gbolaga') THEN
--      CREATE ROLE gbolaga WITH LOGIN PASSWORD 'ayokunle';
--   END IF;
--END
--$$;
--
---- Grant privileges to the user on the database
--GRANT ALL PRIVILEGES ON DATABASE students TO gbolaga;
--GRANT ALL PRIVILEGES ON DATABASE schools TO gbolaga;
--
--
