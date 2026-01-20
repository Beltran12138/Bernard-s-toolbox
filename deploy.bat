@echo off
chcp 65001 >nul
color 0A

echo.
echo ========================================
echo   Bernard's Toolbox - Auto Deploy
echo ========================================
echo.

cd /d "%~dp0"

echo [1/5] Checking Git status...
git status
if errorlevel 1 (
    echo.
    echo ❌ Error: Git repository not initialized
    echo Please run: git init
    pause
    exit /b 1
)

echo.
echo [2/5] Adding all files...
git add .

echo.
echo [3/5] Committing changes...
set /p message="📝 Enter commit message (press Enter for default): "
if "%message%"=="" set message=Update toolbox

git commit -m "%message%"
if errorlevel 1 (
    echo.
    echo ⚠️  No changes to commit
    pause
    exit /b 0
)

echo.
echo [4/5] Pushing to GitHub...
git push
if errorlevel 1 (
    echo.
    echo ❌ Error: Push failed
    echo Please check your internet connection and GitHub authentication
    pause
    exit /b 1
)

echo.
echo [5/5] Deploy complete!
echo.
echo ========================================
echo ✅ Success! Your changes are live!
echo.
echo 🌐 Your site will update in 1-2 minutes
echo 🔗 Visit: https://YOUR-USERNAME.github.io/bernard-toolbox/
echo ========================================
echo.
pause
