@echo off
cd /d "%~dp0"
echo Pushing cydia-repo to GitHub...
git push -u origin main
echo.
echo Done! If asked, sign in via browser window.
pause
