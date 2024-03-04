#!/bin/bash

echo "nice -n -20"
time nice -n -20 ./fact.sh

echo ""
echo "******************************************************"
echo ""

echo "nice -n 19"
time nice -n 19 ./fact.sh
