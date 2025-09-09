tmp=$(mktemp -d)
tar -xf data/archive-part1.tar -C $tmp
unzip data/archive-part2.zip -d $tmp
tar -czf data/archive-combined.tar.gz -C $tmp .
rm -fr $tmp
