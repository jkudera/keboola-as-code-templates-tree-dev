{
  parameters: {},
  storage: {
    input: {
      tables: [
        {
          columns: [],
          destination: "activities",
          source: "in.c-crm.activities",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "companies",
          source: "in.c-crm.companies",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "contacts",
          source: "in.c-crm.contacts",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "deals",
          source: "in.c-crm.deals",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "deals_companies",
          source: "in.c-crm.deals_companies",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "deals_contacts_list",
          source: "in.c-crm.deals_contacts_list",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "owners",
          source: "in.c-crm.owners",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "pipelines",
          source: "in.c-crm.pipelines",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
        {
          columns: [],
          destination: "stages",
          source: "in.c-crm.stages",
          where_column: "",
          where_operator: "eq",
          where_values: [],
        },
      ],
    },
    output: {
      tables: [
        {
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          destination: "out.c-crm-bdm.company",
          incremental: true,
          primary_key: [
            "company_id",
          ],
          source: "out_company",
        },
        {
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          destination: "out.c-crm-bdm.contact",
          incremental: true,
          primary_key: [
            "contact_id",
          ],
          source: "out_contact",
        },
        {
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          destination: "out.c-crm-bdm.employee",
          incremental: true,
          primary_key: [
            "employee_id",
          ],
          source: "out_employee",
        },
        {
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          destination: "out.c-crm-bdm.opportunity",
          incremental: true,
          primary_key: [
            "opportunity_id",
          ],
          source: "out_opportunity",
        },
        {
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          destination: "out.c-crm-bdm.opportunity_snapshot",
          incremental: true,
          primary_key: [
            "opportunity_id",
            "snapshot_date",
          ],
          source: "out_opportunity_snapshot",
        },
        {
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          destination: "out.c-crm-bdm.activity",
          incremental: true,
          primary_key: [
            "activity_id",
          ],
          source: "out_activity",
        },
        {
          destination: "out.c-crm-bdm.opportunity_contact",
          primary_key: [
            "opportunity_contact_id",
          ],
          source: "out_opportunity_contact",
        },
      ],
    },
  },
}