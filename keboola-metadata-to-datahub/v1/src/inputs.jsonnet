{
  stepsGroups: [
    {
      description: "Question",
      required: "all",
      steps: [
        {
          icon: "common:settings",
          name: "More information",
          description: "About Telemetry and Metadata",
          dialogName: "Telemetry and Metadata",
          dialogDescription: "Do you already have Telemetry and Metadata configurations? If no, we will create them for you. If yes, please, tell us the bucket name, they are in.",
          inputs: [
            {
              id: "own-data-source",
              name: "Existing configurations",
              description: "Do you regularly extract data from Telemetry and Metadata?",
              type: "string",
              kind: "select",
              rules: "required",
              options:[
                {
                  value: 'YES',
                  label:'YES'
                },
                {
                  value: 'NO',
                  label:'NO'
                },
              ],
            },
            {
              id: "ex-kbc-project-metadata-v2-tokens-0-key",
              name: "Storage Token",
              description: "Insert Storage Token from your project.",
              type: "string",
              kind: "hidden",
              rules: "required",
              showif: "[own-data-source] == 'NO'",
            },
            {
              id: "metadata-folder",
              name: "Metadata Bucket",
              description: "Insert the bucket name of the data from Metadata data source",
              type: "string",
              kind: "input",
              rules: "required",
              default: "kds-team-ex-kbc-project-metadata-v2-12345678",
              showif: "[own-data-source] == 'YES'",
            },
            {
              id: "telemetry-folder",
              name: "Telemetry Bucket",
              description: "Insert the bucket name of the data extracted from Telemetry.",
              type: "string",
              kind: "input",
              rules: "required",
              default: "keboola-ex-telemetry-data-12345678",
              showif: "[own-data-source] == 'YES'",
            },
          ],
        },
      ],
    },
    {
      description: "Data Source",
      required: "all",
      steps: [
        {
          icon: "component:kds-team.ex-kbc-project-metadata-v2",
          name: "KBC Project Metadata",
          description: "KBC Project Metadata - Data Source",
          dialogName: "KBC Project Metadata",
          dialogDescription: "This data source is getting data about your Keboola project.",
          inputs: []
        },
        {
          icon: "component:keboola.ex-telemetry-data",
          name: "Telemetry data",
          description: "Telemetry data - Data Source",
          dialogName: "Telemetry - Data Source",
          dialogDescription: "This data source is getting data about your Keboola project.",
          inputs: [],
        },
      ],
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
      description: "Data Destination",
      required: "all",
      steps: [
         {
          icon: "component:kds-team.app-datahub",
          name: "DataHub",
          description: "The metadata platform for modern data stack",
          dialogName: "DataHub application", 
          dialogDescription: "Use the metadata platform for modern data stack which will help you to have your data organized.",
          inputs:[
            {
              id: "app-datahub-datahub-token",
              name: "Datahub Token",
              description: "Insert your Datahub Token",
              type: "string",
              kind: "hidden",
              rules: "required"
            },
            {
              id: "app-datahub-server-address",
              name: "Datahub server address",
              description: "Set URL or IP in format (http://IP:PORT)",
              type: "string",
              kind: "input",
              default: "URL",
            },
          ],
        },
      ]
    }
  ],
}
