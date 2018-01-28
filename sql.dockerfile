# escape=`
FROM microsoft/mssql-server-windows-developer
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue';"]
COPY start.ps1 /
#CMD .\start -sa_password $env:sa_password -ACCEPT_EULA $env:ACCEPT_EULA -attach_dbs "$env:attach_dbs" -Verbose; 