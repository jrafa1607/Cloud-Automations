#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Request the Quotas Update - IAM Managed Policies from 10 to 20: $conta in the Region: $regiao ======"
                docsdb=$(aws service-quotas request-service-quota-increase --service-code iam --quota-code L-0DA4ABF3 --desired-value 20 --region $regiao --profile $conta)
                echo "$conta - $regiao - $docsdb" | tee -a report_quotas_increase.txt
                echo "========================================================================================"
        done
done
