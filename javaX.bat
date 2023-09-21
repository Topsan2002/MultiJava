@echo off
if %1 == "Java 8" set JAVA_HOME=C:\Program Files\Java\jdk-1.8


if "%~2" == "perm" (
  setx JAVA_HOME "%JAVA_HOME%" /M
)

set Path=%JAVA_HOME%\bin;%Path%

echo %~1 activated.
