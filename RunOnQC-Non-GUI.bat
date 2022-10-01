@echo off
if exist DB-Performance-Report rmdir /s DB-Performance-Report
if exist Results.csv del /f Results.csv
set /p thread=Enter number of threads: 
set /p iteration=Enter of iteration: 
set /p rampupTime=Enter time per request: 
jmeter -q db.properties -JReadDataPath="%cd%\useddata.csv" -JNoThread="%thread%"  -JNoIteration="%iteration%" -JRampupTimePeriod="%rampupTime%" -n -t MYSQL_PerformanceTesting.jmx -l Results.csv -e -o "DB-Performance-Report"
echo success
pause