#!/bin/bash
temp_dir=$(mktemp -d)
tar -xf data/archive-part1.tar -C $temp_dir
unzip -q data/archive-part2.zip -d $temp_dir
tar -czf data/archive-combined.tar.gz -C $temp_dir .
rm -rf $temp_dir
