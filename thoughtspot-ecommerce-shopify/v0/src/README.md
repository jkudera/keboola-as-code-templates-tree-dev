The process is simple. We will guide you through it, and, when needed, ask you to provide your credentials and authorize the destination component.

The flow, in a nutshell:

- First, the Shopify source component will collect data from your Shopify account (data about orders, products, inventory, and customers). You can also bring in marketing data from your Facebook Ads, Google Ads, and/or Sklik accounts.

- We then create the output tables. We add NULL values if any columns are missing, check the data, and perform a stand-alone analysis and then an RFM analysis.

- Then you select a destination component that will load your data into a Snowflake database or a Google BigQuery dataset.

- Finally, you will schedule and run the entire flow (i.e., the sequence of all the prepared, above mentioned steps, in the correct order). The Shopify source component, all data manipulations and analyses, and the selected destination component, will be processed.

- At this point, your data will be prepared to be loaded into SpotApps as a reporting source. Once you are in SpotApps, enter the credentials of the database where you store your newly created data, and you can start using your reporting right away.

