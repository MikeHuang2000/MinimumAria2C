@echo off
:loop
set /p ddir=<ddir.ini
echo ��ǰ����·����"%ddir%"
set /p url=�������������ӣ�
echo ��ǰ�������ӣ�"%url%"
echo �������ء���
start /wait "" aria2c.exe -d "%ddir%" "%url%"
if %errorlevel%==0 (
    echo ������ɣ�
) else (
    echo ����ʱ���ִ���
)

goto loop
