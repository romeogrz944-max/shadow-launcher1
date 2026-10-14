@echo off
cd /d "%~dp0"
where yarn >nul 2>nul || (echo Yarn fehlt. & goto end)
where cargo >nul 2>nul || (echo Rust fehlt. & goto end)
if not exist node_modules (call yarn install || goto end)
call yarn tauri build
if errorlevel 1 (echo Build fehlgeschlagen. Fehlermeldung oben pruefen.) else (echo Build beendet. Pruefe src-tauri\target\release\bundle)
:end
pause
