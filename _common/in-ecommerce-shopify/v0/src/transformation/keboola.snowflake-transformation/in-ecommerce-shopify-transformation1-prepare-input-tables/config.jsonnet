{
  parameters: {},
  storage: {
    output: {
      tables: [
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".order_tax_lines",
          source: "order_tax_lines",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [
            "order_id",
            "row_nr",
          ],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".line_item_tax_lines",
          source: "line_item_tax_lines",
          primary_key: [
            "row_nr",
            "line_item_id",
          ],
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".fulfillment_line_item_tax_lines",
          source: "fulfillment_line_item_tax_lines",
          primary_key: [
            "row_nr",
            "line_item_id",
          ],
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".customer_addresses",
          source: "customer_addresses",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [
            "id",
            "customer_id",
          ],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".fulfillment_line_item",
          source: "fulfillment_line_item",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".fulfillment_line_item_discount_allocations",
          source: "fulfillment_line_item_discount_allocations",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".line_item_discount_allocations",
          source: "line_item_discount_allocations",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".order_discount_applications",
          source: "order_discount_applications",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".order_discount_codes",
          source: "order_discount_codes",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [],
        },
        {
          destination: "in.c-kds-team-ex-shopify-" + ConfigId("in-ecommerce-shopify-extractor") + ".order_fulfillments",
          source: "order_fulfillments",
          incremental: true,
          delete_where_column: "",
          delete_where_operator: "eq",
          delete_where_values: [],
          primary_key: [],
        },
      ],
    },
  },
}
