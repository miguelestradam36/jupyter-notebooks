# Data Documentation :file_folder:

## About Sqlite usage on this project :books:

Review some about how the connection with the snowflake database is established with this python connector.

- [x] Indexed tables
- [x] Relational Database Model
- [x] Easy to move around

## SQLITE3 Architecture

![Sqlite3 logo](../img/sqlite3.png)

### Tables included

| Table | Primary Key |
| ----------- | ----------- |
| Clients | ClientID |
| Colors | ColorID |
| Countries | CountryID |
| DateDimension | DateKey |
| InvoiceLines | InvoiceLineID |
| Invoices | InvoiceID |
| Stocks | StockID |

### Databases Usage

Some things you should know about **Sqlite3**:

- [x] Easy to manage and move around
- [x] Many connectors available
- [x] Light weight