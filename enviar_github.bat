@echo off
cd /d C:\main

git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo Nenhuma alteracao encontrada.
    pause
    exit
)

git commit -m "Atualizacao automatica"
git push

pause