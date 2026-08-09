# .NET 8 SDK base image
FROM mcr.microsoft.com/dotnet/sdk:8.0

ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1 \
    DOTNET_NOLOGO=1

RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        curl \
    && rm -rf /var/lib/apt/lists/*

CMD ["dotnet", "--version"]
