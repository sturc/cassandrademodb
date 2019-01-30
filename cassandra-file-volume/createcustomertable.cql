
CREATE KEYSPACE IF NOT EXISTS sales WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};

DROP TABLE IF EXISTS SALES.CUSTOMERS;

create table sales.customers (
       CustomerID varchar PRIMARY KEY,
       CompanyName varchar,
       ContactName varchar,
       ContactTitle varchar,
       Address varchar,
       City varchar,
       Region varchar,
       PostalCode varchar,
       Country varchar,
       Phone varchar,
       Fax varchar
);

COPY sales.customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) FROM '/data/files/customers.csv' WITH HEADER = TRUE;