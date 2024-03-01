#!/usr/bin/sh

mkdir -p $HOME/.local/bin

wget -q https://github.com/duckdb/duckdb/releases/download/v0.10.0/duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip -d $HOME/.local/bin
rm duckdb_cli-linux-amd64.zip