@echo off

echo Hash�v�ZCUI2 7-Zip Copy Tool
echo Copyright (c) 2021 Hibi_10000  All Rights Reserved.
echo.

if exist "C:\Program Files\7-Zip\7z.exe" (
copy "C:\Program Files\7-Zip\7z.exe" .\data\7z.exe
exit
)
set /P Answer="7-zip���C���X�g�[������Ă��܂���B�����t�@�C�����g�p���܂���?(Y/N)"
if %Answer%==y (goto cp)
Pause
exit
:cp
copy .\data\data\7z.exe .\data\7z.exe

PAUSE
exit