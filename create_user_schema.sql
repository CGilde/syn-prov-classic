-- 1. Replace EPM_DEV in the whole file with the schema you want to create
-- 2. Logon with user System or similar Admin-user and execute the next  statements

-- create User and schema  
  drop user EPM_DEV cascade;
  create user EPM_DEV password "Grant_123" NO FORCE_FIRST_PASSWORD_CHANGE;
  
  
-- Allow access to WEB-IDE, create role other priv. if needed
  CALL _SYS_REPO.GRANT_ACTIVATED_ROLE ('sap.hana.xs.ide.roles::CatalogDeveloper', 'EPM_DEV');
  GRANT ROLE ADMIN TO EPM_DEV;

    
-- 3. Logon with User EPM_DEV to WEB-IDE catalog and execute create_table_insert.sql
--    http://ld9551:8000/sap/hana/ide/catalog/ (replace ld9551 with host, 8000 with 80<instance> )