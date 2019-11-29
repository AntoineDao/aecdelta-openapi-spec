#!/bin/bash

npx openapi-generator generate \
  -i openapi.yaml \
  -t .openapi-generator/templates/$1 \
  -g $1 \
  -o $GOPATH/src/github.com/antoinedao/aecdelta-go-server
  # -o /tmp