@echo off
cd /d "%~dp0"
where node >nul 2>nul || (echo Node.js fehlt. & goto end)
where cargo >nul 2>nul || (echo Rust fehlt. & goto end)
where yarn >nul 2>nul || (echo Yarn fehlt. Installiere Yarn ueber Corepack. & goto end)
if not exist node_modules (echo Installiere Abhaengigkeiten... & call yarn install || goto end)
echo Starte Tauri Entwicklungsmodus...
call yarn tauri dev
:end
pause
