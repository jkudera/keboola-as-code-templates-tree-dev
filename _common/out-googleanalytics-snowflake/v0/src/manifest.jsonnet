{
  configurations: [
    {
      componentId: SnowflakeWriterComponentId(),
      id: ConfigId("out-googleanalytics-snowflake-writer"),
      path: "writer/keboola.wr-snowflake/out-googleanalytics-snowflake-writer",
      rows: [
        {
          id: ConfigRowId("ga-ad-analytics"),
          path: "rows/ga-ad-analytics",
        },
        {
          id: ConfigRowId("ga-demographic-audience"),
          path: "rows/ga-demographic-audience",
        },
        {
          id: ConfigRowId("ga-geo-audience"),
          path: "rows/ga-geo-audience",
        },
        {
          id: ConfigRowId("ga-site-statistics"),
          path: "rows/ga-site-statistics",
        },
        {
          id: ConfigRowId("ga-traffic-source"),
          path: "rows/ga-traffic-source",
        },
        {
          id: ConfigRowId("raw-page-behaviour"),
          path: "rows/raw-page-behaviour",
        },
        {
          id: ConfigRowId("gsc_ranking"),
          path: "rows/gsc_ranking",
        },
      ],
    },
  ],
}
