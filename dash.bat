@echo off
cls
echo *
echo * Starting DASH TEST(c) 2015
echo *
echo *
:parse
IF "%~1"=="" GOTO endparse
echo *
echo * Loading Test Suite Configuration File in %1
echo *
echo *
java -cp "lib\*;bin" org.testng.TestNG automatedScripts\%1 
GOTO enddash
:endparse
echo *
echo * ERROR: You must povide a valid XML Configuration file path and name.
echo *
echo * NOTE:  Remember that your test scripts and configuration files
echo *        must be located under the automatedScripts directory.
echo *        If files are under a subdirectory under automatedScripts,
echo *        then provide the correct path.
echo *
echo * SYNTAX: "[<subDirectory\>]<configurationFile.xml>"
echo *
echo * EXAMPLE: dash myScripts\MyTest.xml
echo *
:enddash