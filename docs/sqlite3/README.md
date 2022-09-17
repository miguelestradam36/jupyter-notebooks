# Data Documentation

## About Sqlite usage on this project

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

### Sqlite3 Databases Usage

Review some about how the data architecture of this project was created

### Shell Script Automation

Automate the execution of the various scripts included in this application through the usage of **MAKE GNU**
