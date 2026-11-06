@echo off
cd /d "%~dp0"
echo Updating Cydia Packages index...
wsl -d Ubuntu bash -c "cd '/mnt/c/Users/Tweedlex/Desktop/Desktop Archive/Projects/cydia-repo' && dpkg-scanpackages -m ./debs /dev/null > Packages && bzip2 -k -f Packages"
git add .
git commit -m "Update repository packages"
git push -u origin main
echo.
echo Repo updated and pushed to GitHub!
pause

