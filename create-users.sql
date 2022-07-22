CREATE USER global_admin WITH SUPERUSER CREATEDB CREATEROLE REPLICATION ENCRYPTED PASSWORD 'qwerty';

CREATE USER db_full_admin WITH ENCRYPTED PASSWORD 'fulladmin';
GRANT ALL ON DATABASE postgres TO db_full_admin;

CREATE USER db_admin WITH ENCRYPTED PASSWORD 'notfull';
GRANT SELECT, INSERT, UPDATE, DELETE ON info_main, instructors, members, memberships, system_users, visits TO db_admin;

CREATE USER table_admin WITH ENCRYPTED PASSWORD 'tableadmin';
GRANT SELECT, INSERT, UPDATE, DELETE ON visits, memberships TO table_admin;

CREATE USER "user" WITH ENCRYPTED PASSWORD '123456';
GRANT SELECT ON info_main, instructors, members, memberships, system_users, visits TO "user";
