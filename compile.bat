@echo off
cd /d "%~dp0"
chcp 65001 > nul
echo [PyInstaller 컴파일 시작]
echo.

pyinstaller ^
--noconsole ^
--onefile ^
--name="MO2 meta.ini Editor" ^
--version-file="version.txt" ^
--add-data="uibase.dll;." ^
--add-data="usvfs_x64.dll;." ^
--add-data="usvfs_x86.dll;." ^
--add-data="libssl-3-x64.dll;." ^
--add-data="libcrypto-3-x64.dll;." ^
"MO2 meta.ini Editor.py"

echo.
echo [컴파일 완료]
echo 아무 키나 누르면 창을 닫습니다.
pause > nul