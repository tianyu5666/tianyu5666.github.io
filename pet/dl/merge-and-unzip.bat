@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  企鹅桌宠 - 分片合并工具
echo ============================================
echo.
if not exist "PenguinPet-Windows-x64.zip.001" (
  echo [错误] 没找到 PenguinPet-Windows-x64.zip.001
  echo 请把两个分片文件和本脚本放在同一个文件夹里再运行。
  pause & exit /b
)
if not exist "PenguinPet-Windows-x64.zip.002" (
  echo [错误] 没找到 PenguinPet-Windows-x64.zip.002
  echo 请把两个分片文件和本脚本放在同一个文件夹里再运行。
  pause & exit /b
)
echo 正在合并分片...
copy /b "PenguinPet-Windows-x64.zip.001"+"PenguinPet-Windows-x64.zip.002" "PenguinPet-Windows-x64.zip" >nul
if exist "PenguinPet-Windows-x64.zip" (
  echo.
  echo [完成] 已生成 PenguinPet-Windows-x64.zip
  echo 接下来：右键该压缩包 - 全部解压缩 - 双击里面的 PenguinPet.exe 就能看到企鹅啦！
  echo.
  echo （分片文件 .001 / .002 可以删掉了）
) else (
  echo [失败] 合并没有成功，请把两个分片和脚本放在同一目录后重试。
)
pause