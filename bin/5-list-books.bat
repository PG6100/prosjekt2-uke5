@echo on
IF "%GLASSFISH_HOME%"=="" set GLASSFISH_HOME=C:\glassfish-3.0
echo %GLASSFISH_HOME%

echo "Listing all movies, give me a second..."
 %GLASSFISH_HOME%\bin\appclient -jar ..\target\prosjekt2-uke5-1.0-SNAPSHOT.jar \-list