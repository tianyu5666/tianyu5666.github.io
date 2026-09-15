@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  企鹅桌宠 - 分片合并工具（4 片版）
echo ============================================
echo.
set MISSING=0
for %%i in (001 002 003 004) do (
  if not exist "PenguinPet-Windows-x64.zip.%%i" (
    echo [缺少] PenguinPet-Windows-x64.zip.%%i
    set MISSING=1
  )
)
if "%MISSING%"=="1" (
  echo.
  echo 请把 4 个分片文件和本脚本放在同一个文件夹里再运行。
  pause & exit /b
)
echo 正在合并 4 个分片...
copy /b "PenguinPet-Windows-x64.zip.001"+"PenguinPet-Windows-x64.zip.002"+"PenguinPet-Windows-x64.zip.003"+"PenguinPet-Windows-x64.zip.004" "PenguinPet-Windows-x64.zip" >nul
if exist "PenguinPet-Windows-x64.zip" (
  echo.
  echo [完成] 已生成 PenguinPet-Windows-x64.zip
  echo 接下来：右键该压缩包 - 全部解压缩 - 双击里面的 PenguinPet.exe，企鹅就出现啦！
  echo.
  echo （分片文件 .001~.004 可以删掉了）
) else (
  echo [失败] 合并没有成功，请确认 4 个分片都在同一目录。
)
pause