#! /bin/bash

export CGO_ENABLED=0
export NIXPACKS_BUILD_CMD='go build -ldflags="-s -w" -o dist/go-httpbin ./cmd/go-httpbin'
export NIXPACKS_START_CMD='./dist/go-httpbin -port $PORT'
exec nixpacks build . --name go-httpbin --env NIXPACKS_BUILD_CMD NIXPACKS_START_CMD CGO_ENABLED
