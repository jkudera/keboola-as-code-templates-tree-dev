local typeform = import "/<common>/in-typeform/inputs.jsonnet";
local kbc_snowflake = import "/<common>/inputs/keboolasnowflakev2.jsonnet";
{
  stepsGroups: [
    {
      description: "Provide credentials for the source component.",
      required: "all",
      steps: [
        {
          icon: "component:fisa.ex-typeform",
          name: "Typeform",
          description: "Import data from Typeform",
          dialogName: "Typeform Source", 
          dialogDescription: "This source component imports data from Typeform (list of forms, basic form statistics, list of questions and responses). Enter your Typeform API token to start loading.",
          inputs: typeform,
        }
      ]
    },
    {   
      description: "Snowflake Transformation",
      required: "all",
      steps: [
        {
          icon: "component:keboola.snowflake-transformation",
          name: "Snowflake SQL",
          description: "Transformation",
          inputs: [],
        },
      ]
    },
    {
      description: "Destination component.",
      required: "all",
      steps: [
         {
          icon: "component:"+SnowflakeWriterComponentId(),
          name: "Keboola Snowflake",
          description: "Keboola - managed Snowflake",
          dialogName: "Keboola Snowflake", 
          dialogDescription: "You don't need your own DWH. After setting up the template, go to configuration of Snowflake Data Destination and select Keboola provided database when setting up credentials.",
          inputs: kbc_snowflake
        },
      ]
    },
  ],
}
