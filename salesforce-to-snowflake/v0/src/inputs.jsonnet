local snowflake = import "/<common>/inputs/snowflake.jsonnet";
local salesforce = import "/<common>/in-crm-salesforce/v0/src/inputs.jsonnet";
{
  stepsGroups: [
    {
      description: "Provide credentials for the source component.",
      required: "all",
      steps: [
        {
          icon: "component:kds-team.ex-salesforce-v2",
          name: "Salesforce",
          description: "Import data from Salesforce",
          dialogName: "Salesforce Source", 
          dialogDescription: "This source component imports data from your Salesforce account (accounts, contacts, events, leads, opportunities, opportunity contact roles, opportunity stages, and users.",
          inputs: salesforce,
        },
      ],
    },
    {   
      description: "Snowflake Transformations",
      required: "all",
      steps: [
        {
          icon: "component:keboola.snowflake-transformation",
          name: "Snowflake SQL",
          description: "Transformations",
          inputs: [],
        },
      ]
    },
    {
      description: "Destination component",
      required: "all",
      steps: [
          {
          icon: "component:keboola.wr-snowflake-blob-storage",
          name: "Snowflake",
          description: "Load data into Snowflake",
          dialogName: "Snowflake Destination", 
          dialogDescription: "Fill your database credentials. Don’t have your own data warehouse? No worries, follow [these instructions](https://docs.google.com/document/d/1_7DRa7KdeXT1ZZ22ENDxW4fDO1BL_n8uTqhiSQms2pE).",
          inputs: snowflake,
        },
      ],
    },
  ],
}
