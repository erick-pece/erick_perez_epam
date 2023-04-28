#!/usr/bin/env bash

# For this script we need "jq" binary

# We read the json file and store in a variable
json_file=$(<example2.json)

echo -e  "The names are: "

# Parse the variable to onlly print the names of the groups
nombre=  echo  $json_file | jq '.map_for_groups | keys[]'
