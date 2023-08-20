#!/bin/bash
# this is called array, instead of single value it can hold multiple values

PERSONS=("Ramesh" "suresh" "raghu")

echo "First Person: ${PERSONS[0]}"

echo "all Person: ${PERSONS[@]}"


