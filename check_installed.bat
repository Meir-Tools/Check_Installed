::--------------------------------------------------
:: Modifies on : 06-12-2022
:: 
::--------------------------------------------------
:: Run once , can run inly in batch file , Global
::--------------------------------------------------
@ECHO OFF
TITLE mDm-mac
::--------------------------------------------------
:: Main
echo --------------------------------------------------
echo Check installed program status:
CALL :check_installed "C:\Program Files\VideoLAN\VLC\vlc.exe"
CALL :check_installed "C:\Program Files\Google\Chrome\Application\chrome.exe"
echo --------------------------------------------------

pause
GOTO :EOF
:check_installed <path> 
if exist "%~1" (SET file_status=Installed) else (SET file_status=Not Installed)
echo %~1 -^> %file_status%
EXIT /B 0

:: Installation folders.
:: C:\Program Files
:: C:\Program Files (x86)

