{
  parameters: {
    tableId: "out.c-beer-demo.sales",
    dbName: "sales",
    incremental: false,
    primaryKey: [
      "ORDER_NO",
      "ORDER_LINE",
    ],
    items: [
      {
        name: "BEER_ID",
        dbName: "BEER_ID",
        type: "NUMERIC",
        nullable: true,
        default: "",
        size: "24,5",
      },
      {
        name: "BEER_NAME",
        dbName: "BEER_NAME",
        type: "VARCHAR",
        nullable: true,
        default: "",
        size: "65535",
      },
      {
        name: "BEER_STYLE",
        dbName: "BEER_STYLE",
        type: "VARCHAR",
        nullable: true,
        default: "",
        size: "65535",
      },
      {
        name: "ABV",
        dbName: "ABV",
        type: "NUMERIC",
        nullable: true,
        default: "",
        size: "14,8",
      },
      {
        name: "IBU",
        dbName: "IBU",
        type: "NUMERIC",
        nullable: true,
        default: "",
        size: "14,8",
      },
      {
        name: "BITTERNESS",
        dbName: "BITTERNESS",
        type: "VARCHAR",
        nullable: true,
        default: "",
        size: "65535",
      },
      {
        name: "OUNCES",
        dbName: "OUNCES",
        type: "NUMERIC",
        nullable: true,
        default: "",
        size: "14,8",
      },
      {
        name: "BREWERY_ID",
        dbName: "BREWERY_ID",
        type: "INT",
        nullable: true,
        default: "",
        size: "",
      },
      {
        name: "BREWERY_NAME",
        dbName: "BREWERY_NAME",
        type: "VARCHAR",
        nullable: true,
        default: "",
        size: "65535",
      },
      {
        name: "BREWERY_CITY",
        dbName: "BREWERY_CITY",
        type: "VARCHAR",
        nullable: true,
        default: "",
        size: "65535",
      },
      {
        name: "BREWERY_STATE",
        dbName: "BREWERY_STATE",
        type: "VARCHAR",
        nullable: true,
        default: "",
        size: "65535",
      },
      {
        name: "BREWERY_COUNTRY",
        dbName: "BREWERY_COUNTRY",
        type: "VARCHAR",
        nullable: true,
        default: "",
        size: "3",
      },
      {
        name: "ORDER_NO",
        dbName: "ORDER_NO",
        type: "INT",
        nullable: true,
        default: "",
        size: "",
      },
      {
        name: "ORDER_LINE",
        dbName: "ORDER_LINE",
        type: "INT",
        nullable: true,
        default: "",
        size: "",
      },
      {
        name: "ORDER_CREATED_AT",
        dbName: "ORDER_CREATED_AT",
        type: "DATE",
        nullable: true,
        default: "",
        size: "",
      },
      {
        name: "ORDER_LI_QUANTITY",
        dbName: "ORDER_LI_QUANTITY",
        type: "INT",
        nullable: true,
        default: "",
        size: "",
      },
      {
        name: "ORDER_LI_PRICE_EACH",
        dbName: "ORDER_LI_PRICE_EACH",
        type: "NUMERIC",
        nullable: true,
        default: "",
        size: "25,6",
      },
      {
        name: "ORDER_LI_PRICE_TOTAL",
        dbName: "ORDER_LI_PRICE_TOTAL",
        type: "NUMERIC",
        nullable: true,
        default: "",
        size: "38,6",
      },
    ],
  },
  storage: {
    input: {
      tables: [
        {
          source: "out.c-beer-demo.sales",
          destination: "out.c-beer-demo.sales.csv",
          columns: [
            "BEER_ID",
            "BEER_NAME",
            "BEER_STYLE",
            "ABV",
            "IBU",
            "BITTERNESS",
            "OUNCES",
            "BREWERY_ID",
            "BREWERY_NAME",
            "BREWERY_CITY",
            "BREWERY_STATE",
            "BREWERY_COUNTRY",
            "ORDER_NO",
            "ORDER_LINE",
            "ORDER_CREATED_AT",
            "ORDER_LI_QUANTITY",
            "ORDER_LI_PRICE_EACH",
            "ORDER_LI_PRICE_TOTAL",
          ],
        },
      ],
    },
  },
}
