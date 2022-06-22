@echo OFF
echo.
echo Hash Calculator CUI v2 [Version.2.8]
echo.
echo Copyright (c) 2021-2022 Hibi_10000 GNU General Public License Version 3
echo.


:Repeatedly

if exist Log (goto Repeatedly)
md Log

set i=0
:loop
set /a i=i+1
if exist .\Log\Log_%DATE:/=%_%i%.txt goto loop

:query
::reset
set Hash=
set Answer=
echo.

::Hash algorithm choices
echo Hash=MD2^|MD4^|MD5^|SHA1^|SHA256^|SHA384^|SHA512^|RIPEMD160^|MACTripleDES^|CRC32^|CRC64^|BLAKE2sp
echo.


::Selection
set /p Hash="Hash="
echo.


::Lowercase ⇒ uppercase
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set Hash=%%Hash:%%i=%%i%%


::confirmation
set /P Answer="Is it okay to output Hash with %Hash%?(Y/N)"
if %Answer%==y (goto Branch)
if %Answer%==Y (goto Branch)

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
echo This is not a supported Hash algorithm.
echo This is not a supported Hash algorithm. > .\Log\Log_%DATE:/=%_%i%.txt
goto Repeatedly


:cmd
echo.
certutil -hashfile %1 %Hash%
certutil -hashfile %1 %Hash% > .\Log\Log_%DATE:/=%_%i%.txt
PAUSE
exit


:ps
if not exist .\data\powershell.exe (start /i /wait .\data\powershell-set.bat)
echo.
".\data\powershell.exe" PowerShell Get-FileHash -Algorithm %Hash% %1
".\data\powershell.exe" PowerShell Get-FileHash -Algorithm %Hash% %1 > .\Log\Log_%DATE:/=%_%i%.txt
PAUSE
exit


:7z
if not exist .\data\7z.exe (start /i /wait .\data\7z-set.bat)
echo.
".\data\7z.exe" h -scrc%Hash% %1
".\data\7z.exe" h -scrc%Hash% %1 > .\Log\Log_%DATE:/=%_%i%.txt
PAUSE
exit
