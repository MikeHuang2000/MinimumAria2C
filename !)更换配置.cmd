@echo off

set /p a=���������ñ�ţ�1~6��

del /q aria2bak.conf
del /q aria2.conf

copy "%~dp0confs\%a%.conf" "%~dp0"

ren "%a%.conf" "aria2bak.conf"

start "" /wait join.vbs

if %errorlevel%==0 (
    echo ����������ɣ�
    color AE
) else (
    echo ��������ʱ���ִ���
    color 4e
)

pause