#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1" )
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Check the Ec2 from Account: $conta"
                cmd=$(aws ec2 describe-network-interfaces  --filters Name=addresses.private-ip-address,Values=x.x.x.x --output text --region $regiao --profile $conta)
                echo "$conta - $regiao - $cmd" | tee -a ListSecurityGroups.txt
                echo "================================="
        done
done
