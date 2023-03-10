{
  storage: {
    input: {
      tables: [
        {
          source: "out.c-ecommerce-wr-" + InstanceIdShort() + ".bdm_analyze_clv_by_order_count",
          destination: "out.c-ecommerce-wr-" + InstanceIdShort() + ".bdm_analyze_clv_by_order_count.csv",
          changed_since: "",
          columns: [
            "CUSTOMER_CATEGORY_BY_ORDER_COUNT",
            "ORDERS",
            "UNIQUE_CUSTOMERS",
            "AVG_CLV",
            "ORDER_TOTAL_PRICE_TAXES",
            "AVG_ORDER_PRICE",
          ],
        },
      ],
    },
  },
  parameters: {
    tables: [
      {
        dbName: "bdm_analyze_clv_by_order_count",
        tableId: "out.c-ecommerce-wr-" + InstanceIdShort() + ".bdm_analyze_clv_by_order_count",
        incremental: false,
        items: [
          {
            name: "CUSTOMER_CATEGORY_BY_ORDER_COUNT",
            dbName: "CUSTOMER_CATEGORY_BY_ORDER_COUNT",
            type: "STRING",
          },
          {
            name: "ORDERS",
            dbName: "ORDERS",
            type: "FLOAT",
          },
          {
            name: "UNIQUE_CUSTOMERS",
            dbName: "UNIQUE_CUSTOMERS",
            type: "FLOAT",
          },
          {
            name: "AVG_CLV",
            dbName: "AVG_CLV",
            type: "FLOAT",
          },
          {
            name: "ORDER_TOTAL_PRICE_TAXES",
            dbName: "ORDER_TOTAL_PRICE_TAXES",
            type: "FLOAT",
          },
          {
            name: "AVG_ORDER_PRICE",
            dbName: "AVG_ORDER_PRICE",
            type: "FLOAT",
          },
        ],
      },
    ],
  },
}
