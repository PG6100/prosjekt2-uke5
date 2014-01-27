#!/bin/sh
export GLASSFISH_HOME=/opt/glassfish/default/glassfish
echo "Listing movies, give me a second..."
 $GLASSFISH_HOME/bin/appclient -client ../target/prosjekt2-uke5-1.0-SNAPSHOT.jar \-delete-all