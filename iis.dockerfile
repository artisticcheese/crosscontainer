# escape=`
FROM microsoft/iis
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue';"]
WORKDIR prep
RUN install-windowsfeature Web-Asp-Net45
COPY sql.aspx c:/inetpub/wwwroot/
COPY web.config c:/inetpub/wwwroot/
ENTRYPOINT Add-LocalGroupMember -Group Administrators -Member "ad.local\Domain Admins";  while ($true) {start-sleep 1000}