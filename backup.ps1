# [PATCH 2025-05-05] Backup automático do Katsugg  
$PASTA_DO_SITE = "C:\Users\heron\OneDrive\Desktop\katsugg"  
$PASTA_BACKUPS = "C:\backups_katsugg"  
$ZIP = "$PASTA_BACKUPS\katsugg-$(Get-Date -Format 'yyyy-MM-dd').zip"  

# 1. Cria pasta de backups (se não existir)  
if (-not (Test-Path $PASTA_BACKUPS)) { New-Item -ItemType Directory -Path $PASTA_BACKUPS }  

# 2. Faz ZIP de TUDO (exceto a pasta de backups)  
Compress-Archive -Path "$PASTA_DO_SITE\*" -DestinationPath $ZIP -Exclude "$PASTA_BACKUPS"  

# 3. Mensagem direta  
Write-Output "✅ BACKUP FEITO! Arquivo salvo em: $ZIP"  