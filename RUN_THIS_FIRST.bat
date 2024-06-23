@echo off
:: Check if python is version 3.10 or 3.11
python --version 2>&1 | findstr /R /C:"Python 3\.[1][01]\." >nul
if errorlevel 1 goto errorNoPython
    echo + Compatible python version found

:: Check if npm is installed
where npm >nul 2>nul
if errorlevel 1 goto errorNoNPM
    echo + Compatible npm version found    

:: Check if git is installed
where git >nul 2>nul
if errorlevel 1 goto errorNoGit
    echo + Compatible git version found

goto:end

:errorNoPython
echo - Error^: Python not installed
echo.
echo Please install either python 3.10 or 3.11 and make sure it is set as the default python installation.
echo https://www.python.org/downloads/release/python-3119/
echo.
pause
exit

:errorNoNPM
echo - Error^: NPM not installed
echo.
echo Please install node.js, it is used to run the frontend. 
echo https://nodejs.org/en/download/prebuilt-installer
echo.
pause
exit

:errorNoGit
echo - Error^: Git not installed
echo.
echo Please install git, it is used to clone the repository.
echo https://git-scm.com/downloads
echo.
pause
exit

:end
echo.
echo All prerequisites are installed, you can now run the START file.
pause