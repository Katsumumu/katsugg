@echo off
cd /d "%~dp0"
git add .
git commit -m "Atualização automática - %date% %time%"
git push origin main
echo Site atualizado com sucesso! Acesse: https://katsugg.netlify.app
pause