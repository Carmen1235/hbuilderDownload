@echo off
set /p r="ȷ�����HBuilder������������? ��������س�������������N�س��˳�..."
if /i %r%==n exit;
if /i %r%==N exit;



if exist %appdata%\HBuilder\userprofiles (
	echo %appdata%\HBuilder\userprofilesĿ¼�¿��ܴ�����Ŀ
	echo ���ֶ�ɾ�����ļ��У�ɾ��ǰ�����Ƿ�����Ŀ���ڣ���ִ��reset!
	pause;
	exit;
)

echo ɾ��ע�����Ϣ
reg query HKEY_CURRENT_USER\Software\HBuilder >nul 2>nul&&reg delete HKEY_CURRENT_USER\Software\HBuilder /F

echo ɾ�������ļ�
if exist "%appdata%\HBuilder" (rd /s /q "%appdata%\HBuilder")




echo �������...
pause;


