[
  {
    id: "demo-data",
    name: "Demo data usage",
    description: "Confirm usage of demo data.",
    type: "bool",
    kind: "confirm",
  },
  {
    id: "ex-shopify-api-token",
    name: "Admin API access token",
    description: "Admin API access token of your Shopify custom app.",
    type: "string",
    kind: "hidden",
    showif: "[demo-data] == 'show'",
  },
  {
    id: "ex-shopify-shop",
    name: "Shop name",
    description: "Insert shop id found in url, e.g. [shop_id].myshopify.com",
    type: "string",
    kind: "input",
    deafult: "shop name",
    showif: "[demo-data] == 'show'",
  },
  {
    id: "ex-shopify-period-from-date",
    name: "Period from date [incl.]",
    description: "Select period from which you want to get the data.",
    type: "string",
    kind: "select",
    showif: "[demo-data] == 'show'",
    default: '6 months ago',
    options: [
      {
        value: '1 month ago',
        label: '1 month ago',
      },
      {
        value: '2 months ago',
        label: '2 months ago',
      },
      {
        value: '3 months ago',
        label: '3 months ago',
      },
      {
        value: '6 months ago',
        label: '6 months ago',
      },
    ],
  },
  {
    id: "ex-shopify-period-to-date",
    name: "Period to date [excl.]",
    description: "Select period to date you want to get the data.",
    type: "string",
    kind: "select",
    showif: "[demo-data] == 'show'",
    default: '1 day ago',
    options: [
      {
        value: 'now',
        label: 'now',
      },
      {
        value: '1 day ago',
        label: '1 day ago',
      },
      {
        value: '1 week ago',
        label: '1 week ago',
      },
    ],
  },
]