# escape=`
FROM microsoft/mssql-server-windows-developer
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue';"]
COPY start.ps1 /
