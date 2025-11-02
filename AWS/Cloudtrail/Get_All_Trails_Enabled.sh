#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1" )
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== All Trails in the Account: $conta"
                cmd=$(aws cloudtrail list-trails --output text --region $regiao --profile $conta)
                
		echo "$conta - $regiao - $cmd" | tee -a trails.txt
                echo "================================="
        done
done
