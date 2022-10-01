@echo off
if exist Results.csv del /f Results.csv
set /p thread=Enter number of threads: 
set /p iteration=Enter of iteration: 
set /p rampupTime=Enter time per request: 
jmeter -q db.properties -JResultPath="%cd%\Results.csv" -JReadDataPath="%cd%\useddata.csv" -JNoThread="%thread%"  -JNoIteration="%iteration%" -JRampupTimePeriod="%rampupTime%"