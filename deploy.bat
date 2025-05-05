@echo off
REM [PATCH 2025-05-05] Deploy 100% funcional
REM Como usar:
REM 1. Salve este arquivo na pasta do seu site
REM 2. Dê dois cliques

echo Executando deploy...
git add --all
if errorlevel 1 (
    echo ❌ Erro ao adicionar arquivos!
    pause
    exit /b
)

git commit -m "Auto-deploy %date% %time%"
if errorlevel 1 (
    echo ❌ Erro no commit! Verifique se há mudanças.
    pause
    exit /b
)

git push origin main
if errorlevel 1 (
    echo ❌ Erro ao enviar para o GitHub!
    pause
    exit /b
)

echo ✅ Deploy concluído com sucesso!
pause