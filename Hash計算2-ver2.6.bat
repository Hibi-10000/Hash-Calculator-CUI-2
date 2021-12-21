@echo OFF
echo Hash�v�ZCUI2 [Version.2.7]
echo Copyright (c) 2021 Hibi_10000  All Rights Reserved.

if exist .\data\7z.exe (goto ps) else (start .\data\7z-set.bat)
:ps
if exist .\data\PowerShell.exe (goto 1) else (start .\data\PowerShell-set.bat)

:1
if exist Log (goto Repeatedly)
md Log

:Repeatedly
set i=0
:loop
set /a i=i+1
if exist .\Log\Log_%DATE:/=%_%i%.txt goto loop


:query
::reset
set Hash=
set Answer=
echo.

::Hash�A���S���Y���̑I����
echo Hash=MD2^|MD4^|MD5^|SHA1^|SHA256^|SHA384^|SHA512^|RIPEMD160^|MACTripleDES^|CRC32^|CRC64^|BLAKE2sp
echo.


::�I��
set /p Hash="Hash="
echo.


::�������ˑ啶��
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set Hash=%%Hash:%%i=%%i%%


::�m�F
set /P Answer="Hash�o�͂���̂�%Hash%�ł�낵���ł���?(y/n)"
if %Answer%==y (goto Branch)

goto query

:Branch
if %Hash%==SHA1 (goto cmd)
if %Hash%==SHA256 (goto cmd)
if %Hash%==SHA384 (goto cmd)
if %Hash%==SHA512 (goto cmd)
if %Hash%==MD2 (goto cmd)
if %Hash%==MD4 (goto cmd)
if %Hash%==MD5 (goto cmd)
if %Hash%==RIPEMD160 (goto ps)
if %Hash%==MACTripleDES (goto ps)
if %Hash%==CRC32 (goto 7z)
if %Hash%==CRC64 (goto 7z)
if %Hash%==BLAKE2sp (goto 7z)

::Error
echo ����͑Ή����Ă���Hash�A���S���Y���ł͂���܂���B
echo ����͑Ή����Ă���Hash�A���S���Y���ł͂���܂���B > .\Log\Log_%DATE:/=%_%i%.txt
goto Repeatedly


:cmd
echo.
certutil -hashfile %1 %Hash%
certutil -hashfile %1 %Hash% > .\Log\Log_%DATE:/=%_%i%.txt
goto exit


:ps
echo.
".\data\PowerShell.exe" PowerShell Get-FileHash -Algorithm %Hash% %1
".\data\PowerShell.exe" PowerShell Get-FileHash -Algorithm %Hash% %1 > .\Log\Log_%DATE:/=%_%i%.txt
goto exit


:7z
echo.
".\data\7z.exe" h -scrc%Hash% %1
".\data\7z.exe" h -scrc%Hash% %1 > .\Log\Log_%DATE:/=%_%i%.txt
goto exit


:exit
echo.
echo stoping...
PAUSE
