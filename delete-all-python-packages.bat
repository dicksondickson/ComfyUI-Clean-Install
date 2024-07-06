:: Remove Python packages. Clean slate.
@echo off
echo Warning: This will delete the Python directory in %LOCALAPPDATA%\Programs.
set /p choice=Do you want to proceed? Type YES to confirm: 

if /i "%choice%"=="YES" (
    rmdir /s /q "%LOCALAPPDATA%\Programs\Python"
    echo Directory deleted successfully.
) else (
    echo Deletion cancelled.
)

pause
