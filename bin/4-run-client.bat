#!/bin/sh
IF "%GLASSFISH_HOME%"=="" set GLASSFISH_HOME=C:\glassfish-3.0
echo %GLASSFISH_HOME%

%GLASSFISH_HOME%\bin\appclient  -client ..\target\prosjekt2-uke5-1.0-SNAPSHOT.jar