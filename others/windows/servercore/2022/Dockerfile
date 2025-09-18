FROM mcr.microsoft.com/windows/servercore:ltsc2022
LABEL maintainer="prasanth9566607@gmail.com"
SHELL ["cmd", "/S", "/C"]
RUN powershell -Command \
    Install-WindowsFeature Web-Server
CMD ["cmd.exe"]