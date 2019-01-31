CREATE KEYSPACE IF NOT EXISTS sales WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};

DROP TABLE IF EXISTS SALES.ORDERS;

CREATE TABLE SALES.ORDERS (
  customerid int,
  ordertime timestamp,
  items map<int,int>,
  PRIMARY KEY (customerid, ordertime)
);

COPY sales.orders (customerid, ordertime, items) FROM '/data/files/orders.csv' WITH HEADER = TRUE and DELIMITER=';';

