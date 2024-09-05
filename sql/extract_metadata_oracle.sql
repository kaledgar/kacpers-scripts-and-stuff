/*-----------------------------------------------------
|   Query to extract metadata from Oracle table/ view
-----------------------------------------------------*/

SELECT
    LISTAGG(COLUMN_NAME || ' ' || DATA_TYPE || '(' || DATA_LENGTH || ')', ', ')
WITHIN GROUP (ORDER BY COLUMN_ID) AS COLUMN_INFO
FROM ALL_TAB_COLUMNS@OPTIONAL_DB_LINK -- delete link @link in most cases
WHERE TABLE_NAME = 'TABLE' -- viewname or tablename