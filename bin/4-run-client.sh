#!/bin/sh
if env | grep -q ^GLASSFISH_HOME=
then
  echo $GLASSFISH_HOME
else
export GLASSFISH_HOME=/opt/glassfish/default
fi

echo "using $GLASSFISH_HOME"

 $GLASSFISH_HOME/glassfish/bin/appclient -client ../target/prosjekt2-uke5-1.0-SNAPSHOT.jar $*