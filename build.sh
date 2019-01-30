#!/bin/bash
set -e -o pipefail

cd ${WORKSPACE}

export PATH=${PATH}:${HOME}/.dotnet/tools

dotnet restore
dotnet sonarscanner begin /k:"org.sonarqube:example-dotnet-canary-app" /n:"Example of SonarQube Scanner for MSBuild Usage" /v:"1.0"
dotnet build
dotnet test
dotnet sonarscanner end

