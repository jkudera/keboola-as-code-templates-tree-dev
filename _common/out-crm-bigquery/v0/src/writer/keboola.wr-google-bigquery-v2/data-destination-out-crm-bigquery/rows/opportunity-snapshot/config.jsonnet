{
  storage: {
    input: {
      tables: [
        {
          source: "out.c-crm-wr-" + InstanceIdShort() + ".opportunity_snapshot",
          destination: "out.c-crm-wr-" + InstanceIdShort() + ".opportunity_snapshot.csv",
          changed_since: "adaptive",
          columns: [
            "opportunity_id",
            "snapshot_date",
            "employee_id",
            "company_id",
            "pipeline",
            "previous_pipeline",
            "pipeline_change",
            "stage",
            "stage_order",
            "previous_stage",
            "previous_stage_order",
            "stage_change",
            "opportunity_value",
            "previous_opportunity_value",
            "opportunity_value_change",
            "probability",
            "previous_probability",
            "probability_change",
            "max_date_in_month",
          ],
        },
      ],
    },
  },
  parameters: {
    tables: [
      {
        dbName: "opportunity_snapshot",
        tableId: "out.c-crm-wr-" + InstanceIdShort() + ".opportunity_snapshot",
        incremental: true,
        items: [
          {
            name: "opportunity_id",
            dbName: "opportunity_id",
            type: "STRING",
          },
          {
            name: "snapshot_date",
            dbName: "snapshot_date",
            type: "STRING",
          },
          {
            name: "employee_id",
            dbName: "employee_id",
            type: "STRING",
          },
          {
            name: "company_id",
            dbName: "company_id",
            type: "STRING",
          },
          {
            name: "pipeline",
            dbName: "pipeline",
            type: "STRING",
          },
          {
            name: "previous_pipeline",
            dbName: "previous_pipeline",
            type: "STRING",
          },
          {
            name: "pipeline_change",
            dbName: "pipeline_change",
            type: "STRING",
          },
          {
            name: "stage",
            dbName: "stage",
            type: "STRING",
          },
          {
            name: "stage_order",
            dbName: "stage_order",
            type: "STRING",
          },
          {
            name: "previous_stage",
            dbName: "previous_stage",
            type: "STRING",
          },
          {
            name: "previous_stage_order",
            dbName: "previous_stage_order",
            type: "STRING",
          },
          {
            name: "stage_change",
            dbName: "stage_change",
            type: "STRING",
          },
          {
            name: "opportunity_value",
            dbName: "opportunity_value",
            type: "STRING",
          },
          {
            name: "previous_opportunity_value",
            dbName: "previous_opportunity_value",
            type: "STRING",
          },
          {
            name: "opportunity_value_change",
            dbName: "opportunity_value_change",
            type: "STRING",
          },
          {
            name: "probability",
            dbName: "probability",
            type: "STRING",
          },
          {
            name: "previous_probability",
            dbName: "previous_probability",
            type: "STRING",
          },
          {
            name: "probability_change",
            dbName: "probability_change",
            type: "STRING",
          },
          {
            name: "max_date_in_month",
            dbName: "max_date_in_month",
            type: "STRING",
          },
        ],
      },
    ],
  },
}
