#!/bin/awk -f
BEGIN {
# this action is always executed because it is in the BEGIN pattern
# How many lines
    lines=0;
    total=0;
}
{
# this action section defaults to being performed on every line
# kind of like a loop

# this code is executed once for each line
# increase the number of files
    if ($1 != "total") lines++;
# increase the total size, which is field #1
# Remember that the default column separator is a space
# $1 refers to the first column in the input
    total+=$1;
}
END {
# end, now output the total
    print lines " lines read";
    print "total is ", total;
    if (lines > 0 ) {
	print "average is ", total/lines;
    } else {
	print "average is 0";
    }
}
