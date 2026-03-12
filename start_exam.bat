@echo off
title FS Exam Kit - Launcher

echo.
echo =============================================
echo   FS EXAM KIT - Quick Start Launcher
echo =============================================
echo.
echo Select a template to launch:
echo   1. CRUD Template        (Items Manager)
echo   2. Auth Template        (Login / Signup)
echo   3. Blog Template        (Posts App)
echo   4. Upload Template      (File Upload)
echo.
set /p choice="Enter number (1-4): "

if "%choice%"=="1" (
    set TEMPLATE=crud-template
    set NAME=CRUD Template
) else if "%choice%"=="2" (
    set TEMPLATE=auth-template
    set NAME=Auth Template
) else if "%choice%"=="3" (
    set TEMPLATE=blog-template
    set NAME=Blog Template
) else if "%choice%"=="4" (
    set TEMPLATE=upload-template
    set NAME=Upload Template
) else (
    echo Invalid choice. Defaulting to CRUD Template.
    set TEMPLATE=crud-template
    set NAME=CRUD Template
)

echo.
echo =============================================
echo   Launching: %NAME%
echo =============================================
echo.

cd %TEMPLATE%

echo [1/2] Installing dependencies...
call npm install

echo.
echo [2/2] Starting server...
echo.
echo  Open your browser at: http://localhost:3000
echo  Press Ctrl+C to stop the server.
echo.

node server.js

pause
