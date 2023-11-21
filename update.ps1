# Télécharger BepInEx.zip
Write-Output "Téléchargement de BepInEx.zip..."
Invoke-WebRequest -Uri "https://cdn.discordapp.com/attachments/1176452675106254868/1176456143002935367/BepInEx.zip?ex=656eef29&is=655c7a29&hm=16872747ca3e0fca753c5548a64c3a4530bfec1f1a4c450fd268b8e71790e353&" -OutFile "BepInEx.zip"

# Extraire BepInEx.zip dans le répertoire courant
Write-Output "Extraction de BepInEx.zip..."
Expand-Archive -Path "BepInEx.zip" -DestinationPath $PSScriptRoot -Force

# Supprimer le fichier zip téléchargé
Write-Output "Suppression de BepInEx.zip..."
Remove-Item -Path "BepInEx.zip" -Force

Write-Output "Téléchargement et extraction terminés."
