@echo off
:loop
set /p ddir=<ddir.ini
echo 当前下载路径："%ddir%"
set /p url=请输入下载链接：
echo 当前下载链接："%url%"
echo 正在下载……
start /wait "" aria2c.exe -d "%ddir%" "%url%"
if %errorlevel%==0 (
    echo 下载完成！
) else (
    echo 下载时出现错误
)

goto loop
