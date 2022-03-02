#!/bin/bash

printf "Please input few tags [E.g: food,coffee]: "
read -r tags

echo "$( jq '.tags = "'$tags'"' data.json )" > data.json