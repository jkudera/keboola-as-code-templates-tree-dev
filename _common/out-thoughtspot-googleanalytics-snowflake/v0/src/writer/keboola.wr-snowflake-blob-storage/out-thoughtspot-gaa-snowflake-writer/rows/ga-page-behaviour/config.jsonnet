{
  parameters: {
    dbName: "ga_page_behaviour",
    tableId: "out.c-thoughtspot-wr-" + InstanceIdShort() + ".ga_page_behaviour",
    incremental: false,
    primaryKey: [
      "id_TBE",
    ],
    items: [
      {
        name: "id_TBE",
        dbName: "id_TBE",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_date",
        dbName: "ga_date",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_hostname",
        dbName: "ga_hostname",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_pagePath",
        dbName: "ga_pagePath",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_landingPagePath",
        dbName: "ga_landingPagePath",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_secondPagePath",
        dbName: "ga_secondPagePath",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_exitPagePath",
        dbName: "ga_exitPagePath",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_pageTitle",
        dbName: "ga_pageTitle",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_source",
        dbName: "ga_source",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_country",
        dbName: "ga_country",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_sessions",
        dbName: "ga_sessions",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_entrances",
        dbName: "ga_entrances",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_pageviews",
        dbName: "ga_pageviews",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_timeOnPage",
        dbName: "ga_timeOnPage",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_exits",
        dbName: "ga_exits",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
      {
        name: "ga_pageValue",
        dbName: "ga_pageValue",
        type: "string",
        nullable: false,
        default: "",
        size: "16777216",
      },
    ],
  },
  storage: {
    input: {
      tables: [
        {
          source: "out.c-thoughtspot-wr-" + InstanceIdShort() + ".ga_page_behaviour",
          destination: "out.c-thoughtspot-wr-" + InstanceIdShort() + ".ga_page_behaviour.csv",
          columns: [
            "id_TBE",
            "ga_date",
            "ga_hostname",
            "ga_pagePath",
            "ga_landingPagePath",
            "ga_secondPagePath",
            "ga_exitPagePath",
            "ga_pageTitle",
            "ga_source",
            "ga_country",
            "ga_sessions",
            "ga_entrances",
            "ga_pageviews",
            "ga_timeOnPage",
            "ga_exits",
            "ga_pageValue",
          ],
        },
      ],
    },
  },
}
