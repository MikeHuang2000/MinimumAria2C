@echo off

set /p a=请输入配置编号（1~6）

del /q aria2bak.conf
del /q aria2.conf

copy "%~dp0confs\%a%.conf" "%~dp0"

ren "%a%.conf" "aria2bak.conf"

start "" /wait join.vbs

if %errorlevel%==0 (
    echo 更换配置完成！
    color AE
) else (
    echo 更换配置时出现错误
    color 4e
)

pause