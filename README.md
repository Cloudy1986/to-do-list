# To do list manager

## Set up database

Instructions for setting up the development database:
1. `psql`
2. `CREATE DATABASE to_do_database;`
3. `\c to_do_database;`
4. `CREATE TABLE tasks (id SERIAL PRIMARY KEY, title VARCHAR(100));`

Instructions for setting up the test database:
1. `psql`
2. `CREATE DATABASE to_do_database_test;`
3. `\c to_do_database_test;`
4. `CREATE TABLE tasks (id SERIAL PRIMARY KEY, title VARCHAR(100));`
