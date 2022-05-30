CREATE OR REPLACE TABLE "MARKETING_EMAIL_EVENTS" AS
SELECT E."APP_ID",E."APP_NAME", 
CASE WHEN E."CREATED" <> '' THEN DATEADD('MS',E."CREATED",'1970-01-01') ELSE NULL END AS "CREATED", 
E."EMAIL_CAMPAIGN_ID", E."ID", E."PORTAL_ID", E."RECIPIENT", E."TYPE", 
CASE WHEN E."SENT_BY_CREATED" <> '' THEN DATEADD('MS',E."SENT_BY_CREATED",'1970-01-01') ELSE NULL END AS "SENT_BY_CREATED", 
E."SENT_BY_ID", E."BROWSER_NAME", E."LOCATION_CITY",
E."LOCATION_COUNTRY", E."LOCATION_STATE", E."USER_AGENT", E."DURATION", E."SOURCE", E."PORTAL_SUBSCRIPTION_STATUS",
E."ATTEMPT", E."RESPONSE",E."URL", E."SUBJECT", E."FROM" AS "FROM_EMAIL", E."DROP_MESSAGE", E."CAUSED_BY_ID",
IFF(NULLIF(CON."TOTAL_REVENUE",'') > 0 AND E.TYPE='SENT' AND NULLIF(CON."FIRST_DEAL_CREATED_DATE",'') > (CASE WHEN E."CREATED" <> '' THEN DATEADD('MS',E."CREATED",'1970-01-01') ELSE NULL END),1,0)  AS "PRE_CUSTOMER_MARKETING_EMAIL",
CASE WHEN E."CREATED" <> '' THEN TO_DATE(DATEADD('MS',E."CREATED",'1970-01-01')) ELSE NULL END AS "CREATED_AT_DATE",
CASE WHEN E."CREATED" <> '' THEN TO_TIME(DATEADD('MS',E."CREATED",'1970-01-01')) ELSE NULL END AS "CREATED_AT_TIME"
FROM "HS_EMAIL_EVENTS" E
LEFT JOIN "HS_CONTACTS" CON 
ON E."RECIPIENT"=CON."EMAIL";