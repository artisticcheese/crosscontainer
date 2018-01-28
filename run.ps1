docker build -t artisticcheese/crosscontaineriis -f iis.dockerfile .
docker build -t artisticcheese/crosscontainersql -f sql.dockerfile .


docker run -d --rm -p 80:80 -h containerhost --name iis --security-opt "credentialspec=file://win.json" artisticcheese/crosscontaineriis
docker run -d --rm -h containerhost --name sql -e sa_password=A123456! -e ACCEPT_EULA=Y --security-opt "credentialspec=file://win.json" artisticcheese/crosscontainersql


#docker exec iis powershell.exe -command "(invoke-sqlcmd 'Select @@Version' -ConnectionString 'data source=sql;Integrated Security=True')"

#docker exec iis powershell.exe -command "(invoke-sqlcmd 'Select system_user' -ConnectionString 'data source=sql;Integrated Security=True')"