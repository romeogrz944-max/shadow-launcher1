@echo off
cd /d "%~dp0"
echo === Shadow Client - Voraussetzungen ===
where node >nul 2>nul || (echo FEHLER: Node.js fehlt. & goto end)
node --version
where corepack >nul 2>nul || (echo HINWEIS: Corepack fehlt. & goto rust)
corepack --version
:rust
where cargo >nul 2>nul || (echo FEHLER: Rust/Cargo fehlt. & goto end)
cargo --version
where rustc >nul 2>nul || (echo FEHLER: rustc fehlt. & goto end)
rustc --version
where yarn >nul 2>nul || echo HINWEIS: Yarn fehlt. Corepack kann Yarn bereitstellen.
echo.
echo Voraussetzungen teilweise vorhanden. Fuer Windows-Build sind auch MSVC Build Tools und WebView2 erforderlich.
:end
pause
