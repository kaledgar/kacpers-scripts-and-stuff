/*------------------------------------------
|   Requires previously prepared s3 stage
|   DML for copying CSV from S3 to SF.
------------------------------------------*/

COPY INTO TARGET_SCHEMA.TARGET_TABLE
    FROM @SNOWFLAKE_S3_STAGE_NAME/INGESTION_DATA/S3_PATH
    FILE_FORMAT = (
        TYPE = CSV
        PARSE_HEADER = TRUE
        ERROR_ON_COLUMN_COUNT_MISMATCH = FALSE
        FIELD_DELIMITER = ';'
        FIELD_OPTIONALLY_ENCLOSED_BY = '"'
        NULL_IF = ('NULL', '')
    )
    MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE