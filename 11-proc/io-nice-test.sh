#!/bin/bash

echo "ionice -c 1 -n 3"
time ionice -c 1 -n 3 ./large_file.sh

echo ""
echo "******************************************************"
echo ""
echo ""

# Copy the large file with a specific I/O scheduling class and priority
echo "ionice -c 2 -n 3"
time ionice -c 2 -n 3 ./large_file.sh

echo ""
echo "******************************************************"
echo ""
echo ""

# Copy the large file with a specific I/O scheduling class and priority
echo "ionice -c 3 -n 3"
time ionice -c 3 -n 3 ./large_file.sh
