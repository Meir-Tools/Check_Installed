::--------------------------------------------------
:: Modifies on : 16-12-2022
:: 
::--------------------------------------------------
:: Run once , can run inly in batch file , Global
::--------------------------------------------------
@ECHO OFF
TITLE Mei-R
::--------------------------------------------------
:: Main
echo --------------------------------------------------
echo Check installed program status:
CALL :check_installed "C:\Program Files\VideoLAN\VLC\vlc.exe"
CALL :check_installed "C:\Program Files\Google\Chrome\Application\chrome.exe"
CALL :check_installed "C:\Program Files\Google\Chrome\Application\cchrome.exe"
CALL :check_installed "C:\Program Files\Notepad++\notepad++.exe"
echo --------------------------------------------------

pause
GOTO :EOF
::-------------------------------------------------------------------------------------// Some Functions here
:check_installed
if exist "%~1" (SET file_status=Installed & SET Color=02) else (SET file_status="Not Installed" & SET Color=04)
::echo %~1 -^> %file_status%
<nul set /p="%~1 -> "
CALL :20221216_colorEcho_test %Color% %file_status% & echo.
EXIT /B 0

::-------------------------------------------------------------------------------------// Color Function
:: REF https://stackoverflow.com/questions/30025027/code-for-changing-colors-in-batch-how-is-it-working
:: line %1-color-code , %2-the line.
:20221216_colorEcho_test
::need run once
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" )
echo off
::need run for line %1-color-code , %2-the line.
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
EXIT /B 0
::-------------------------------------------------------------------------------------