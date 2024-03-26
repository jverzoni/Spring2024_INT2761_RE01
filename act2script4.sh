#!/bin/bash

generate_report() {
	echo "-----------Start of report, $(date)-----------"
	echo "The CPU usage is as follows: "
	top
	echo "----------------------------------------------"
	echo "The Memory usage is as follows: "
	free
	echo "----------------------------------------------"
	echo "The disk usage is as follows: "
	df
	echo "-----------------End of report----------------"
}

generate_report
