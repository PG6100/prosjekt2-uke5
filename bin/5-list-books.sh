#!/bin/sh
if env | grep -q ^GLASSFISH_HOME=
then
  echo $GLASSFISH_HOME
else
export GLASSFISH_HOME=/opt/glassfish/default
fi

echo "using $GLASSFISH_HOME"

echo "Listing movies, give me a second..."
 $GLASSFISH_HOME/bin/appclient -client ../target/prosjekt2-uke5-1.0-SNAPSHOT.jar \-list