echo Release:Delete Old

cd C:\HP-Release\Japan-Enterprise
C:
rmdir C:\HP-Release\Japan-Enterprise\docs /s/q

echo Release:Copy Start

xcopy C:\HP-compiling\pelican\test\output\  C:\HP-Release\Japan-Enterprise\docs\ /E /F
copy C:\HP-Release\Japan-Enterprise\CNAME C:\HP-Release\Japan-Enterprise\docs\CNAME

echo Release:Copy End
pause