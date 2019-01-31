# The cassandra demo db

## Start the cassandra db

Clone the github repository into the local file system ( git clone `https://github.com/sturc/cassandrademodb.git` ) and go into the created folder. 
Execute `docker-compose -f stack.yml up` to start the database

## Initialize the database 

To create the customer table execute the following command while cassandra db is running: 
`docker exec some-cassandra cqlsh -f '/data/files/createcustomertable.cql'`

To create the orders table execute the following command whild cassandra db is running:
`docker exec some-cassandra cqlsh -f '/data/files/createordertable.cql'`

## Open a cqlsh to work with the database

To open a cqlsh shell on the running cassandra server execute the following command: 

`docker exec -it some-cassandra cqlsh`

## Stop the cassandra db

To stop the execution of the cassandra db simply cancel the execution of docker-compose in the command line (press `Crtl-C`).