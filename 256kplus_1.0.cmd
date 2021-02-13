@echo off
c:
md 256k+dir
cd 256k+dir
cls
echo 256k+ by evelyn-seventyone
echo Version 1.0
echo https://github.com/evelyn-seventyone/256kplus
echo.

:home
for %%I in (.) do set owndir=%%~nxI
set /p runcmd=%owndir% $ 
if %runcmd%==nd (
goto nd
)
if %runcmd%==ed (
goto ed
)
if %runcmd%==ef (
goto ef
)
if %runcmd%==c (
goto c
)
if %runcmd%==z (
goto z
)
if %runcmd%==cls (
goto cls
)
if %runcmd%==l (
goto l
)
if %runcmd%==lt (
goto lt
)
if %runcmd%==cn (
goto cn
)
if %runcmd%==cf (
goto cf
)
if %runcmd%==mf (
goto mf
)
if %runcmd%==setcol (
goto setcol
)

echo.
echo Unknown command
echo.
goto home

:nd
echo.
set /p ndname=Create directory: 
echo.
md %ndname%
echo Directory created
echo.
goto home

:ed
echo.
set /p edname=Delete directory: 
echo.
set /p edconfirm=Are you sure to delete "%edname%"? (Y(es) N(o)): 
if %edconfirm%==Y (
goto edconfirmyes
)
if %edconfirm%==N (
goto edconfirmno
)

:edconfirmno
echo.
echo Operation canceled
echo.
goto home

:edconfirmyes
rd %edname% /S /Q 
echo.
echo Directory "%edname%" has been deleted
echo.
goto home

:ef
echo.
set /p efname=Delete file(s): 
echo.
set /p efconfirm=Are you sure to delete "%efname%"? (Y(es) N(o)): 
if %efconfirm%==Y (
goto efconfirmyes
)
if %efconfirm%==N (
goto efconfirmno
)

:efconfirmno
echo.
echo Operation canceled
echo.
goto home

:efconfirmyes
del %efname% /Q
echo.
echo File(s) "%efname%" has been deleted
echo.
goto home

:l
echo.
echo ----------[%owndir%]----------
echo [Directories]
dir /a:d /b
echo.
echo [Files]
dir /a:-d /b
echo ----------[%owndir%]----------
echo.
goto home

:lt
echo.
echo ----------[%owndir%]----------
tree /f
echo ----------[%owndir%]----------
echo.
goto home

:cn
echo.
set /p cn1=Rename target: 
set /p cn2=Rename "%cn1%" to: 
rename %cn1% %cn2% 
echo.
echo Renamed %cn1% to %cn2%
echo.
goto home

:cf
echo.
set /p cf1=Copy target: 
set /p cf2=Name "%cf1%" copy: 
copy %cf1% %cf2% /y
echo.
echo Copied %cf1% to %cf2%
echo.
goto home

:mf
echo.
set /p mf1=Move target: 
set /p mf2=Move "%mf1%" to (dir): 
move /y %mf1% %mf2%
echo.
echo Moved %mf1% to %mf2%
echo.
goto home

:c
echo.
set /p c=Enter directory: 
echo.
cd %c% 
goto home

:z
cd..
goto home

:cls
cls
goto home

:setcol
echo.
echo Use colors from 0 to 9, A to F
echo.
echo Use 2 colors (1 - background, 2 - text)
echo Example: F0 (White (F) background, black (0) text)
echo.
set /p setcol=Enter color: 
color %setcol%
echo.
goto home