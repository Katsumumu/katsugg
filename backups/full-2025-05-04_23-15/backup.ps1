# [PATCH 2025-05-05] Backup COMPLETO do site  
$BACKUP_DIR = "backups/full-$(Get-Date -Format 'yyyy-MM-dd_HH-mm')"  
$SITE_DIR = "."  # Pasta atual (raiz do site)  

# Cria pasta de backup + copia TUDO (exceto a própria pasta backups)  
New-Item -Path $BACKUP_DIR -ItemType Directory -Force  
Get-ChildItem -Path $SITE_DIR -Exclude "backups" | Copy-Item -Destination $BACKUP_DIR -Recurse -Force  

Write-Output "✅ Backup FULL feito em: $BACKUP_DIR"  
Write-Output "📦 Tamanho: $((Get-ChildItem $BACKUP_DIR -Recurse | Measure-Object -Property Length -Sum).Sum / 1MB) MB"  