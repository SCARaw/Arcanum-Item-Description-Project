@echo off
setlocal

REM Set the target directory to the directory where the batch file is located
set "baseDir=%~dp0"
set "targetDir=%baseDir%modules/Arcanum/maps"

REM Check if the target directory exists
if exist "%targetDir%" (

    REM Change to the target directory
    cd /d "%targetDir%"

    REM Loop through all files in the directory
    for %%f in (*) do (
        REM Check if the file has no extension
        if "%%~xf"=="" (
            del "%%f"
        )
    )
)

endlocal
