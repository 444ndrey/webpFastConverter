@echo off
set "exePath=C:\Path\To\node.exe"
set "scriptPath=C:\Path\To\webpFastConverter\index.js"

:: Добавляем для .jpg
reg add "HKCU\Software\Classes\SystemFileAssociations\.jpg\shell\ConvertToWebP" /ve /t REG_SZ /d "Convert to WebP" /f
reg add "HKCU\Software\Classes\SystemFileAssociations\.jpg\shell\ConvertToWebP\command" /ve /t REG_SZ /d "\"%exePath%\" \"%scriptPath%\" \"%%1\"" /f

:: Добавляем для .jpeg
reg add "HKCU\Software\Classes\SystemFileAssociations\.jpeg\shell\ConvertToWebP" /ve /t REG_SZ /d "Convert to WebP" /f
reg add "HKCU\Software\Classes\SystemFileAssociations\.jpeg\shell\ConvertToWebP\command" /ve /t REG_SZ /d "\"%exePath%\" \"%scriptPath%\" \"%%1\"" /f

:: Добавляем для .png
reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP" /ve /t REG_SZ /d "Convert to WebP" /f
reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP\command" /ve /t REG_SZ /d "\"%exePath%\" \"%scriptPath%\" \"%%1\"" /f

:: Добавляем для .bmp
reg add "HKCU\Software\Classes\SystemFileAssociations\.bmp\shell\ConvertToWebP" /ve /t REG_SZ /d "Convert to WebP" /f
reg add "HKCU\Software\Classes\SystemFileAssociations\.bmp\shell\ConvertToWebP\command" /ve /t REG_SZ /d "\"%exePath%\" \"%scriptPath%\" \"%%1\"" /f

