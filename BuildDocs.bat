@echo off
setlocal

echo ======================================
echo   MoraMapGen - Build Documentation
echo ======================================
echo.

REM Change to this script's directory (safe even if moved)
cd /d "%~dp0"

REM Optional: clean old output
echo Cleaning old output...
if exist "_site" rmdir /s /q "_site"
if exist "api" rmdir /s /q "api"

echo.
echo Building and serving documentation...
echo.
docfx metadata
docfx build docfx.json --serve

echo.
echo ======================================
echo   DocFX finished (press any key)
echo ======================================
pause
