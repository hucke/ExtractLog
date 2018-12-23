@echo off
title extract information

SET WORK_FOLDER=%~dp1
SET INFILE=%1
SET OUTFILE=%WORK_FOLDER%\ddk.log

ECHO.WORK_FOLDER %WORK_FOLDER%
ECHO.INFILE %INFILE%
ECHO.OUTFILE %OUTFILE%

perl d:\code\ExtractLog\ExtractDdkLog.pl %INFILE%

PAUSE