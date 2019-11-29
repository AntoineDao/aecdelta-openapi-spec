#!/bin/bash

mkdir -p .openapi-generator/templates/ && cd $_
mkdir tmp
curl -L https://api.github.com/repos/OpenAPITools/openapi-generator/tarball/v4.2.1 | tar xz -C tmp

cd tmp

# Clients
mv `ls`/modules/openapi-generator/src/main/resources/python ../python
mv `ls`/modules/openapi-generator/src/main/resources/go ../go
mv `ls`/modules/openapi-generator/src/main/resources/Javascript ../Javascript
mv `ls`/modules/openapi-generator/src/main/resources/csharp ../csharp
mv `ls`/modules/openapi-generator/src/main/resources/csharp-netcore ../csharp-netcore

# Servers
mv `ls`/modules/openapi-generator/src/main/resources/go-gin-server ../go-gin-server
mv `ls`/modules/openapi-generator/src/main/resources/nodejs-express-server ../nodejs-express-server
mv `ls`/modules/openapi-generator/src/main/resources/python-aiohttp ../python-aiohttp


cd ..

rm -rf tmp