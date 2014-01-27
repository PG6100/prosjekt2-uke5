#!/bin/sh
if env | grep -q ^GLASSFISH_HOME=
then
  echo $GLASSFISH_HOME
else
export GLASSFISH_HOME=/opt/glassfish/default
fi

echo "using $GLASSFISH_HOME"

$GLASSFISH_HOME/bin/asadmin create-jdbc-resource --connectionpoolid PG6100Pool jdbc/PG6100DS

echo "listing all jdbc data sources"
echo "Database files are in " $GLASSFISH_HOME/glassfish/databases/PG6100DB/
$GLASSFISH_HOME/bin/asadmin list-jdbc-resources

echo "You can also check out the admin console: http://localhost:4848/common/index.jsf (Under resources/JDBC)"