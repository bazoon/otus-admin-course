#!/bin/bash

generate_large_file() {
	dd if=/dev/zero of=large_file bs=1M count=$1 status=progress
}

copy_large_file() {
	cp large_file large_file_copy
}

generate_large_file 1000
copy_large_file
