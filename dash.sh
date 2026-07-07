#!/bin/bash
clear

echo "*"
echo "* Starting DASH TEST(c) 2015"
echo "*"
echo "*"

if [ "$1" != "" ]; then
    echo "*"
	echo "* Loading Test Suite Configuration File in $1"
	echo "*"
	echo "*"
	java -cp "./lib/*;bin" org.testng.TestNG ./automatedScripts/$1 
else
    echo "*"
	echo "* ERROR: You must povide a valid XML Configuration file path and name."
	echo "*"
	echo "* NOTE:  Remember that your test scripts and configuration files"
	echo "*        must be located under the automatedScripts directory."
	echo "*        If files are under a subdirectory under automatedScripts,"
	echo "*        then provide the correct path."
	echo "*"
	echo "* SYNTAX: './dash.sh [<subDirectory/>]<configurationFile.xml>'"
	echo "*"
	echo "* EXAMPLE: dash myScripts/MyTest.xml"
	echo "*"
fi