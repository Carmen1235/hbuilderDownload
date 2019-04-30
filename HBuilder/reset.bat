@echo off
set /p r="确认清除HBuilder的所有配置吗? 按任意键回车继续，或输入N回车退出..."
if /i %r%==n exit;
if /i %r%==N exit;



if exist %appdata%\HBuilder\userprofiles (
	echo %appdata%\HBuilder\userprofiles目录下可能存在项目
	echo 请手动删除该文件夹（删除前请检查是否有项目存在）再执行reset!
	pause;
	exit;
)

echo 删除注册表信息
reg query HKEY_CURRENT_USER\Software\HBuilder >nul 2>nul&&reg delete HKEY_CURRENT_USER\Software\HBuilder /F

echo 删除配置文件
if exist "%appdata%\HBuilder" (rd /s /q "%appdata%\HBuilder")




echo 重置完毕...
pause;


