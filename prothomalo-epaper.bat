@echo off
setlocal

rem Configuration file to store the path of the folder containing run.ps1
set "CONFIG_FILE=runps1_folder.cfg"

rem Function to prompt user to select a folder
:SelectFolder
set "psCommand="(New-Object -ComObject Shell.Application).BrowseForFolder(0, 'Please select the folder where run.ps1 is located:', 0).Self.Path""
for /f "usebackq tokens=*" %%i in (`powershell -NoProfile -Command %psCommand%`) do set "SCRIPT_FOLDER=%%i"

rem If the user cancels the folder selection, exit the script
if "%SCRIPT_FOLDER%"=="" (
    echo No folder selected. Exiting.
    endlocal
    exit /b 1
)

rem Save the selected folder path to the configuration file in the same folder as run.ps1
echo %SCRIPT_FOLDER% > "%SCRIPT_FOLDER%\%CONFIG_FILE%"

goto :Continue

rem Check if the configuration file exists in the current folder
if exist "%CD%\%CONFIG_FILE%" (
    rem Read the folder path from the configuration file
    set /p SCRIPT_FOLDER=<"%CD%\%CONFIG_FILE%"
    if "%SCRIPT_FOLDER%"=="" goto SelectFolder
) else (
    goto SelectFolder
)

:Continue
set "SCRIPT_PATH=%SCRIPT_FOLDER%\run.ps1"

rem Check current user's execution policy
for /f "tokens=*" %%i in ('powershell -NoProfile -Command "Get-ExecutionPolicy -Scope CurrentUser"') do set "policy=%%i"

rem If execution policy is not Unrestricted, set it to Unrestricted
if /I not "%policy%"=="Unrestricted" (
    powershell -NoProfile -Command "Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force"
    echo Execution policy set to Unrestricted.
) else (
    echo Execution policy is already Unrestricted.
)

rem Check if run.ps1 exists in the specified folder
if not exist "%SCRIPT_PATH%" (
    echo run.ps1 not found in %SCRIPT_FOLDER%, downloading from GitHub...
    powershell -NoProfile -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/fahim-ahmed05/prothomalo-epaper2pdf/main/run.ps1 -OutFile %SCRIPT_PATH%"
)

rem Execute the run.ps1 script
powershell -NoProfile -File "%SCRIPT_PATH%"

rem Open the output folder in Explorer
if exist "%SCRIPT_FOLDER%\output" (
    explorer "%SCRIPT_FOLDER%\output"
) else (
    echo Output folder does not exist in %SCRIPT_FOLDER%.
)

endlocal
pause
