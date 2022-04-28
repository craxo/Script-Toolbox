ECHO "Starting to deploy shortcuts..."

:: Get the username of user running the script
SET USERNAME=%USERNAME%

:: Get the domain of the user running the script
SET DOMAIN=%USERDOMAIN%

:: Move delete-all-desktop-shortcuts script to users windows startup folder
copy /y "%~dp0delete-all-desktop-shortcuts.bat" "C:\Users\%USERNAME%.%DOMAIN%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

:: Wait for user input before closing terminal
pause