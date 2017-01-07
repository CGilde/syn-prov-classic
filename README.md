#Classical DB-schema for synonym access from HDI Containter

## Content
Eight tables taken from SAP Netweaver EPM Content (Sales Order Model)

## How to build schema
1. Logon to target system with user SYSTEM or some admin user
2. Open file create_user_schema.sql in SQL console, replace EPM_DEV with target schema, execute file
3. Logon to target system WEB-IDE with EPM_DEV, Pwd 'Grant_123' (or your target schema name in case you replaced EPM_DEV, you could also use HANA Studio, but then you have to execute the statements in several chunks)
4. Open file create_table_insert.sql, replace EPM_DEV with target schema, execute file

Done. Now you have a complete classical DB-schema with some EPM tables, filled with data.

See blogpost https://blogs.sap.com/2017/01/07/synonyms-in-hana-xs-advanced-accessing-objects-in-an-external-schema/
