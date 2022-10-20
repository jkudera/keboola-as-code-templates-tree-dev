[
  {
    id: "wr-snowflake-selection",
    name: "Got it!",
    description: "If needed, click the Support Button!",
    type: "bool",
    kind: "confirm",
    rules: "required",
  },
  {
    id: "wr-snowflake-db-host",
    name: "Hostname",
    description: "Insert database hostname",
    type: "string",
    kind: "input",
    showif: "[wr-snowflake-selection] == 'TEST'",
  },
  {
    id: "wr-snowflake-db-port",
    name: "Port",
    description: "Insert database port number.",
    type: "string",
    kind: "input",
    showif: "[wr-snowflake-selection] == 'TEST'",
  },
  {
    id: "wr-snowflake-db-user",
    name: "Username",
    description: "Insert database username.",
    type: "string",
    kind: "input",
    showif: "[wr-snowflake-selection] == 'TEST'",
  },
  {
    id: "wr-snowflake-db-password",
    name: "Database Password",
    description: "Insert your password to the database.",
    showif: "[wr-snowflake-selection] == 'TEST'",
    type: "string",
    kind: "input",
  },
  {
    id: "wr-snowflake-db-database",
    name: "Database Name",
    description: "Insert name of your database.",
    type: "string",
    kind: "input",
    showif: "[wr-snowflake-selection] == 'TEST'",
  },
  {
    id: "wr-snowflake-db-schema",
    name: "Schema",
    description: "Insert database schema.",
    type: "string",
    kind: "input",
    showif: "[wr-snowflake-selection] == 'TEST'",
  },
  {
    id: "wr-snowflake-db-warehouse",
    name: "Warehouse",
    description: "Insert database warehouse.",
    type: "string",
    kind: "input",
    showif: "[wr-snowflake-selection] == 'TEST'",
  }
]