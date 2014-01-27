@echo on

IF "%GLASSFISH_HOME%"=="" set GLASSFISH_HOME=C:\glassfish-3.0
echo %GLASSFISH_HOME%

 %GLASSFISH_HOME%/bin/asadmin create-jdbc-connection-pool  \
 --datasourceclassname=org.apache.derby.jdbc.ClientDataSource \
 --restype=javax.sql.DataSource \
 --property portNumber=1527:password=NITH:user=NITH:serverName=localhost:databaseName=PG6100DB:connectionAttributes=\;create\\=true PG6100Pool

echo Pinging DB pool...

ping 1.1.1.1 -n 1 -w 1500 > nul

%GLASSFISH_HOME%\bin\asadmin  ping-connection-pool PG6100Pool