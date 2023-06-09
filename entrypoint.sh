#!/bin/sh -l

#Variables Java
JAVA_HOME='/opt/jdk-13.0.1'
PATH="$JAVA_HOME/bin:$PATH"
export PATH
#Variables Mvn
M2_HOME='/opt/apache-maven-3.6.3'
PATH="$M2_HOME/bin:$PATH"
export PATH
#Instalación de apim
wget https://github.com/Axway-API-Management-Plus/apim-cli/releases/download/1.13.7/axway-apimcli-1.13.7.tar.gz
tar -xvf axway-apimcli-1.13.7.tar.gz
#Variables de apim-cli
AXWAY_APIM_CLI_HOME='apim-cli-1.13.7'
export AXWAY_APIM_CLI_HOME
PATH="$AXWAY_APIM_CLI_HOME/scripts:$PATH"
export PATH
alias apim=apim.sh

#apim api get para ver la info de la api
apim api get -a /api/v1/sample-anthony -s prd8252

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT