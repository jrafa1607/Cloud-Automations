#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1" )
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Check All users from Account: $conta"
                docsdb=$(aws docdb describe-db-clusters --profile $conta --region $regiao --query 'DBClusters[].DBClusterIdentifier' --output text)
                echo "$conta - $regiao - $docsdb" | tee -a docsdb_result.txt
                echo "================================="
        done
done
