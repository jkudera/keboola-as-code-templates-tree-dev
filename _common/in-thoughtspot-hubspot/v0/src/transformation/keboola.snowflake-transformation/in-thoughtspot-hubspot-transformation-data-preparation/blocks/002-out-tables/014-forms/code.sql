CREATE OR REPLACE TABLE "FORMS" AS
SELECT "GUID","NAME" AS "FORM_NAME", "ACTION", "SUBMIT_TEXT", "LEAD_NURTURING_CAMPAIGN_ID" FROM "HS_FORMS";
