REM XXX If user is alrady ADMIN no reason to use runas
echo off
cls
echo.
echo Enter Username or Presse [Enter] for %USERDOMAIN%\%USERNAME%admin
echo.
echo.
echo.
set /p user=Enter Username (domain\username) [%USERDOMAIN%\%USERNAME%admin]: 
IF "%user%"=="" set user=%USERDOMAIN%\%USERNAME%admin

C:\Windows\System32\runas.exe /profile /user:%user% ""\\its.aau.dk\Fileshares\SupportTools\bin\userInfostartwrapper.bat"" 

if "%errorlevel%"=="1" cls & Echo Failed Login, wrong username or password & echo. & pause

