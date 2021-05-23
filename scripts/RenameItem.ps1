Get-Help -Name rename-item

rename-item sha1.bat sha1_migrando_renato.bat -WhatIf

rename-item sha1.bat sha1_migrando_guilherme.bat

# Atualizando tópicos de ajuda
update-help

get-help rename-item

# Atribuindo um apelido
get-command -noun alias

get-help new-alias

new-alias -name "rename" Rename-Item

get-alias -Name rename