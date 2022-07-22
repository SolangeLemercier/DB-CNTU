REASSIGN OWNED BY table_admin TO postgres;
DROP OWNED BY table_admin;
DROP USER table_admin;

REASSIGN OWNED BY db_full_admin TO postgres;
DROP OWNED BY db_full_admin;
DROP USER db_full_admin;

REASSIGN OWNED BY db_admin TO postgres;
DROP OWNED BY db_admin;
DROP USER db_admin;

REASSIGN OWNED BY global_admin TO postgres;
DROP OWNED BY global_admin;
DROP USER global_admin;

REASSIGN OWNED BY "user" TO postgres;
DROP OWNED BY "user";
DROP USER "user";
