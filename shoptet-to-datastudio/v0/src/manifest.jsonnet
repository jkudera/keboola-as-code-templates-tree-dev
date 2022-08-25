{ mainConfig: {
    componentId: "keboola.orchestrator",
    id: ConfigId("keboola-ecommerce-shoptet-orchestration"),
  },
  configurations: std.filter(function(v) v != null,[
    {
      componentId: "keboola.orchestrator",
      id: ConfigId("keboola-ecommerce-shoptet-orchestration"),
      path: "other/keboola.orchestrator/keboola-ecommerce-shoptet-orchestration",
      rows: [],
    },
    {
      componentId: "kds-team.ex-shoptet-permalink",
      id: ConfigId("in-ecommerce-shoptet-extractor"),
      path: "<common>/in-ecommerce-shoptet/v0/src/extractor/kds-team.ex-shoptet-permalink/in-ecommerce-shoptet-extractor",
      rows: [],
    },
    {
      componentId: "keboola.snowflake-transformation",
      id: ConfigId("in-ecommerce-shoptet-transformation1-data-preparation"),
      path: "<common>/in-ecommerce-shoptet/v0/src/transformation/keboola.snowflake-transformation/in-ecommerce-shoptet-transformation1-data-preparation",
      rows: [],
      metadata: { "KBC.configuration.folderName": "[ECOMMERCE-SHOPTET]"}
    },
    {
      componentId: "keboola.snowflake-transformation",
      id: ConfigId("in-ecommerce-shoptet-transformation2-rfm-analysis"),
      path: "<common>/in-ecommerce-shoptet/v0/src/transformation/keboola.snowflake-transformation/in-ecommerce-shoptet-transformation2-rfm-analysis",
      rows: [],
      metadata: { "KBC.configuration.folderName": "[ECOMMERCE-SHOPTET]"}
    },
    if InputIsAvailable("oauth-facebookads") then
    {
      componentId: "keboola.ex-facebook-ads",
      id: ConfigId("in-ecommerce-facebook-extractor"),
      path: "<common>/in-ecommerce-facebook/v0/src/extractor/keboola.ex-facebook-ads/in-ecommerce-facebook-extractor",
      rows: [],
    },
    if InputIsAvailable("oauth-facebookads") then
    {
      componentId: "keboola.snowflake-transformation",
      id: ConfigId("in-ecommerce-facebook-transformation"),
      path: "<common>/in-ecommerce-facebook/v0/src/transformation/keboola.snowflake-transformation/in-ecommerce-facebook-transformation",
      rows: [],
      metadata: { "KBC.configuration.folderName": "[ECOMMERCE-SHOPTET]"}
    },
    if InputIsAvailable("oauth-googleads") then
    {
      componentId: "keboola.ex-google-ads",
      id: ConfigId("in-ecommerce-googleads-extractor"),
      path: "<common>/in-ecommerce-googleads/v0/src/extractor/keboola.ex-google-ads/in-ecommerce-googleads-extractor",
      rows: [
        {
          id: ConfigRowId("campaign"),
          path: "rows/campaign",
        },
      ],
    },
    if InputIsAvailable("oauth-googleads") then
    {
      componentId: "keboola.snowflake-transformation",
      id: ConfigId("in-ecommerce-googleads-transformation"),
      path: "<common>/in-ecommerce-googleads/v0/src/transformation/keboola.snowflake-transformation/in-ecommerce-googleads-transformation",
      rows: [],
      metadata: { "KBC.configuration.folderName": "[ECOMMERCE-SHOPTET]"}
    },
    if InputIsAvailable("ex-sklik-token") then
    {
      componentId: "keboola.ex-sklik",
      id: ConfigId("in-ecommerce-sklik-extractor"),
      path: "<common>/in-ecommerce-sklik/v0/src/extractor/keboola.ex-sklik/in-ecommerce-sklik-extractor",
      rows: [],
    },
    if InputIsAvailable("ex-sklik-token") then
    {
      componentId: "keboola.snowflake-transformation",
      id: ConfigId("in-ecommerce-sklik-transformation"),
      path: "<common>/in-ecommerce-sklik/v0/src/transformation/keboola.snowflake-transformation/in-ecommerce-sklik-transformation",
      rows: [],
      metadata: { "KBC.configuration.folderName": "[ECOMMERCE-SHOPTET]"}
    },
    if InputIsAvailable("data-studio-gsheet-id") then
    {
      componentId: "keboola.snowflake-transformation",
      id: ConfigId("gsheet-datastudio-transformation"),
      path: "<common>/out-ecommerce-gsheet-datastudio/v0/src/transformation/keboola.snowflake-transformation/gsheet-datastudio-transformation",
      rows: [],
      metadata: { "KBC.configuration.folderName": "[ECOMMERCE-SHOPIFY]"}
    },
    if InputIsAvailable("data-studio-gsheet-id") then
    {
      componentId: "keboola.wr-google-sheets",
      id: ConfigId("gsheet-datastudio"),
      path: "<common>/out-ecommerce-gsheet-datastudio/v0/src/writer/keboola.wr-google-sheets/gsheet-datastudio",
      rows: []
    },
  ],)
}
