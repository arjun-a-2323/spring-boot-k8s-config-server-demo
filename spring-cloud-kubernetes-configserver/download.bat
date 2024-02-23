@echo off
set /p version="Enter version: "
if "%version%"=="" (
    echo Usage: Enter version
    exit /b
) else (
    powershell -Command "New-Item -ItemType Directory -Force -Path '%~dp0target'; Invoke-WebRequest -Uri https://repo1.maven.org/maven2/org/springframework/cloud/spring-cloud-kubernetes-configserver/%version%/spring-cloud-kubernetes-configserver-%version%.jar -OutFile '%~dp0target\spring-cloud-kubernetes-configserver-%version%.jar'"
)