@echo off  
REM [PATCH 2025-05-05] Commit + Push rápido  
set /p msg="Digite a mensagem do commit: "  
git add . && git commit -m "%msg%" && git push  
pause  