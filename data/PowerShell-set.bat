@echo off

echo Hash�v�ZCUI2 PowerShell Copy Tool
echo Copyright (c) 2021 Hibi_10000  All Rights Reserved.
echo.

for /f "usebackq tokens=*" %%i IN (`powershell $PSVersionTable.PSVersion.Major`) DO set psv=%%i

echo PowerShellver%psv%

if %psv% lss 4 (goto v123)

copy "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" .\data\PowerShell.exe
exit

:v123
echo PowerShell�̃o�[�W�������Â��ł��B

copy .\data\data\PowerShell-5.1.exe .\data\PowerShell.exe
PAUSE
exit
