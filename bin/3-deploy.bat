@echo on
IF "%GLASSFISH_HOME%"=="" set GLASSFISH_HOME=C:\glassfish-3.0
echo %GLASSFISH_HOME%
cd ..
mvn clean package
cd bin

%GLASSFISH_HOME%\bin\asadmin deploy --force=true ..\target\prosjekt2-uke5-1.0-SNAPSHOT.jar