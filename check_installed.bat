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
CALL :check_installed "C:\Program Files (x86)\ABBYY FineReader 14"
echo --------------------------------------------------

pause
GOTO :EOF
:check_installed
if exist "%~1" (SET file_status=Installed) else (SET file_status=Not Installed)
echo %~1 -^> %file_status%
EXIT /B 0
