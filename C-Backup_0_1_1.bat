set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"

echo Backup:del

rmdir C:\HP-Archive\Japan-Enterprise_%ymd% /S /Q

md C:\HP-Archive\Japan-Enterprise_%ymd%

xcopy C:\HP-Release\Japan-Enterprise\site\ C:\HP-Archive\Japan-Enterprise_%ymd%\ /E /F

copy C:\HP-Release\Japan-Enterprise\CNAME C:\HP-Archive\Japan-Enterprise_%ymd%\CNAME

echo Backup:OK

pause