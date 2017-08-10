FROM microsoft/dotnet:1.1.2-sdk

ENV DOTNET_USE_POLLING_FILE_WATCHER 1

# Preloads the packages
# COPY ./*.csproj /tmp
# WORKDIR /tmp
# RUN dotnet restore

# RUN mkdir /app
# WORKDIR /app
RUN mkdir /app
COPY ./src/*.csproj /app
WORKDIR /app
RUN dotnet restore

ENTRYPOINT dotnet watch run