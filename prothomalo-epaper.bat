@echo off
setlocal enabledelayedexpansion

rem Configuration file to store the path of the folder containing run.ps1
set "CONFIG_FILE=%~dp0runps1_folder.txt"

rem Check if the text file exists
if exist "%CONFIG_FILE%" (
    rem Read the folder path from the configuration file
    set /p "SCRIPT_FOLDER=" < "%CONFIG_FILE%"
) else (
    rem Function to prompt user to select a folder
    powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms | Out-Null ; $folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog ; $folderBrowser.Description = 'Please select the folder where run.ps1 is located:' ; $folderBrowser.RootFolder = 'MyComputer' ; $folderBrowser.SelectedPath = 'C:\' ; $folderBrowser.ShowNewFolderButton = $true ; $result = $folderBrowser.ShowDialog() ; if ($result -eq 'OK') { Write-Output $folderBrowser.SelectedPath } else { Write-Output 'Cancelled' }" > "%CONFIG_FILE%"
    set /p "SCRIPT_FOLDER=" < "%CONFIG_FILE%"
    if "%SCRIPT_FOLDER%"=="Cancelled" (
        echo No folder selected. Exiting.
        del "%CONFIG_FILE%" 2>nul
        endlocal
        exit /b 1
    )
)

:Continue
if "%SCRIPT_FOLDER%"=="Cancelled" (
    echo No folder selected. Exiting.
    del "%CONFIG_FILE%" 2>nul
    endlocal
    exit /b 1
)

set "SCRIPT_PATH=!SCRIPT_FOLDER!\run.ps1"

rem Check if run.ps1 exists in the specified folder
if not exist "!SCRIPT_PATH!" (
    echo run.ps1 not found in !SCRIPT_FOLDER!, downloading from GitHub...
    powershell -NoProfile -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/fahim-ahmed05/prothomalo-epaper2pdf/main/run.ps1 -OutFile !SCRIPT_PATH!"
)

rem Execute the run.ps1 script
powershell -NoProfile -File "!SCRIPT_PATH!"

rem Open the output folder in Explorer
if exist "!SCRIPT_FOLDER!\output" (
    explorer "!SCRIPT_FOLDER!\output"
) else (
    echo Output folder does not exist in !SCRIPT_FOLDER!.
)

endlocal
