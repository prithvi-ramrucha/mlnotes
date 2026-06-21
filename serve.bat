@echo off
echo Starting Jekyll server...
echo.

REM Start Jekyll server in current window
start "Jekyll Server" cmd /k "bundle exec jekyll serve --baseurl ""

echo Waiting for server to start...
timeout /t 5 /nobreak >nul

echo Opening browser to http://localhost:4000...
start http://localhost:4000

echo.
echo Jekyll server is running!
pause >nul