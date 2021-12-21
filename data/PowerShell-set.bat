@echo off

echo Hash計算CUI2 PowerShell Copy Tool
echo Copyright (c) 2021 Hibi_10000  All Rights Reserved.
echo.

for /f "usebackq tokens=*" %%i IN (`powershell $PSVersionTable.PSVersion.Major`) DO set psv=%%i

echo PowerShellver%psv%

if %psv% lss 4 (goto v123)

copy "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" .\data\PowerShell.exe
exit

:v123
echo PowerShellのバージョンが古いです。

copy .\data\data\PowerShell-5.1.exe .\data\PowerShell.exe
PAUSE
exit
