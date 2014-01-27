@echo on

IF "%GLASSFISH_HOME%"=="" set GLASSFISH_HOME=C:\glassfish-3.0
echo %GLASSFISH_HOME%

%GLASSFISH_HOME%/bin/asadmin create-jdbc-resource --connectionpoolid PG6100Pool jdbc/PG6100DS

echo "listing all jdbc data sources"

%GLASSFISH_HOME%\bin\asadmin list-jdbc-resources