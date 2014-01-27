#!/bin/sh
if env | grep -q ^GLASSFISH_HOME=
then
  echo $GLASSFISH_HOME
else
export GLASSFISH_HOME=/opt/glassfish/default
fi

echo "using $GLASSFISH_HOME"

 $GLASSFISH_HOME/bin/asadmin create-jdbc-connection-pool  \
 --datasourceclassname=org.apache.derby.jdbc.ClientDataSource \
 --restype=javax.sql.DataSource \
 --property portNumber=1527:password=NITH:user=NITH:serverName=localhost:databaseName=PG6100DB:connectionAttributes=\;create\\=true PG6100Pool

echo "pinging pool..."

 sleep 2

 $GLASSFISH_HOME/bin/asadmin  ping-connection-pool PG6100Pool


 echo "Database files are in " $GLASSFISH_HOME/glassfish/databases/PG6100DB/