#!/bin/bash
set -e -o pipefail

cd ${WORKSPACE}

dotnet tool install --global dotnet-sonarscanner --version 4.5.0

dotnet tool install --global dotnet-setversion --version 2.0.0

export PATH=${PATH}:${HOME}/.dotnet/tools

dotnet restore
