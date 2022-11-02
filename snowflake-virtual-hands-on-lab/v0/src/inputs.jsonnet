local snowflake = import "/<common>/out-ecommerce-snowflake/v0/src/inputs.jsonnet";
local shopify = import "/<common>/in-ecommerce-shopify/v0/src/demo_data.jsonnet";
local facebook = import "/<common>/in-ecommerce-facebook/v0/src/inputs.jsonnet";
local googleads = import "/<common>/in-ecommerce-googleads/v0/src/inputs.jsonnet";
local sklik = import "/<common>/in-ecommerce-sklik/v0/src/inputs.jsonnet";

{
  stepsGroups: [
    {
      description: "Source component",
      required: "optional",
      steps: [
        {
          icon: "component:kds-team.ex-shopify",
          name: "Shopify",
          description: "Import demo data from Shopify",
          dialogName: "Shopify Demo Data", 
          dialogDescription: "This source component imports demo Shopify data (orders, products, inventory, etc.).",
          inputs: shopify,
        }
      ]
    },
    {
      description: "Source component",
      required: "optional",
      steps: [
        {
          icon: "component:keboola.ex-facebook-ads",
          name: "Facebook Ads",
          description: "Import data from Facebook Ads",
          dialogName: "Facebook Ads Source", 
          dialogDescription: "This source component imports data from Facebook Ads (monthly insights, and insights for the last 90 days).",
          inputs: facebook
        },
        {
          icon: "component:keboola.ex-google-ads",
          name: "Google Ads",
          description: "Import data from Google Ads",
          dialogName: "Google Ads Source", 
          dialogDescription: "This source component imports data from Google Ads Insights.",
          inputs: googleads
        },
        {
          icon: "component:keboola.ex-sklik",
          name: "Sklik",
          description: "Import data from Sklik",
          dialogName: "Sklik Source", 
          dialogDescription: "This source component imports data from Sklik (monthly and daily insights).",
          inputs: sklik
        }
      ]
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
      description: "Provide credentials for the destination component.",
      required: "all",
      steps: [
          {
          icon: "component:"+SnowflakeWriterComponentId(),
          name: "Snowflake",
          description: "Load data into Snowflake",
          dialogName: "Snowflake Destination", 
          dialogDescription: "Fill your database credentials.",
          inputs: snowflake
        },
      ]
    }
  ]
}
