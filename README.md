# New customers classification

## Dynamic segmentation

- Digital/Scaled/Mid/High

The logic to add the categories will be used to add it based on the crm_account_id

## Churn status and churn date

This was used considering the status at the moment the ticket was created

It was tested to select a random recent date too. I guess both possibilities could work. However, less values were found subsetting the customer table to display one day of data.

- To get the churn status it was better to join on instance_id rather than on crm account id

### References

- Ticket id
13373

- List of tickets with comments where the dynamic segmentation and Churn status should be included

- https://docs.google.com/spreadsheets/d/1QQolh5OBWAu44mh8odlTQ8dlioSBjyvblEc4MaUkA2M/edit#gid=1299009136

- `edw-prod-153420.edw_analyst_general.eda_dse_top100` 
 
