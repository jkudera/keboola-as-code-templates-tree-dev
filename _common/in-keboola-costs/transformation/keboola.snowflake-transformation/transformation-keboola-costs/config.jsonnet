{
  parameters: {},
  storage: {
    input: {
      tables: [
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_usage_metrics_values",
          destination: "kbc_usage_metrics_values",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_component_configuration_version",
          destination: "kbc_component_configuration_version",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_snowflake_stats",
          destination: "kbc_snowflake_stats",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_component_configuration",
          destination: "kbc_component_configuration",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_bucket_snapshot",
          destination: "kbc_bucket_snapshot",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_project",
          destination: "kbc_project",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_project_snapshot",
          destination: "kbc_project_snapshot",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_job",
          destination: "kbc_job",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_project_user",
          destination: "kbc_project_user",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".kbc_table_snapshot",
          destination: "kbc_table_snapshot",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "in.c-keboola-ex-telemetry-data-" + ConfigId("telemetry-activity-center-project") + ".security_event",
          destination: "security_event",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
      ],
    },
    output: {
      tables: [
        {
          destination: "out.c-keboola-costs.components",
          source: "out_components",
          primary_key: [
            "component_id",
          ],
        },
        {
          destination: "out.c-keboola-costs.configurations",
          source: "out_configurations",
          primary_key: [
            "component_configuration_branch_id",
          ],
        },
        {
          destination: "out.c-keboola-costs.configurations_versions",
          source: "out_configurations_versions",
          primary_key: [
            "component_configuration_branch_version_id",
          ],
        },
        {
          destination: "out.c-keboola-costs.jobs",
          source: "out_jobs",
          primary_key: [
            "job_id",
          ],
        },
        {
          destination: "out.c-keboola-costs.snowflake_statistics",
          source: "out_snowflake",
          primary_key: [
            "snowflake_job_id",
          ],
        },
        {
          destination: "out.c-keboola-costs.projects",
          source: "out_projects",
          primary_key: [
            "project_id",
          ],
        },
        {
          destination: "out.c-keboola-costs.users",
          source: "out_users",
          primary_key: [
            "user_id",
          ],
        },
      ],
    },
  },
}
